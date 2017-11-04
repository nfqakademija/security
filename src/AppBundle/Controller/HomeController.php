<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Contact;
use AppBundle\Helper\FBHelper;
use Symfony\Bridge\Monolog\Handler\SwiftMailerHandler;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Validator\Constraints\Regex;


/**
 * Class HomeController.
 *
 * @Route("/")
 */
class HomeController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {

        $session = $this->get('session');
        $fbhelper = new FBHelper();
        $provider = $fbhelper->getFacebookApiClient();
        // If we don't have an authorization code then get one
        $authUrl = $provider->getAuthorizationUrl([
            'scope' => ['email'],
        ]);
        $session->set('oauth2state', $provider->getState());

        $fburl = '<a href="' . $authUrl . '"><img class="fb-login" src="/images/download.png"></a>';


        $form = $this->createFormBuilder()
            ->add('contact_name', TextType::class, array(
                'required' => true
            ))
            ->add('contact_phone', TextType::class, array(
                'required' => true,
                'constraints' => new Regex([
                    'pattern' => "/^\+?[\d\s]+$/"
                ])
            ))
            ->add('contact_email', EmailType::class, array(
                'required' => false
            ))
            ->add('message', TextareaType::class, array(
                'required' => true
            ))
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $formData = $request->request->get('form');
            $contact = new Contact();

            $contact->setContactName($formData['contact_name']);
            $contact->setContactPhone($formData['contact_phone']);
            $contact->setContactEmail($formData['contact_email']);
            $contact->setMessage($formData['message']);

            $em = $this->getDoctrine()->getManager();
            // tells Doctrine you want to (eventually) save the Contact (no queries yet)
            $em->persist($contact);
            // actually executes the queries (i.e. the INSERT query)
            $em->flush();

        }

        return $this->render('AppBundle:Home:index.html.twig', [
            'form' => $form->createView(),
            'fburl' => $fburl
        ]);
    }

//    /**
//     * @Route("/test", name="test")
//     */
//    public function testAction(Request $request)
//    {
////        var_dump($request->request->get('form', 'xxx'));
//
//
//
//
//
//        return new Response('<h1>Ačiū, Jūsų užklausa išsiųsta</h1>');
//    }
}


