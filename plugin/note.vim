if exists('g:loaded_notes_plugin') || &cp
  finish
endif

let g:loaded_notes_plugin = 1

if !exists('g:notes_directory')
  let g:notes_directory = $HOME.'/Notes/'
endif

if !exists('g:notes_extension')
  let g:notes_extension = 'txt'
endif

command! -nargs=? Notes call note#List(<q-args>)
command! -nargs=? Note call note#New(<q-args>)
