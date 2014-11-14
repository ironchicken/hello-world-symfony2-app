<?php

namespace Gajdaw\BDDTutorial\BiologyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class TreesController extends Controller
{
    /**
     * @Route("/biology/trees/oak.html")
     * @Template()
     */
    public function oakAction()
    {
        return array();
    }
}
