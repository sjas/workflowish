if exists("b:current_syntax")
  finish
endif

syn match WFToDo /^\s*\*(.*)/
syn match WFNotDoneLine /^\s*+.*$/
syn match WFDoneLine /^\s*-.*$/
syn match WFToDoDot /^\s*\*/
syn match WFToDoPlus /^\s*+/
syn match WFToDoMinus /^\s*\-/
syn match WFComment /^\s\\*$/
syn match WFPerson /@[a-zA-Z0-9_-]*/
syn match WFTag  /#[a-zA-Z0-9_-]*/

hi def link WFToDo ErrorMsg
hi def link WFNotDoneLine Question
hi def link WFDoneLine Folded
hi def link WFToDoDot Function
hi def link WFToDoPlus Question
hi def link WFToDoMinus Question
hi def link WFComment Delimiter
hi def link WFPerson Function
hi def link WFTag String

let b:current_syntax = "workflowish"
