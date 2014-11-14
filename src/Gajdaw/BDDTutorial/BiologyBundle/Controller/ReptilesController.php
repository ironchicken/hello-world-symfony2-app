<?php

namespace Gajdaw\BDDTutorial\BiologyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class ReptilesController extends Controller
{
    /**
     * @Route("/biology/reptiles/aligator.html")
     * @Template()
     */
    public function aligatorAction()
    {
        return array();
    }
}
