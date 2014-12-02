<?php

namespace Gajdaw\BDDTutorial\CarsBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class CitroenController extends Controller
{
    /**
     * @Route("/cars/citroen/c4.html", name="cars-citroen-c4")
     * @Template()
     */
    public function c4Action()
    {
        return array();
    }
    
    /**
     * @Route("/cars/citroen/xara.html")
     * @Template()
     */
    public function xaraAction()
    {
        return array();
    }
}
