if exists("b:current_syntax")
  finish
endif

syn match WFToDoDot /^\s*\*/
syn match WFToDo /^\s*\*(.*)/
syn match WFPerson /@[a-zA-Z0-9_-]*/
syn match WFTag  /#[a-zA-Z0-9_-]*/
syn match WFDoneLine /^\s*-.*$/
syn match WFNotDoneLine /^\s*\+.*$/
syn match WFComment /^\s*>*$/

hi def link WFToDo IncSearch
hi def link WFToDoDot Function
hi def link WFNotDoneLine Question
hi def link WFDoneLine Folded
hi def link WFComment Delimiter
hi def link WFPerson Function
hi def link WFTag String

let b:current_syntax = "workflowish"
