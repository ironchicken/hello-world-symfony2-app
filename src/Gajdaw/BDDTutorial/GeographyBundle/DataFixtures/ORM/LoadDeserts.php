<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Yaml\Yaml;
use Gajdaw\BDDTutorial\GeographyBundle\Entity\Desert;

class LoadDeserts implements FixtureInterface
{
    /**
     * {@inheritDoc}
     */
    public function load(ObjectManager $manager)
    {

        $filename = __DIR__ . '/../../data/deserts.yml';
        $yml = Yaml::parse(file_get_contents($filename));
        foreach ($yml as $item) {
            $desert = new Desert();
            $desert->setName($item['name']);
            $desert->setArea($item['area']);
            $manager->persist($desert);
        }

        $manager->flush();
    }
}