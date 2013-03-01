if exists("b:current_syntax")
  finish
endif

syn match WFToDoDot     /^\s*\*/
syn match WFToDo        /^\s*\*(.*)/
syn match WFToDoMinus   /^\s*-/
syn match WFComment /^\s*\\.*$/
syn match WFPerson      /@[a-zA-Z0-9_-]*/
syn match WFTag         /#[a-zA-Z0-9_-]*/
syn match WFDoneLine    /^\s*-.*$/
syn match WFNotDoneLine /^\s*+.*$/
syn match WFToDoPlus    /^\s*+/


hi def link WFToDo  Question
hi def link WFToDoDot Function
hi def link WFToDoPlus Question
hi def link WFDoneLIne Folded
hi def link WFNotDoneLine Question
hi def link WFComment Delimiter
hi def link WFPerson Function
hi def link WFTag String
hi def link WFToDoMinus Question

let b:current_syntax = "workflowish"
