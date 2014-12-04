<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class RiversController extends Controller
{
    /**
     * @Route("/geography/rivers/nile")
     * @Template()
     */
    public function nileAction()
    {
        return array(
                // ...
            );    }

}
