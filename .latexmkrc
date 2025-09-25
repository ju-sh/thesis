add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
add_cus_dep("nlo", "nls", 0, "nlo2nls");
$clean_ext .= " acr acn alg glo gls glg nlo nls nlg";

sub makeglossaries {
     system("makeglossaries $_[0]");
    #my ($base_name, $path) = fileparse( $_[0] );
    #my @args = ( "-d", $path, $base_name );
    #if ($silent) { unshift @args, "-q"; }
    #return system "makeglossaries", @args;
}

sub nlo2nls {
    system("makeindex $_[0].nlo -s nomencl.ist -o $_[0].nls -t $_[0].nlg");
}
