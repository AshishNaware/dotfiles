" ---------------------------
" Basic Vim settings
" ---------------------------
syntax on
filetype plugin indent on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set clipboard=unnamedplus
set cursorline

" ---------------------------
" Golang-specific settings
" ---------------------------
autocmd FileType go setlocal tabstop=4 shiftwidth=4 noexpandtab

" Format Go code on save (requires gofmt or goimports installed)
autocmd BufWritePre *.go :silent! lua vim.lsp.buf.format()


" ---------------------------
" Search and UI improvements
" ---------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
autocmd FileType go setlocal foldmethod=syntax
set foldlevel=99  " keep folds open by default

" ---------------------------
" Optional: netrw explorer settings
" ---------------------------
let g:loaded_netrw=1
let g:loaded_netrwPlugin=1
let g:fern#hijack_window = 0


" ---------------------------
" Optional: Plugin support (commented for now)
" ---------------------------
call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern.vim'
  Plug 'lambdalisue/fern-hijack.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" If using vim-go, you may add:
let g:go_fmt_command = "goimports"
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'

" ---------------------------
" Mappings (optional)
" ---------------------------
nnoremap <Space> :nohlsearch<CR>
nnoremap <leader>tn :tabnext<CR>       " next tab
nnoremap <leader>tp :tabprevious<CR>   " previous tab
nnoremap <leader>tc :tabclose<CR>      " close current tab
nnoremap <leader>to :tabnew<CR>        " open new tab
noremap <silent> <Leader>f :Fern . -drawer -reveal=% -toggle<CR><C-w>=
noremap <C-p> :Files<CR>
