stage { 'update':
    before => Stage['tools']
}

stage { 'tools':
    before => Stage['final']
}

stage { 'final':
    before => Stage['main']
}

class {
    'ubuntu':              stage => update;
    'php-required-tools':  stage => tools;
    'php5-latest':         stage => final;
    'environment':         stage => main;
    'php-cs-fixer':        stage => main;
#    'phpdoc':              stage => main;
    'composer':            stage => main;
#    'box':                 stage => main;
    'phpunit':             stage => main;
#    'pear':                stage => main;
#    'selenium':            stage => main;
    'mysql':               stage => main;
}

