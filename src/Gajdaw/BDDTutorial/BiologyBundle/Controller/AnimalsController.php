<?php

namespace Gajdaw\BDDTutorial\BiologyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class AnimalsController extends Controller
{


/**
 * @Route("/biology/animals/lion.html")
 * @Template()
 */
public function lionAction()
{
    return array();
}

}