"Plugins install
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
Plug 'easymotion/vim-easymotion'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'    
Plug 'leafgarland/typescript-vim' 
Plug 'maxmellon/vim-jsx-pretty'   
Plug 'jparise/vim-graphql'    
Plug 'catppuccin/vim', { 'as': 'catppuccin_mocha' }
call plug#end()

"Misc
set number
packadd! dracula
syntax enable
colorscheme catppuccin_mocha
let mapleader=" "
autocmd BufWritePre *.js Neoformat
hi Normal ctermbg=none
set mouse=a
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[2 q"

"Better copy and past
set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }

"NerdTree
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" easymotion
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Shortcuts
nnoremap <Leader>o :Files<CR> 
nnoremap <Leader>w :w<CR>
nnoremap <leader>r :PlugInstal<CR>
nnoremap <leader>p :Prettier<CR>
