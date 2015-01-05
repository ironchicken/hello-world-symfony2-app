<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Yaml\Yaml;
use Gajdaw\BDDTutorial\GeographyBundle\Entity\Peninsula;

class LoadPeninsulas implements FixtureInterface
{
    /**
     * {@inheritDoc}
     */
    public function load(ObjectManager $manager)
    {

        $filename = __DIR__ . '/../../data/peninsulas.yml';
        $yml = Yaml::parse(file_get_contents($filename));
        foreach ($yml as $item) {
            $peninsula = new Peninsula();
            $peninsula->setName($item['name']);
            $peninsula->setArea($item['area']);
            $manager->persist($peninsula);
        }

        $manager->flush();
    }
}