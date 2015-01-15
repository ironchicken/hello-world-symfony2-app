<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Gajdaw\BDDTutorial\GeographyBundle\Entity\Channel;
use Symfony\Component\Yaml\Yaml;

class LoadChannels implements FixtureInterface
{
    /**
     * {@inheritDoc}
     */
    public function load(ObjectManager $manager)
    {

        $filename = __DIR__ . '/../../data/channels.yml';
        $yml = Yaml::parse(file_get_contents($filename));
        foreach ($yml as $item) {
            $channel = new Channel();
            $channel->setChannel($item['channel']);
            $channel->setLength($item['length']);
            $manager->persist($channel);
        }

        $manager->flush();
    }
}
