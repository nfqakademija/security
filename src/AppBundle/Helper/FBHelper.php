<?php
/**
 * Created by PhpStorm.
 * User: midsummer
 * Date: 17.10.29
 * Time: 20.45
 */

namespace AppBundle\Helper;



class FBHelper
{
    public function getFacebookApiClient()
    {

        $provider = new \League\OAuth2\Client\Provider\Facebook([
            'clientId' => '1608718205853266',
            'clientSecret' => '2e1a8e23f581645222fd9dcf375b7c82',
            'redirectUri' => 'http://localhost:8000/user',
            'graphApiVersion' => 'v2.10',
        ]);
        return $provider;
    }
}


