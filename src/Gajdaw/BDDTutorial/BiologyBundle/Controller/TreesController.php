<?php

namespace Gajdaw\BDDTutorial\BiologyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class TreesController extends Controller
{
    /**
     * @Route("/biology/trees/oak.html", name="biology-trees-oak")
     * @Template()
     */
    public function oakAction()
    {
        return array();
    }
    
    /**
    * @Route("/biology/trees/birch.html", name="biology-trees-birch")
    * @Template()
    */
    public function birchAction()
    {
        return array();
    }
    
    /**
    * @Route("/biology/trees/hornbeam.html", name="biology-trees-hornbeam")
    * @Template()
    */
    public function hornbeamAction()
    {
        return array();
    }
    
    /**
    * @Route("/biology/trees/willow.html", name="biology-trees-willow")
    * @Template()
    */
    public function willowAction()
    {
        return array();
    }
    
    /**
    * @Route("/biology/trees/pine.html")
    * @Template()
    */
    public function pineAction()
    {
        return array();
    }

    /**
    * @Route("/biology/trees/larch.html")
    * @Template()
    */
    public function larchAction()
    {
        return array();
    }
}
