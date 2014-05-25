package Data::TestImage;
# ABSTRACT: interface for retrieving test images
$Data::TestImage::VERSION = '0.002';
use strict;
use warnings;
use File::ShareDir 'dist_dir';
use Path::Class;
use Module::Load;

sub get_dist_dir {
	dir(dist_dir('Data-TestImage'));
}

sub get_image {
	my ($self, $image) = @_;
	for my $db (qw(Data::TestImage::DB::Other Data::TestImage::DB::USC::SIPI)) {
		load $db;
		my $image_file = $db->get_image($image);
		return $image_file if $image_file;
	}
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Data::TestImage - interface for retrieving test images

=head1 VERSION

version 0.002

=head1 METHODS

=head2 get_dist_dir

    get_dist_dir()

Returns a L<Path::Class::Dir> object to the shared directory for the
C<Data-TestImage> distribution.

=head2 get_image

    get_image( $image_name )

Calls L<Data::TestImage::DB/get_image> on L<Data::TestImage::DB::Other> and
L<Data::TestImage::DB::USC::SIPI>. Returns an instance of L<Path::Class::File>.

=head1 AUTHOR

Zakariyya Mughal <zmughal@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Zakariyya Mughal.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
