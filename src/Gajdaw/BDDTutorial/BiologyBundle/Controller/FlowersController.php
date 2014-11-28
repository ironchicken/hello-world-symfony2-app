<?php

namespace Gajdaw\BDDTutorial\BiologyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class FlowersController extends Controller
{
    /**
     * @Route("/biology/flowers/rose.html", name="biology-flowers-rose")
     * @Template()
     */
    public function roseAction()
    {
        return array();
    }
    
    /**
     * @Route("/biology/flowers/iris.html", name="biology-flowers-iris")
     * @Template()
     */
    public function irisAction()
    {
        return array();
    }
    
    /**
     * @Route("/biology/flowers/violet.html", name="biology-flowers-violet")
     * @Template()
     */
    public function violetAction()
    {
        return array();
    }
    
    /**
     * @Route("/biology/flowers/tulip.html", name="biology-flowers-tulip")
     * @Template()
     */
    public function tulipAction()
    {
        return array();
    }
}
