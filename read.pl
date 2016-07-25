


open (MYFILE, 'data.txt');
while (<MYFILE>)
 {
print "yo in while";
 chomp;
# print "$_\n";
$info = "Caine:Michael:Actor:14, Leafy Drive";
@fields = split(' ', $_);
#print "@fields\n";

    for (my $i=0; $i <= 20; $i++) {
       print "i -->  $i \n";
       print "$fields[$i] \n";
    }

my $username = $fields[14];
my $real_name = $fields[13];

if($real_name eq 'holovars')
{

	print "$username\n";
	print "$real_name\n";

	if($usernam eq '')
	{
		print "take the process id and update the gdb file";
		write_file($fields[13]);

	}

}



}
close (MYFILE);


sub write_file()
{
$proc=$_[0];

print "Hello, $first_name $last_name\n";


$file = "template.gdb";
open my $in,  '<',  $file      or die "Can't read old file: $!";
open my $out, '>', "agdb.gdb" or die "Can't write new file: $!";



while( <$in> )   # print the lines before the change
    {
    print $out $_;
    last if $. == 1; # line number before change
    }

my $line = <$in>;
$line = "attach ".$proc;
print $out $line;

while( <$in> )   # print the rest of the lines
    {
    print $out $_;
    }

close $out;

}
