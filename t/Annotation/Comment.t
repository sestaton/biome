use strict;
use warnings;

BEGIN {
    use Test::More tests => 6;
    use Test::Moose;
    use Test::Exception;
    use_ok('Biome::Annotation::Comment');
}

my $comment = Biome::Annotation::Comment->new(-tag_name => 'mycomment',
                                            -text => 'sometext');
is $comment->text, 'sometext';
is $comment->value, 'sometext';
is $comment->display_text, 'sometext';
is $comment->tag_name, 'mycomment';
is $comment->as_text, 'Comment: sometext';
