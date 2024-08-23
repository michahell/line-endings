echo "\nFirst, we add a .gitattributes file with below settings in it to always normalise to LF:\n"

touch .gitattributes
chmod +rwx .gitattributes
echo "* text=auto eol=lf" > .gitattributes
cat .gitattributes

echo "\nWe copy over demo files to a simulated repository \"fake-root\":\n"

cp demo-files/** fake-root/

echo "\nNow, we convert \"the entire repository root\" (meaning all files in fake-root) to CRLF:\n"

unix2dos ./fake-root/**
