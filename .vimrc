" # dein ###########################################
" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/Users/star-yamamoto-373150/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/Users/star-yamamoto-373150/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
" ファイラー (vimfiler が unite に依存)
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler.vim')
" カラースキーム
call dein#add('cocopon/iceberg.vim')
" Markdown プレビュー
call dein#add('kannokanno/previm')
" cs"' で " の囲みを ' に変える (Change Surround)
call dein#add('terryma/vim-expand-region')
" ビジュアルモードで + を押すと範囲拡大。_ を押すと縮小。
call dein#add('tpope/vim-surround')

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif
" # dein end ###################################

" Leaderキー
let g:mapleader = "\<Space>"

" ファイラーを開く
nnoremap <Leader>i :VimFilerBufferDir<CR>
vnoremap <Leader>i :VimFilerBufferDir<CR>


" 不要なデフォルトプラグインの無効化
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

" 矢印キーの実質無効化
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

"半角文字のフォント設定
set guifont=Osaka-Mono:h32

"全角文字のフォント設定
set guifontwide=Osaka-Mono:h32

" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden

" esc キーは遠いため、jjに変更
inoremap <silent> jj <ESC>

":h ex-cmd-index でコマンドのヘルプ出せるよ(超参考)

" コマンドモードで前に打ったコマンドを矢印キーで参照する
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" 数のインクリメント・デクリメント のときに10進数扱いにする(8進数になるため)
set nrformats=

" Esc 押下時に英数入力に変更する
set imdisable

" 保存時の文字コード
set fileencoding=utf-8

" 読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=ucs-boms,utf-8,euc-jp,cp932

" 改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac

" □や○文字が崩れる問題を解決
set ambiwidth=double " □や○文字が崩れる問題を解決

" タブをスペース 4つにする。
set shiftwidth=4
set softtabstop=4 expandtab

" 不可視文字を表示する
set list " タブを >--- 半スペを _ で表示する
set listchars=tab:>_,trail:_

" 自動インデントの無効化
set noautoindent
set nosmartindent

" インクリメンタルサーチの有効化 "/abc" と打っている時に "/a" と打った時点で検索開始する
set incsearch

" 検索結果を真ん中に表示する
nnoremap n nzz
nnoremap N Nzz

" 検索結果をハイライトする
set hlsearch

" 大文字小文字を区別しない
set ignorecase

" 行数を表示する
set number

" コピー&ペーストの結果をクリップボードに入れる
set clipboard+=unnamed

" マウスの有効化
set mouse=a

" カラースキームの設定
colorscheme iceberg

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

" mark機能を忘れずに

" ファイルを閉じる
nnoremap <Leader>q :q!<CR>
vnoremap <Leader>q :q!<CR>
nnoremap <Leader>w :w!<CR>
vnoremap <Leader>w :w!<CR>

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
vnoremap <Leader>d :diffsplit 
nnoremap <Leader>d :diffsplit 

" 置換
nnoremap <Leader>s :%s##
vnoremap <Leader>s :s##

" バッファ確認し、入力した数字のバッファに移動
" (移動しない場合はそのままenter)
nnoremap <Leader>l :ls<CR>:b 
vnoremap <Leader>l :ls<CR>:b 

" 今のバッファを保存しないで閉じる
nnoremap <Leader>b :%d<CR>
vnoremap <Leader>b :%d<CR>

nnoremap <Leader>f :set filetype=
vnoremap <Leader>f :set filetype=

" 改行を含まない行コピー
nnoremap <Leader>a v$ho0y
vnoremap <Leader>a $ho0y

" 今カーソルのある場所から一番うしろまでコピー
nnoremap <Leader>9 v$hoy
vnoremap <Leader>9 $hoy

" 今カーソルのある場所から一番前までコピー
nnoremap <Leader>0 v0y
vnoremap <Leader>0 0y

" バッファの場所に移動
nnoremap <Leader>c :cd %:h\|pwd<CR>
vnoremap <Leader>c :cd %:h\|pwd<CR>

" ハイライトを消す
nnoremap <Leader>n :noh<CR>
vnoremap <Leader>n :noh<CR>

" 現在行に書いたコマンドの実行結果を持ってくる
vnoremap <Leader><CR> :!sh<CR>
nnoremap <Leader><CR> V:!sh<CR>

" date 出力
noremap <Leader>@ :.!date<CR>:normal o<CR>

" calender 出力
noremap <Leader>\ :.!cal -h<CR>:normal O<CR>

" 現在のバッファ内容をコピー
nnoremap <Leader>y :%y<CR>
vnoremap <Leader>y :%y<CR>

" 上に一行空ける
nnoremap <Leader>o O<ESC>
vnoremap <Leader>o O<ESC>

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

" <LEADER>/ で検索した時に / の検索に加えて、件数がわかる
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


" "*" を押すと、カーソル上にある単語をハイライトする。
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
