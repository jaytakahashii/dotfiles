# Dotfiles

このリポジトリは、開発環境をすぐにセットアップできるようにするための `dotfiles` を管理しています。

## Mac セットアップ手順

### 1. Homebrew のインストール

macOS で Homebrew をインストールします。

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

パスが正しく通っているか確認:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
brew --version
```

---

### 2. 必要なツールのインストール

```sh
brew install git stow zsh
```

Oh My Zsh もインストール:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

---

### 3. Dotfiles の適用

#### **リポジトリのクローン**

```sh
cd ~
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
```

#### **stow を使ってシンボリックリンクを作成**

```sh
cd ~/.dotfiles
stow git  # Git の設定を適用
stow zsh  # Zsh の設定を適用
```

これで `~/.gitconfig` や `~/.zshrc` などが適切にリンクされます。

---

### 4. 環境ごとの Git 設定

`.gitconfig` は共通設定のみを管理し、環境ごとの設定は `~/.gitconfig.local` に記述してください。

#### **`~/.gitconfig.local` を作成**

```sh
touch ~/.gitconfig.local
nano ~/.gitconfig.local
```

以下のように設定を追加:

```ini
[user]
    name = Your Name
    email = your.email@example.com
```

`~/.gitconfig.local` は **dotfiles に含めない** ため、環境ごとに設定できます。

---

### 5. VS Code のセットアップ

VS Code をインストール:

```sh
brew install --cask visual-studio-code
```

VS Code の拡張機能を同期するには、GitHub アカウントでログインして同期を有効化してください。

---

### 6. C/C++ のインストール

C/C++ 開発環境をセットアップ:

```sh
brew install gcc
brew install llvm
```

コンパイラの確認:

```sh
gcc --version
clang --version
```

---

## Linux セットアップ手順

## 注意点

- `stow` を使用する際は、`.dotfiles` 内のフォルダ名と `~` 以下のファイル名を一致させるようにしてください。
- `~/.gitconfig.local` は各環境で個別に作成し、リポジトリには含めません。
- 環境ごとに追加のツールが必要な場合は、この `README.md` に追記してください。

---

## 今後の予定

- より多くの開発ツールのセットアップスクリプトを追加予定。
- Shell スクリプトで一括セットアップできるようにする。
