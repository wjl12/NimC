import std/strutils

var inFile: File;
var outFile: File;

if not (inFile.open("reserved_words.txt") and 
        outFile.open("reserved_words.g4",fmWrite)):
    echo "Unable to open reserved_word.txt and/or reserved_words.g4\n"
else:
    var s = inFile.readAll
    for word in s.splitWhitespace:
        outFile.writeLine(word.toUpperAscii,": '",word.toLowerAscii,"';")
