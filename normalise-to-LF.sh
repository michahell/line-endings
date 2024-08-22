# first we add a .gitattributes file with settings in it to always normalise to LF.

touch .gitattributes
chmod +rwx .gitattributes
echo "* text=auto eol=lf" > .gitattributes

# now, we convert "the entire repository" (meaning all files in demo-files) to CRLF.\

unix2dos ./demo-files/**
