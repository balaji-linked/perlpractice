use v5.14;
use warnings FATAL => 'all';

#importing the module.
use File::Basename qw/basename/;
use Path::Class;

my $name = "C:/Users/ADMIN/IdeaProjects/PerlPractice/Chapter11/RenameFile.pl";
my $dirname = File::Basename::dirname $name; #using the unimported dirname using the fully qualified name.
my $basename = basename $name; #using imported base name
say $dirname; #prints directory part of the $name.
say $basename; #prints SimpleModuleTest.pl

#renaming a file.
rename("C:/Users/ADMIN/IdeaProjects/PerlPractice/Chapter11/RenameFile1.pl", "C:/Users/ADMIN/IdeaProjects/PerlPractice/Chapter11/RenameFile.pl")
    or die "File cannot be renamed";
