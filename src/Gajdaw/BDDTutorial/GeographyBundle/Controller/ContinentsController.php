<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class ContinentsController extends Controller
{

/**
 * @Route("geography/continents/asia.html", name="geography-continents-asia")
 * @Template()
 */
public function asiaAction()
{
    return array();
}
    
    
    /**
     * @Route("/geography/continents/europe.html", name="geography-continents-europe")
     * @Template()
     */
    public function europeAction()
    {
        return array();
    }


}