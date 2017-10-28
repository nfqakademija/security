<?php
/**
 * Created by PhpStorm.
 * User: midsummer
 * Date: 17.10.27
 * Time: 15.39
 */

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


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
        return new Response('I am the master');
    }


}