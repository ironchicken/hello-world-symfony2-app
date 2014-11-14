<?php

namespace Gajdaw\BDDTutorial\CarsBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class FiatController extends Controller
{
    /**
     * @Route("/cars/fiat/siena.html")
     * @Template()
     */
    public function sienaAction()
    {
        return array();
    }
}
