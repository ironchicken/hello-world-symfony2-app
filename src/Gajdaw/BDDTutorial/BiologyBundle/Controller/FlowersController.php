<?php

namespace Gajdaw\BDDTutorial\BiologyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class FlowersController extends Controller
{
    /**
     * @Route("/biology/flowers/rose.html")
     * @Template()
     */
    public function roseAction()
    {
        return array();
    }
    
    /**
     * @Route("/biology/flowers/iris.html")
     * @Template()
     */
    public function irisAction()
    {
        return array();
    }
}
