" Below taken from Max Cantor's no_plugins config
" https://github.com/changemewtf/no_plugins/tree/master
" Basic setup
set nocompatible

" Enable syntax and plugins (for netrw)
syntax enable
filetype plugin on


" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**


" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'



" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" SNIPPETS:

" Read an empty HTML template and move cursor to title
nnoremap ,apb :-1read $HOME/.vim/snippets/default-ansible-playbook.yml<CR>
nnoremap ,tpe :-1read $HOME/.vim/snippets/terraform-provider-eu.tf<CR>
nnoremap ,tpu :-1read $HOME/.vim/snippets/terraform-provider-us.tf<CR>

set paste
set relativenumber

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

