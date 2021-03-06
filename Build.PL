use 5.008001;

use strict;
use warnings;

use Module::Build;

Module::Build->new(
    module_name => 'Locale::CLDR',
    dist_author => 'Dave Rolsky <autarch@urth.org>',
    license     => 'perl',
    requires    => {
        'List::MoreUtils'  => 0,
        'Params::Validate' => '0.91',
        perl               => 5.008001,
    },
    build_requires     => { 'Module::Build' => 0 },
    sign               => 1,
    create_makefile_pl => 'traditional',
    meta_merge         => {
        resources => {
            homepage => 'http://datetime.perl.org/',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Locale-CLDR',
            repository => 'http://hg.urth.org/hg/Locale-CLDR',
        },
    },
)->create_build_script;
