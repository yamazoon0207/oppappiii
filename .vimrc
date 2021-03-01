" 端末セットアップ時にすること
" 見た目と操作性は命
"
" capslock(cmd), 画面切替(C-j,k)のキーバインド変更
"
" iTerm2をicebergにする
" https://github.com/Arc0re/Iceberg-iTerm2
" やっぱり hybridにする
" git clone https://github.com/w0ng/vim-hybrid
" cp -p ./vim-hybrid/colors/hybrid.vim  ~/.vim/colors
"
" シェルをzshにする
" chsh -s /bin/zsh
" brew update
" brew install zsh

" Prezto入れる
" https://github.com/sorin-ionescu/prezto
" zstyle ':prezto:module:prompt' theme 'pure' # ここを変更

" vimrcを入れる
" https://github.com/yamazoon/dotfiles

" dein入れる(vimfiler....etc)
" https://github.com/Shougo/dein.vim

" DASH(スニペット)
" https://kapeli.com/dash
"
" clipy(クリップボード管理)
" https://clipy-app.com/
" 
" Chrome(Vimnium),Typora,marp,showkeys,Licecap...etc

" fuyou-default-plugin無効化" fuyou-default-plugin
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

" kunren
nnoremap <Up> '
nnoremap <Down> '
vnoremap <Up> '
vnoremap <Down> '
nnoremap <left> ^
nnoremap <right> $
vnoremap <left> ^
vnoremap <right> $
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

"半角文字の設定
set guifont=Osaka-Mono:h32

"全角文字の設定
set guifontwide=Osaka-Mono:h32


" hidden 未保存時にもバッファを切り替える
set hidden

" esc遠いからjjに
inoremap <silent> jj <ESC>

":h ex-cmd-index でコマンドのヘルプ出せるよ(メモ)

" command-refできるように
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" ctrl-a のときに10進数扱いにする(8進数になるため)
set nrformats=

set imdisable "Esc押下時に英数入力に変更する

set fileencoding=utf-8 " 保存時の文字コード

set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される

set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される

set ambiwidth=double " □や○文字が崩れる問題を解決

" tab -> space
set shiftwidth=4
set softtabstop=4 expandtab

set list " 不可視文字を表示する
set listchars=tab:>_,trail:_  " タブを >--- 半スペを . で表示する
"set listchars+=space:\|

" no indent
set noautoindent
set nosmartindent

" increment search
set incsearch

" kensakukekka-mannnaka
nnoremap n nzz
nnoremap N Nzz

" kensakukekka-highlight
set hlsearch

" ignorecase
set ignorecase

" describe number
set number

" clipboard
set clipboard+=unnamed
"set clipboard=unnamed,autoselect "autoselectを入れるとvisualモードで選択したテキストをクリップボードに入れるため削除
"set clipboard=unnamed

" mouse マウス禁止
"set ttymouse=xterm2
set mouse=a

"背景透過
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

"カラースキームをコマンドラインから変更しても、背景透過を維持
augroup TransparentBG
        autocmd!
        autocmd Colorscheme * highlight Normal ctermbg=none
        autocmd Colorscheme * highlight NonText ctermbg=none
        autocmd Colorscheme * highlight LineNr ctermbg=none
        autocmd Colorscheme * highlight Folded ctermbg=none
        autocmd Colorscheme * highlight EndOfBuffer ctermbg=none 
augroup END

" color
" colorscheme iceberg
colorscheme hybrid
syntax on

"set background=dark
"set background=light
"colorscheme solarized
"let g:solarized_termcolors=256

" mark
nnoremap _ '
vnoremap _ '

" & map &&
nnoremap & :&&<CR>
vnoremap & :&&<CR>

" Statuslineの設定
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ \[ENC=%{&fileencoding}]%P

" Leaderキー
let g:mapleader = "\<Space>"

" ファイルを閉じる
"nnoremap <Leader>t :wq!
"vnoremap <Leader>t :wq!
nnoremap <Leader>q :q!<CR>
vnoremap <Leader>q :q!<CR>
nnoremap <Leader>w :w!<CR>
vnoremap <Leader>w :w!<CR>
nnoremap <Leader>] :wq!<CR>
vnoremap <Leader>] :wq!<CR>
nnoremap <Leader>e :w 
vnoremap <Leader>e :w 

" バッファ操作
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Args操作
nnoremap <silent> [v :previous<CR>
nnoremap <silent> ]v :next<CR>
nnoremap <silent> [V :first<CR>
nnoremap <silent> ]V :last<CR>
nnoremap <Leader>v :args 

" marks
nnoremap <Leader>m :marks<CR>
vnoremap <Leader>m :marks<CR>

" 編集用一時領域作成
nnoremap <Leader>t :split +enew<CR>
vnoremap <Leader>t :split +enew<CR>

" ファイル比較
vnoremap <Leader>: :diffsplit 
nnoremap <Leader>: :diffsplit 

" 置換
nnoremap <Leader>s :%s##
vnoremap <Leader>s :s##

" ファイルエクスプローラーを開く
nnoremap <Leader>i :VimFilerBufferDir<CR>
vnoremap <Leader>i :VimFilerBufferDir<CR>

" バッファ確認し、入力した数字のバッファに移動
" (移動しない場合はそのままenter)
nnoremap <Leader>l :ls<CR>:b 
vnoremap <Leader>l :ls<CR>:b 

" 今のバッファを保存しないで閉じる
nnoremap <Leader>d :bd!<CR>
vnoremap <Leader>d :bd!<CR>

" 今のバッファを保存しないで閉じる
nnoremap <Leader>b :%d<CR>
vnoremap <Leader>b :%d<CR>

nnoremap <Leader>f :set filetype=
vnoremap <Leader>f :set filetype=

" 改行を含まない行コピー
nnoremap <Leader>a v$ho0y
vnoremap <Leader>a $ho0y

" 今カーソルのある場所から一番うしろまでコピー
nnoremap <Leader>e v$hoy
vnoremap <Leader>e $hoy

" ヤンクレジスタから貼り付け
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p

" バッファの場所に移動
nnoremap <Leader>c :cd %:h\|pwd<CR>
vnoremap <Leader>c :cd %:h\|pwd<CR>

" ハイライトを消す
nnoremap <Leader>n :noh<CR>
vnoremap <Leader>n :noh<CR>

" 現在行に書いたコマンドの実行結果を持ってくる
vnoremap <Leader><CR> :!sh<CR>
nnoremap <Leader><CR> V:!sh<CR>
vnoremap <Leader>p<CR> :!pwsh -nol<CR>
nnoremap <Leader>p<CR> V:!pwsh -nol<CR>

" date 出力
noremap <Leader>@ :.!date<CR>:normal o<CR>

" calender 出力
noremap <Leader>\ :.!cal -h<CR>:normal O<CR>

" vimgrep
autocmd QuickFixCmdPost *grep* cwindow
nnoremap <Leader>g :vim // **
vnoremap <Leader>g :vim // **
nnoremap 8 :cn<CR>
vnoremap 8 :cn<CR>
nnoremap 7 :cp<CR>
vnoremap 7 :cp<CR>
nnoremap <Leader>j :copen<CR>
nnoremap <Leader>k :cclose<CR>
nnoremap <Leader>h :cnext<CR>
nnoremap <Leader>l :cprev<CR>

" 現在のバッファ内容をコピー
nnoremap <Leader>y :%y<CR>
vnoremap <Leader>y :%y<CR>

" 上に一行空ける
nnoremap <Leader>o O<ESC>
vnoremap <Leader>o O<ESC>

"
" kensaku kensuu count
nnoremap <expr> <Leader>/ _(":%s/<Cursor>/&/gn")
vnoremap <expr> <Leader>/ _(":%s/<Cursor>/&/gn")

function! s:move_cursor_pos_mapping(str, ...)
    let left = get(a:, 1, "<Left>")
    let lefts = join(map(split(matchstr(a:str, '.*<Cursor>\zs.*\ze'), '.\zs'), 'left'), "")
    return substitute(a:str, '<Cursor>', '', '') . lefts
endfunction

function! _(str)
    return s:move_cursor_pos_mapping(a:str, "\<Left>")
endfunction




" Qargs
" https://github.com/nelstrom/vim-qargs/blob/master/plugin/qargs.vim
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let bufnr = quickfix_item['bufnr']
    " Lines without files will appear as bufnr=0
    if bufnr > 0
      let buffer_numbers[bufnr] = bufname(bufnr)
    endif
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction




" bronson/vim-visual-star-search
" From http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html

" makes * and # work on visual mode too.  global function so user mappings can call it.
" specifying 'raw' for the second argument prevents escaping the result for vimgrep
" TODO: there's a bug with raw mode.  since we're using @/ to return an unescaped
" search string, vim's search highlight will be wrong.  Refactor plz.
 function! VisualStarSearchSet(cmdtype,...)
   let temp = @"
   normal! gvy
   if !a:0 || a:1 != 'raw'
     let @" = escape(@", a:cmdtype.'\*')
   endif
   let @/ = substitute(@", '\n', '\\n', 'g')
   let @/ = substitute(@/, '\[', '\\[', 'g')
   let @/ = substitute(@/, '\~', '\\~', 'g')
   let @" = temp
 endfunction
 
 " replace vim's built-in visual * and # behavior
 xnoremap * :<C-u>call VisualStarSearchSet('/')<CR>/<C-R>=@/<CR><CR>
 xnoremap # :<C-u>call VisualStarSearchSet('?')<CR>?<C-R>=@/<CR><CR>
 
 " recursively vimgrep for word under cursor or selection
 if maparg('<leader>*', 'n') == ''
   nnoremap <leader>* :execute 'noautocmd vimgrep /\V' . substitute(escape(expand("<cword>"), '\'), '\n', '\\n', 'g') . '/ **'<CR>
 endif
 if maparg('<leader>*', 'v') == ''
   vnoremap <leader>* :<C-u>call VisualStarSearchSet('/')<CR>:execute 'noautocmd vimgrep /' . @/ . '/ **'<CR>
 endif


nn gc :call cursor(0,strlen(getline("."))/2)<CR>


" プラグイン

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NeoBundle
"" Note: Skip initialization for vim-tiny or vim-small.
" if 0 | endif
"
" if &compatible
"   set nocompatible               " Be iMproved
" endif
"
" " Required:
" set runtimepath+=~/.vim/bundle/neobundle.vim/
"
" " Required:
" call neobundle#begin(expand('~/.vim/bundle/'))
"
" " Let NeoBundle manage NeoBundle
" " Required:
" NeoBundleFetch 'Shougo/neobundle.vim'
"
" " My Bundles here:
" " Refer to |:NeoBundle-examples|.
" " Note: You don't set neobundle setting in .gvimrc!
"
" " NERDTree
" " NeoBundle 'scrooloose/nerdtree'
"
" " indent
" NeoBundle 'Yggdroot/indentLine'
"
" " expand v
" NeoBundle 'terryma/vim-expand-region'
"
" "comment
" " NeoBundle 'tpope/vim-commentary'
"
" "surround.vim
" NeoBundle 'tpope/vim-surround'
"
" " project
" "NeoBundle 'vimplugin/project.vim'
"
" " unite.vim
" NeoBundle 'Shougo/unite.vim'
"
" " filer
" NeoBundle 'Shougo/vimfiler'
"
" " preview markdown with vim
" NeoBundle 'kannokanno/previm'
"
" " iceberg
" NeoBundle 'cocopon/iceberg.vim'
"
" call neobundle#end()
"
" " Required:
" filetype plugin indent on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
"NeoBundleCheck
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" NERDTree
" map <C-n> :NERDTreeToggle<CR>




"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/tetsuya/dotfiles/.vim/dein')
  call dein#begin('/Users/tetsuya/dotfiles/.vim/dein')

  " Let dein manage dein
  " Required:
   call dein#add('/Users/tetsuya/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
   call dein#add('Shougo/unite.vim')
   call dein#add('Shougo/vimfiler')
   "call dein#add('Yggdroot/indentLine')
   "call dein#add('cocopon/iceberg.vim')
   "call dein#add('kannokanno/previm')
   call dein#add('terryma/vim-expand-region')
   call dein#add('tpope/vim-surround')
   " https://myenigma.hatenablog.com/entry/2016/07/10/084048
   call dein#add('tpope/vim-fugitive')
   call dein#add('leafgarland/typescript-vim')
   call dein#add('ctrlpvim/ctrlp.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
" filetype plugin indent on
syntax on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" プラグイン関連設定

" expand v
vmap m <Plug>(expand_region_expand)
vmap M <Plug>(expand_region_shrink)

" vimfiler safe mode off
let g:vimfiler_safe_mode_by_default = 0

" previm
"autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
"let g:previm_open_cmd = 'open -a "Google Chrome"'
"let g:previm_disable_default_css = 1
"let g:previm_custom_css_path = '~/dotfiles/.vim/previm/markdown.css'
"nnoremap <Leader>m :PrevimOpen<CR>
"vnoremap <Leader>m :PrevimOpen<CR>


