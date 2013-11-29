
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Moose Types related to Credit Cards",
  "AUTHOR" => "Caleb Cushing <xenoterracide\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "MooseX-Types-CreditCard",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "MooseX::Types::CreditCard",
  "PREREQ_PM" => {
    "Business::CreditCard" => 0,
    "Module::Runtime" => 0,
    "MooseX::Types" => 0,
    "MooseX::Types::Common::String" => "0.001005",
    "MooseX::Types::DateTime" => 0,
    "MooseX::Types::Moose" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Moose" => 0,
    "Test::Exception" => 0,
    "Test::Fatal" => 0,
    "Test::More" => "0.88"
  },
  "VERSION" => "0.002002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Business::CreditCard" => 0,
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Module::Runtime" => 0,
  "Moose" => 0,
  "MooseX::Types" => 0,
  "MooseX::Types::Common::String" => "0.001005",
  "MooseX::Types::DateTime" => 0,
  "MooseX::Types::Moose" => 0,
  "Test::Exception" => 0,
  "Test::Fatal" => 0,
  "Test::More" => "0.88",
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



