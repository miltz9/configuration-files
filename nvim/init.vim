call plug#begin('~/.config/nvim/plugged')
" Themes
Plug 'morhetz/gruvbox'
" NERD tree
Plug 'scrooloose/nerdtree'
" Syntastic
Plug 'scrooloose/syntastic'
" Gitgutter
Plug 'airblade/vim-gitgutter'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Tagbar
Plug 'majutsushi/tagbar'
" Youcompleteme
Plug 'valloric/youcompleteme'
" Supertab
Plug 'ervandew/supertab'
" Polyglot
Plug 'sheerun/vim-polyglot'
" Delimitmate
Plug 'raimondi/delimitmate'
" Ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
call plug#end()

" ----Autoload
autocmd vimenter * NERDTree " NERDTree
autocmd vimenter * TagbarToggle " Tagbar
" ----end Autoload

" -----Color Scheme
colorscheme gruvbox " morhetz/gruvbox
set background=dark
" -----end Color Scheme

" -----Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ------end Syntastic

" ------Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
" ------end Airline

" -----Jsdoc
let g:javascript_plugin_jsdoc = 1
" -----end Jsdoc

" -----Nvim
let mapleader="\<space>"
set hidden
set number
set relativenumber
if has('mouse')
    set mouse=a
endif
set inccommand=split
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader><c-r> :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugInstall<cr>
nnoremap <leader><c-b> :NERDTreeToggle<cr>
nnoremap <leader><c-t> :TagbarToggle<cr>
