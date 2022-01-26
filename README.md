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

