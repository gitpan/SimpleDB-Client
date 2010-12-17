
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'The network interface to the SimpleDB service.',
  'AUTHOR' => 'JT Smith <RIZEN@cpan.org>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'SimpleDB-Client',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'SimpleDB::Client',
  'PREREQ_PM' => {
    'Crypt::SSLeay' => '0.57',
    'Digest::SHA' => '0',
    'Exception::Class' => '0',
    'LWP' => '5.834',
    'Moose' => '0.93',
    'Test::Deep' => '0',
    'Test::More' => '0',
    'Time::HiRes' => '1.9719',
    'URI' => '0',
    'XML::Fast' => '0.10'
  },
  'VERSION' => '1.0500',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



