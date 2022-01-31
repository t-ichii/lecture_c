# Lecture C

## セットアップ

### レポジトリcloneまで
- GitHubアカウントの取得
  - [GitHub](https://github.com/)にアクセスし、SignUpをおこなって、アカウントを作成してください。
- Homebrewのインストール
  - [Homebrew](https://brew.sh/index_ja)にアクセスし、ページに従ってインストールをしてください。
- gitのインストール
  - ターミナル上で `git --version` を実行してバージョンが表示されていればgitはインストールされているのでスキップしてください
  - `brew install git` を実行してください。
- GitHubに公開鍵を登録
  - [GitHubのガイド](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)に従ってSSHのKeyを登録し、使えるようにしてください。
- レポジトリのclone
  - 任意の場所(ホームディレクトリなど)で `git clone git@github.com:t-ichii/lecture_c.git` を実行し、git repositoryをcloneしてください。

### レポジトリのclone後

- git branch の切り替え
  - mainブランチは作業では利用しないでください。 `git checkout -b <開発を行う人を識別できる文字列>/base origin/<開発を行う人を識別できる文字列>/base` (例: `git checkout -b t-ichii/base origin/t-ichii/base`)を実行し、ブランチを切り替えてください。
- Docker Desctopのインストール
  - [Docker Desktop](https://docs.docker.jp/desktop/toc.html)のページからご自身の環境にあったDockerDesctopをインストールしてください。
- image build
  - `make image_build`

## 開発の方法

（`make image_build` を行ってDockerImageをBuildしておいてください。）

- 下記の「演習問題の回答方法」に従って実行ファイルを作っておきます。
- make run_image をおこなって、DockerImageを実行し、実行環境の中に入ります
- DockerImageのbash上で `cd src/practice_<章番号>/` をおこなって、先程作ったファイルが有ることを確認します。
- `gcc question.<章番号>.<問題番号>.c -o question.<章番号>.<問題番号>` を実行し、コンパイルします。
- コンパイルが成功したら、 `./question.<章番号>.<問題番号>` を実行し、作成したプログラムが期待したどおりに動くか確認します。

## ディレクトリ構成

- `Dockerfile`: Cの実行環境を記述しているDockerfile
- `src/`: Cコードを配置するところ（DockerContainer内に同期されます）

## 教材

- [コンピュータの原理から学ぶプログラミング言語C](https://www.amazon.co.jp/dp/4320124774)

## 進め方

- 演習に参加する人のベースブランチはセットアップにある `<開発を行う人を識別できる文字列>/base` とする。
- 演習に参加する前に `git checkout <開発を行う人を識別できる文字列>/base && git checkout <開発を行う人を識別できる文字列>/practice_<章番号>` を実行し、回答の準備をする。
- 下記の「演習問題の回答方法」に従って回答ファイルを作成していく。
- 回答ファイルを作成したら、 `git add src/practice_<章番号>/*.c　src/practice_<章番号>/*.txt && git commit -m 'commit question'` を行う
  - gitのコミットに関しては、慣れていくうちにレクチャーするので、一旦最初の方法として上記を行う。
- `git push` を行い、GitHub上に回答をアップロードする。
- 回答をアップロードしたら、GitHub上にそのブランチをマージするためのPullRequestを作成する
  - baseを ` <開発を行う人を識別できる文字列>/base`, compareを `<開発を行う人を識別できる文字列>/practice_<章番号>` としてPullRequestを作成する。
- PullRequestを作成したら、t-ichiiに連絡してコードレビューを行う。問題なければ、PullReqeustをApproveしてマージをし、その演習問題を完了とする。

## 演習問題の回答方法

- 第2章以降、各章末にある演習問題を自らのBranchにCommitしていく
  - Cのソースであれば、　`src/` 以下に `practice_<章番号>/question.<章番号>.<問題番号>.c` という形でソースを作っていく。（例 `src/practice_4/question.4.1.c`）
  - 文章による記述問題であれば `practice_<章番号>/question.<章番号>.<問題番号>.txt` で回答をしていく。

