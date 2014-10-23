<?php

namespace Gajdaw\HelloWorldBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/home.html")
     * @Template()
     */
    public function indexAction()
    {
        $response = $this->render('GajdawHelloWorldBundle:Default:index.html.twig');
        $response->headers->set('Content-Type', 'text/html;charset=utf-8');
        return $response;

        //return array();
    }
}
