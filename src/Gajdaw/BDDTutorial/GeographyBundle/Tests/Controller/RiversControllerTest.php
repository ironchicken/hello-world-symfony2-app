<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class RiversControllerTest extends WebTestCase
{
    public function testNile()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/geography/rivers/nile');
    }

}
