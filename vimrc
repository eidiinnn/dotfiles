" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug '~/my-prototype-plugin'
Plug 'preservim/nerdtree'
Plug 'ObserverOfTime/coloresque.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mhinz/vim-startify'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set number

packadd! dracula
syntax enable
colorscheme dracula

autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufWritePre *.js Neoformat

hi Normal ctermbg=none
