# セットアップ時にしたこと
## 1. brew のインストール
https://zenn.dev/watakarinto/articles/16451707aa08d1
https://brew.sh
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ユーザー名/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
## 2. fish のインストールと設定
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

### brew のパスを通す
fishの設定ファイル「~/.config/fish/config.fish」 に 「fish_add_path /opt/homebrew/bin」 を追記します。

```fish:~/.config/fish/config.fish
if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path /opt/homebrew/bin
```

## 3. dein のインストール
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"
```

### ~/.vimrc が上書きされることを確認する

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

### 本リポジトリにある .vimrc ファイルの内容をファイルの最後尾に追記する。

## 4. Clipy のインストール
https://clipy-app.com/

## 5. Copilot.vim のインストール
Copilot.vim は、コードの自動保管機能である 「Github Copilot」 を vim で使うためのプラグインです。  
リポジトリ：https://github.com/github/copilot.vim. 

### サブスクリプション
「Github Copilot」を使用するためには、事前にサブスクリプションが必要です。  
https://docs.github.com/ja/billing/managing-billing-for-github-copilot/managing-your-github-copilot-subscription-for-your-personal-account

上のリンクの手順に従って操作すると、開始ボタンがあります。  
<img width="1304" alt="スクリーンショット 2023-04-16 3 31 50" src="https://user-images.githubusercontent.com/44886160/232248004-f30c5c1a-8159-456c-8990-771aa91dcaad.png">

最初の３０日は無料、その後は 月 10ドルとのこと。（頼む、円高になってくれ・・）  
<img width="702" alt="スクリーンショット 2023-04-16 3 32 36" src="https://user-images.githubusercontent.com/44886160/232248010-685ddb1f-6b33-4e09-a8c1-20e060976306.png">

公開コードから自動保管するか、選べるようです。  
<img width="1085" alt="スクリーンショット 2023-04-16 3 36 59" src="https://user-images.githubusercontent.com/44886160/232248086-6049cdb2-3a9c-4aec-80f3-849ba0a8e8af.png">

サブスクライブできました。  
<img width="731" alt="スクリーンショット 2023-04-16 3 37 11" src="https://user-images.githubusercontent.com/44886160/232248113-413aa30f-9f89-48e3-b391-2583f8ca458e.png">



### Copilot.vim の設定
設定手順を Readme より 引用します。：
1.  Install [Neovim](https://github.com/neovim/neovim/releases/tag/stable) or the latest patch of [Vim](https://github.com/vim/vim) (9.0.0185 or newer).

2.  Install [Node.js](https://nodejs.org/en/download).

3.  Install `github/copilot.vim` using vim-plug, packer.nvim, or any other
    plugin manager.  Or to install manually, run one of the following
    commands:

    * Vim, Linux/macOS:

          git clone https://github.com/github/copilot.vim.git \
            ~/.vim/pack/github/start/copilot.vim

    * Neovim, Linux/macOS:

          git clone https://github.com/github/copilot.vim.git \
            ~/.config/nvim/pack/github/start/copilot.vim

    * Vim, Windows (PowerShell command):

          git clone https://github.com/github/copilot.vim.git `
            $HOME/vimfiles/pack/github/start/copilot.vim

    * Neovim, Windows (PowerShell command):

          git clone https://github.com/github/copilot.vim.git `
            $HOME/AppData/Local/nvim/pack/github/start/copilot.vim

### 最新の vim をインストール
まずは 最新の vim をインストールします。
Mac の場合は brew です。

```
brew install vim
```

参考：
https://github.com/vim/vim/blob/master/READMEdir/README_mac.txt

以下の場所に vim が入りました。  
```
/opt/homebrew/Cellar/vim/9.0.1450/bin/vim
```
<img width="1256" alt="スクリーンショット 2023-04-16 1 58 23" src="https://user-images.githubusercontent.com/44886160/232239654-bcf51d20-fc46-45d1-bc5b-e278e87a6cbc.png">

パスを通します。  
fish の設定ファイル「~/.config/fish/config.fish」 に 「fish_add_path /opt/homebrew/Cellar/vim/9.0.1450/bin」 を追加します。
zsh の場合は、.zprofile になります。

```fish:~/.config/fish/config.fish
if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/Cellar/vim/9.0.1450/bin
```

vim のバージョンが最新になりました。  
<img width="948" alt="スクリーンショット 2023-04-16 2 21 44" src="https://user-images.githubusercontent.com/44886160/232242371-be46407a-e382-4bbc-866a-78dc210bf96f.png">

<img width="928" alt="スクリーンショット 2023-04-16 2 22 10" src="https://user-images.githubusercontent.com/44886160/232242387-b8835bb0-8d5a-46fa-b425-227e7348bb31.png">

### Node.js のインストール
参考：https://nodejs.org/en/download  
.pkg 形式のインストーラを使い、インストールできました。  

<img width="628" alt="スクリーンショット 2023-04-16 2 26 59" src="https://user-images.githubusercontent.com/44886160/232243025-20b8fbd8-e710-4349-9f9d-8dd763f8af07.png">

インストール先の「/usr/local/bin」 にパスが通っているか確認します。  
通っていました。  
<img width="744" alt="スクリーンショット 2023-04-16 2 31 39" src="https://user-images.githubusercontent.com/44886160/232243899-f635f3e9-7498-4ad0-b07d-611528eec472.png">

node, npm のパスとバージョンを確認しておきます。  
<img width="338" alt="スクリーンショット 2023-04-16 2 51 36" src="https://user-images.githubusercontent.com/44886160/232245378-a31885c4-b7cc-4ee2-9881-7ac09ce656a1.png">

<img width="386" alt="image" src="https://user-images.githubusercontent.com/44886160/232244087-b14ef5da-707d-4249-ab21-3c64fd7c4408.png">

### Copilot.vim のインストール
```
git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```

vim で以下のコマンドを実行します。
```
:Copilot setup
```

ワンタイムコードが出ますので控えて Enter を押します。  
<img width="925" alt="スクリーンショット 2023-04-16 2 39 54" src="https://user-images.githubusercontent.com/44886160/232244833-4295ab9a-87e4-470c-a4d9-438b78e06898.png">

WEBブラウザが開き、 Github との連携を認証する画面が出ます。Authorize〜を押して承認します。  
<img width="716" alt="スクリーンショット 2023-04-16 2 38 21" src="https://user-images.githubusercontent.com/44886160/232244873-a3fd3baa-c486-4431-88b2-e31a08d94f7b.png">

連携できました というメッセージが出ます。  
<img width="636" alt="スクリーンショット 2023-04-16 2 39 15" src="https://user-images.githubusercontent.com/44886160/232244881-ef69ce38-00eb-4935-98cc-195cac78abed.png">


# 備忘

## Qargs
Qargs はもう古いとのことで、削除した。2023/04

* https://github.com/nelstrom/vim-qargs
* https://qiita.com/tommy6073/items/b4000435b661523ca744
* https://zenn.dev/tmrekk/articles/4380961a754287

