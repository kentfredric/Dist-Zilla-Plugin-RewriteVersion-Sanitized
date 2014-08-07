use 5.008;    # utf8
use strict;
use warnings;
use utf8;

package Dist::Zilla::Plugin::RewriteVersion::Sanitized;

our $VERSION = '0.001002';

# ABSTRACT: RewriteVersion but force normalizing ENV{V} and other sources.

# AUTHORITY

use Moose qw( extends with );

=head1 SYNOPSIS

As per L<< C<[Git::NextVersion::Sanitized]>|Dist::Zilla::Plugin::Git::NextVersion::Sanitized >>

  V=2.6.0 dzil release # -> V=2.006000 interally

This is really just a glue layer that wraps L<< C<Dist::Zilla::Role::Version::Sanitize>|Dist::Zilla::Role::Version::Sanitize >>
around L<< C<[RewriteVersion]>|Dist::Zilla::Plugin::RewriteVersion >>.

So see L<< the documentation for Dist::Zilla::Role::Version::Sanitize|Dist::Zilla::Role::Version::Sanitize >> for details and
attributes.

=cut

extends 'Dist::Zilla::Plugin::RewriteVersion';
with 'Dist::Zilla::Role::Version::Sanitize';

__PACKAGE__->meta->make_immutable;
no Moose;

1;
