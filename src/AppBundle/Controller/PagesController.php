<?php
/**
 * Created by PhpStorm.
 * User: midsummer
 * Date: 17.10.27
 * Time: 15.39
 */

namespace AppBundle\Controller;

use AppBundle\Helper\FBHelper;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Session\Session;


class PagesController extends Controller
{
    /**
     * @Route("/paslaugos", name="services")
     */
    public function showServices()
    {
        return $this->render('AppBundle:Pages:paslaugos.html.twig', []);
    }

    /**
     * @Route("/atlikti-darbai", name="works gallery")
     */
    public function showGallery()
    {
        return $this->render('AppBundle:Pages:atlikti-darbai.html.twig', []);
    }

    /**
     * @Route("/management", name="admin panel")
     */
    public function showManagement()
    {
        return new Response('test');
    }

    /**
     * @Route("/user", name="FB logged in user")
     */
    public function showUserPage()
    {
        $session = new Session();
        $fbhelper = new FBHelper();
        $provider = $fbhelper->getFacebookApiClient();
// Check given state against previously stored one to mitigate CSRF attack
        if (empty($_GET['state']) || ($_GET['state'] !== $session->get('oauth2state'))) {

            $session->remove('oauth2state');
            echo 'Invalid state.';
            exit;

        }

// Try to get an access token (using the authorization code grant)
        $token = $provider->getAccessToken('authorization_code', [
            'code' => $_GET['code']
        ]);

// Optional: Now you have a token you can look up a users profile data
        try {

            // We got an access token, let's now get the user's details
            /* @var \League\OAuth2\Client\Provider\FacebookUser $user */
            $user = $provider->getResourceOwner($token);

            // Use these details to create a new profile
//            printf('Hello, %s!', $user->getName());
            $userName = $user->getName();
            $userImage = '<img src="' . $user->getPictureUrl() . '">';

        } catch (\Exception $e) {

            // Failed to get user details
            exit('Oh dear...');
        }
        return $this->render('AppBundle:Pages:user.html.twig', [
            'userImage' => $userImage,
            'userName' => $userName
        ]);
    }
}
