package Data::TestImage::Other;
$Data::TestImage::Other::VERSION = '0.001';
use parent qw(Data::TestImage::DB);

use strict;
use warnings;

sub get_db_dir {
	Data::TestImage->get_dist_dir()->subdir(qw{ other });
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Data::TestImage::Other

=head1 VERSION

version 0.001

=head1 AUTHOR

Zakariyya Mughal <zmughal@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Zakariyya Mughal.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
