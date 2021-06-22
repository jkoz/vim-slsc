if exists("g:loaded_slsc")
  finish
endif

let g:loaded_slsc = 1

command! SLSCDefinitions call lsc#go_to_definition()
command! SLSCImplementations call slsc#find_implementations()
command! SLSCReferences call lsc#find_references()
command! -nargs=? SLSCWorkspaceSymbols call slsc#find_symbols(<args>)
