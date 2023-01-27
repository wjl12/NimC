grammar NimC;

start: module;

module: VAR ID ':' ;

import reserved_words;

ID: [a-zA-Z]+;

WS: [ \t\n\r]+ -> slip;
