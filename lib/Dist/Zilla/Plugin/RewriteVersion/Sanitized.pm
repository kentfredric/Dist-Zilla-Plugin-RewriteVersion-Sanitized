use 5.008;    # utf8
use strict;
use warnings;
use utf8;

package Dist::Zilla::Plugin::RewriteVersion::Sanitized;

our $VERSION = '0.001001';

# ABSTRACT: RewriteVersion but force normalizing ENV{V} and other sources.

our $AUTHORITY = 'cpan:KENTNL'; # AUTHORITY

use Moose qw( extends with );















extends 'Dist::Zilla::Plugin::RewriteVersion';
with 'Dist::Zilla::Role::Version::Sanitize';

__PACKAGE__->meta->make_immutable;
no Moose;

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::RewriteVersion::Sanitized - RewriteVersion but force normalizing ENV{V} and other sources.

=head1 VERSION

version 0.001001

=head1 SYNOPSIS

As per C<[Git::NextVersion::Sanitized]|Dist::Zilla::Plugin::Git::NextVersion::Sanitized>

  V=2.6.0 dzil release # -> V=2.006000 interally

This is really just a glue layer that wraps L<< C<Dist::Zilla::Role::Version::Sanitize>|Dist::Zilla::Role::Version::Sanitize >>
around L<< C<[RewriteVersion]>|Dist::Zilla::Plugin::RewriteVersion >>.

So see L<< the documentation for Dist::Zilla::Role::Version::Sanitize|Dist::Zilla::Role::Version::Sanitize >> for details and
attributes.

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
