
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'SimpleDB::Client',
                       'DISTNAME' => 'SimpleDB-Client',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'JT Smith <RIZEN@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'The network interface to the SimpleDB service.',
                       'EXE_FILES' => [],
                       'VERSION' => '1.0401',
                       'PREREQ_PM' => {
                                        'URI' => '0',
                                        'Time::HiRes' => '1.9719',
                                        'Exception::Class' => '0',
                                        'Test::More' => '0',
                                        'Digest::SHA' => '0',
                                        'Crypt::SSLeay' => '0.57',
                                        'Test::Deep' => '0',
                                        'XML::Bare' => '0.45',
                                        'LWP' => '5.834',
                                        'Moose' => '0.93'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



