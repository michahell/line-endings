# line-endings
line-endings demo repository

## background reading

* https://adaptivepatchwork.com/2012/03/01/mind-the-end-of-your-line/
* https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings?platform=mac
* https://leemendelowitz.github.io/blog/remove-carriage-return-control-character.html
* https://git-scm.com/docs/git-ls-files#Documentation/git-ls-files.txt---eol

## TL;DR;

### History
* Computer line-ending legacy sucks.
* Initial GIT line-ending conversion handling sucked.

### Solution

#### part one
To make sure you don't have line-ending issues AND to not depend on individual developer machine settings,
have a `.gitattributes` file in every repo much like the one in this repo.

This file only ensures GIT knows how to handle line-endings when performing GIT actions.
It does not convert your entire repository to one line-ending or the other.

#### part two (optional)

Normalise the entire repository to one line-ending or the other.
You can use the util package `dos2unix` for this.

## requirements

* understanding what you are doing
* `git`
* `dos2unix`
* `bash` / `zsh` or... `gitbash`

# examples

* normalise this repo to use CRLF
  * _but checkout as LF on unix / OSX_

`chmod +x normalise-to-CRLF.sh && ./normalise-to-CRLF.sh`

* normalise this repo to use LF
  * _but checkout as CRLF on Windows_

`chmod +x normalise-to-CRLF.sh && ./normalise-to-CRLF.sh`
