<?php

namespace Gajdaw\ColoursBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    
    /**
     * @Route("/gajdaw/red.html")
     * @Template()
     */
    public function indexAction()
    {
        return array();
    }    

}
