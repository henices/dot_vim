
if exists("b:current_syntax")
      finish
endif

syntax clear

syn match call "CALL.*"
syn match string  " #@[0-9]\+"
"syn match lineno "\[.*\]"
syn match comment "/\*.*\*/"
syn match identifier "\v[0-9]+\-[0-9]+\-[0-9]+"
"syn match expression ""
syn match constant "^@[0-9]\+"

hi def link call Statement
hi def link string String
hi def link lineno LineNr
hi def link comment Comment
hi def link expression PreProc

let b:current_syntax = "dn"
