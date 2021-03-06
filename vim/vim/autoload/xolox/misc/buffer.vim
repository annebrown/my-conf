" Handling of special buffers
"
" Author: Peter Odding <peter@peterodding.com>
" Last Change: May 19, 2013
" URL: http://peterodding.com/code/vim/misc/
"
" The functions defined here make it easier to deal with special Vim buffers
" that contain text generated by a Vim plug-in. For example my [vim-notes
" plug-in] [vim-notes] generates several such buffers:
"
" - [:RecentNotes] [RecentNotes] lists recently modified notes
" - [:ShowTaggedNotes] [ShowTaggedNotes] lists notes grouped by tags
" - etc.
"
" Because the text in these buffers is generated, Vim shouldn't bother with
" swap files and it should never prompt the user whether to save changes to
" the generated text.
"
" [vim-notes]: http://peterodding.com/code/vim/notes/
" [RecentNotes]: http://peterodding.com/code/vim/notes/#recentnotes_command
" [ShowTaggedNotes]: http://peterodding.com/code/vim/notes/#showtaggednotes_command

function! xolox#misc#buffer#is_empty() " {{{1
  " Checks if the current buffer is an empty, unchanged buffer which can be
  " reused. Returns 1 if an empty buffer is found, 0 otherwise.
  return !&modified && expand('%') == '' && line('$') <= 1 && getline(1) == ''
endfunction

function! xolox#misc#buffer#prepare(...) " {{{1
  " Open a special buffer, i.e. a buffer that will hold generated contents,
  " not directly edited by the user. The buffer can be customized by passing a
  " dictionary with the following key/value pairs as the first argument:
  "
  " - **name** (required): The base name of the buffer (i.e. the base name of
  "   the file loaded in the buffer, even though it isn't really a file and
  "   nothing is really 'loaded' :-)
  " - **path** (required): The pathname of the buffer. May be relevant if
  "   [:lcd] [lcd] or ['autochdir'] [acd] is being used.
  "
  " [lcd]: http://vimdoc.sourceforge.net/htmldoc/editing.html#:lcd
  " [acd]: http://vimdoc.sourceforge.net/htmldoc/options.html#'autochdir'
  if a:0 == 1 && type(a:1) == type('')
    " Backwards compatibility with old interface.
    let options = {'name': a:1, 'path': a:1}
  elseif type(a:1) == type({})
    let options = a:1
  else
    throw "Invalid arguments"
  endif
  let winnr = 1
  let found = 0
  for bufnr in tabpagebuflist()
    if xolox#misc#path#equals(options['path'], bufname(bufnr))
      execute winnr . 'wincmd w'
      let found = 1
      break
    else
      let winnr += 1
    endif
  endfor
  if !(found || xolox#misc#buffer#is_empty())
    vsplit
  endif
  silent execute 'edit' fnameescape(options['path'])
  lcd " clear working directory
  setlocal buftype=nofile bufhidden=hide noswapfile
  let &l:statusline = '[' . options['name'] . ']'
  call xolox#misc#buffer#unlock()
  silent %delete
endfunction

function! xolox#misc#buffer#lock() " {{{1
  " Lock a special buffer so that its contents can no longer be edited.
  setlocal readonly nomodifiable nomodified
endfunction

function! xolox#misc#buffer#unlock() " {{{1
  " Unlock a special buffer so that its content can be updated.
  setlocal noreadonly modifiable
endfunction
