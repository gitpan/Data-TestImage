package Data::TestImage::DB;
$Data::TestImage::DB::VERSION = '0.001';
use strict;
use warnings;
use List::AllUtils qw(first);

sub get_db_dir {
	...
}

sub get_installed_images {
	my ($self) = @_;
	my @list;
	$self->get_db_dir->recurse( callback => sub {
		push @list, $_[0] if -f $_[0];
	});
	\@list;
}

sub get_image {
	my ($self, $image) = @_;
	first { "$_" =~ /\Q$image\E/ } @{ $self->get_installed_images };
}

__END__

=pod

=encoding UTF-8

=head1 NAME

Data::TestImage::DB

=head1 VERSION

version 0.001

=head1 AUTHOR

Zakariyya Mughal <zmughal@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Zakariyya Mughal.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
