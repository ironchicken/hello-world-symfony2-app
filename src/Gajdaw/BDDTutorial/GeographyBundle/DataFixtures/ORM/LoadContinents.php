<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LoadContinents
 *
 * @author student
 */
namespace Gajdaw\BDDTutorial\GeographyBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Yaml\Yaml;
use Gajdaw\BDDTutorial\GeographyBundle\Entity\Continent;


class LoadContinents implements FixtureInterface{
    
    public function load(ObjectManager $manager) {
        $filename = __DIR__ . '/../../data/continents.yml';
        $yml = Yaml::parse(file_get_contents($filename));
        foreach ($yml as $item) {
            $continent = new Continent();
            $continent->setName($item['name']);
            $continent->setArea($item['area']);
            $manager->persist($continent);
        }

        $manager->flush();
    }

//put your code here
}
