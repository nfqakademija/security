<?php

namespace AppBundle\Controller;

use AppBundle\Helper\FBHelper;
use Faker\Provider\Text;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
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
        $session = new Session();
        $fbhelper = new FBHelper();
        $provider = $fbhelper->getFacebookApiClient();
        // If we don't have an authorization code then get one
        $authUrl = $provider->getAuthorizationUrl([
            'scope' => ['email'],
        ]);
        $session->set('oauth2state', $provider->getState());

        $fburl = '<a href="' . $authUrl . '"><img src="/images/download.png"></a>';


        $form = $this->createFormBuilder()
            ->add('name', TextType::class, array(
                'required' => true
            ))
            ->add('phone', TextType::class, array(
                'required' => true,
                'constraints' => new Regex([
                    'pattern' => "/^\+?[\d\s]+$/"
                ])
            ))
            ->add('email', EmailType::class, array(
                'required' => false
            ))
            ->add('message', TextareaType::class, array(
                'required' => true
            ))
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $data = $form->getData();

            $message = (new \Swift_Message('Hello Email'))
                ->setFrom($data['email'])
                ->setTo('some@email.com')
                ->setBody(
                    $form->getData()['message'],
                    'text/html'
                );
            $this->get('mailer')->send($message);
        }

        return $this->render('AppBundle:Home:index.html.twig', [
            'form' => $form->createView(),
            'fburl' => $fburl
        ]);
    }
}


