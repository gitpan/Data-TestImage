use Test::More;

BEGIN { use_ok 'Data::TestImage' };

use lib 't/lib';
require StubTestImage;

my $image_file = Data::TestImage->get_image('4.2.03');
is( $image_file->basename, "4.2.03.tiff", 'found the mandrill image' );

my $camera_file = Data::TestImage->get_image('cameraman');
is( $camera_file->basename, "cameraman.tiff", 'found the cameraman image' );

done_testing;
