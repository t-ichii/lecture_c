# Lecture C

## セットアップ

- GitHubアカウントの取得
  - [GitHub](https://github.com/)にアクセスし、SignUpをおこなって、アカウントを作成してください。
- Homebrewのインストール
  - [Homebrew](https://brew.sh/index_ja)にアクセスし、ページに従ってインストールをしてください。
- gitのインストール
  - ターミナル上で `git --version` を実行してバージョンが表示されていればgitはインストールされているのでスキップしてください
  - `brew install git` を実行してください。
- GitHubに公開鍵を登録
- レポジトリのclone
- git branch の切り替え
  - mainブランチは作業では利用しないでください。 `git checkout -b <開発を行う人を識別できる文字列> origin/<開発を行う人を識別できる文字列>` を実行し、ブランチを切り替えてください。
- Docker Desctopのインストール
  - [Docker Desktop](https://docs.docker.jp/desktop/toc.html)のページからご自身の環境にあったDockerDesctopをインストールしてください。
- image build
  - `make image_build`

## 開発の方法

TBD

## ディレクトリ構成

- `Dockerfile`: Cの実行環境を記述しているDockerfile
- `src/`: Cコードを配置するところ（DockerContainer内に同期されます）

## 教材

- [コンピュータの原理から学ぶプログラミング言語C](https://www.amazon.co.jp/dp/4320124774)

## 演習問題の回答方法

- 第2章以降、各章末にある演習問題を自らのBranchにCommitしていく
  - Cのソースであれば、　`src/` 以下に `practice_<章番号>/question.<章番号>.<問題番号>.c` という形でソースを作っていく。（例 `src/practice_4/question.4.1.c`）
  - 文章による記述問題であれば `practice_<章番号>/question.<章番号>.<問題番号>.txt` で回答をしていく。

