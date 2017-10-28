<?php
/**
 * Created by PhpStorm.
 * User: midsummer
 * Date: 17.10.29
 * Time: 00.42
 */

namespace AppBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
class FBLogin extends Controller
{
    /**
     * @Route("/login", name="fblogin")
     */
    public function facebookLogin(Request $request)
    {
        $session = new Session();
        $provider = new \League\OAuth2\Client\Provider\Facebook([
            'clientId' => '1608718205853266',
            'clientSecret' => '2e1a8e23f581645222fd9dcf375b7c82',
            'redirectUri' => 'http://localhost:8000/login',
            'graphApiVersion' => 'v2.10',
        ]);

        if (!isset($_GET['code'])) {

            // If we don't have an authorization code then get one
            $authUrl = $provider->getAuthorizationUrl([
                'scope' => ['email'],
            ]);
            $session->set('oauth2state', $provider->getState());

            echo '<a href="' . $authUrl . '">Log in with Facebook!</a>';
            exit;

// Check given state against previously stored one to mitigate CSRF attack
        } elseif (empty($_GET['state']) || ($_GET['state'] !== $session->get('oauth2state'))) {

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
            $user = $provider->getResourceOwner($token);

            // Use these details to create a new profile
            printf('Hello %s!', $user->getFirstName());


        } catch (\Exception $e) {

            // Failed to get user details
            exit('Oh dear...');
        }
        return $this->render('AppBundle:Login:user.html.twig');

    }
}