<?php

namespace Gajdaw\BDDTutorial\PoemsBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class PoeController extends Controller
{
    
    /**
     * @Route("/poems/poe/raven.html")
     * @Template()
     */
    public function ravenAction()
    {
        return array();
    }
    
    
}
