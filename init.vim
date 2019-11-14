if &compatible
  set nocompatible               " Be iMproved
endif


" dein.vimインストール時に指定したディレクトリをセット
let s:dein_dir = expand('~/.cache/dein')

" dein.vimの実体があるディレクトリをセット
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Required:
set runtimepath+=/Users/nemu_sou/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/nemu_sou/.cache/dein')
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  " " Let dein manage dein
  " " Required:
  " call dein#add('/Users/nemu_sou/vim_prof/dein/repos/github.com/Shougo/dein.vim')

  " " Add or remove your plugins here:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')

  " " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

set backspace=indent,eol,start "Backspaceを調整

"** 代わりにする **
"inoremap <C-j> <esc>
inoremap jj <esc>

"** ペーストするときにインデントさせない **
inoremap <F5> <nop>
set pastetoggle=<F5>

"** システム設定 **
set nocompatible
set noswapfile                      "swpの作成無効化
set nobackup                        "~の作成無効化
set writebackup                     "上書き成功時に~を削除
"set clipboard=unnamed ,autoselect  "クリップボードを共有
set infercase
set autoread
set nowrap                          "折り返ししない

"** 折りたたみ **
set foldmethod=marker

"** 文字コード設定 **
set encoding=utf-8                  "vim
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp "保存するファイル
set fencs=utf-8,iso-2022-jp,enc-jp,cp932  "開くファイル

"** 表示設定 **
syntax enable                       "ハイライト表示
set title                           "タイトル
set number                          "行番号
set cursorline                      "カーソルラインの表示
set cursorcolumn
set list
set showmatch
set matchtime=3
set matchpairs& matchpairs+=<:>
set laststatus=2
set updatetime=300
"set wildmenu
"set wildmode=full
"set wildoptions=pum
"set pumblend=10
"let g:Powerline_symbols = 'fancy'

set tabstop=2                       "タブ文字幅
set shiftwidth=2                    "インデント幅
set expandtab                       "タブにスペースを使う
set smartindent
let g:python_highlight_all = 1
language en_US.UTF-8

"** ファイル別設定 **
filetype on
filetype plugin indent on
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType c,cpp set cindent cinoptions+=:0,g0
autocmd FileType eruby set tabstop=4 shiftwidth=4

set t_Co=256
set background=dark
colorscheme neodark
" colorscheme hybrid
" colorscheme solarized
" colorscheme lucario

" detect python host
let g:python_host_prog = '/Users/nemu_sou/.myenv/bin/python'
let g:python3_host_prog = '/Users/nemu_sou/.myenv/bin/python3'

" nnoremap <silent> <C-j> gt
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
nnoremap <C-t> :<C-u>tabnew<CR>
