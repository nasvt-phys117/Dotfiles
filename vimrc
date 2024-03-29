"let mapleader =" "
" Plugins


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
call plug#end()


" Basics
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	map <leader>f :Goyo \| set linebreak<CR>
	map <leader>c :w<CR> :!latexmk -pdf %<CR><CR>
	map <leader>x :w<CR> :!latexmk -xelatex %<CR><CR>
	map <leader>p :!zathura %:r.pdf &<CR><CR>
	map <leader>l :LLPStartPreview<CR>
" Autocompletion
 	set wildmode=longest,list,full
" No autocomments
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
