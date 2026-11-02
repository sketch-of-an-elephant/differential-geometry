# Lets every solution find tex/dgsolution.cls when latexmk is run from the
# repository root (or via `make`).
use Cwd;
$ENV{'TEXINPUTS'} = getcwd() . '/tex//:' . ($ENV{'TEXINPUTS'} // '');
$pdf_mode = 1;
$out_dir = '.';
