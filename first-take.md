# セットアップ時にしたこと
## brew のインストール
https://zenn.dev/watakarinto/articles/16451707aa08d1
https://brew.sh
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ユーザー名/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
## fish のインストールと設定
https://medium.com/@kjmczk/mac-terminal-53a3d4ac06c7

### fish のインストール
```
brew install fish
which fish
```

### fish を shells に追加
```
sudo vi /etc/shells
```

### fish を デフォルトシェルに変更
```
which fish |xargs chsh -s
```

### fisher のインストール
```
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
```

### pure を入れる
```
fisher install rafaelrinaldi/pure
```

# dein のインストール
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"
```

## ~/.vimrc が上書きされることを確認する
### イメージ

```
" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/Users/star-yamamoto-373150/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/Users/star-yamamoto-373150/.cache/dein/repos/github.com/Shougo/dein.vim'

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

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
```

## 本リポジトリにある .vimrc の内容をファイルの先頭に追記し、 dein のパスを書き換える。以下の箇所。
```
"dein Scripts-----------------------------
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/star-yamamoto-373150/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/star-yamamoto-373150/.cache/dein')
  call dein#begin('/Users/star-yamamoto-373150/.cache/dein')

  " Let dein manage dein
  " Required:
   call dein#add('/Users/star-yamamoto-373150/.cache/dein/repos/github.com/Shougo/dein.vim')
〜以下、省略〜
"End dein Scripts-------------------------
```


# Clipy のインストール
https://clipy-app.com/


# Quickfixlist
について再確認。（使ってなかった）
https://zenn.dev/tmrekk/articles/4380961a754287

