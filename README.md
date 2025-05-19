# Baby Records

**天気と赤ちゃんの睡眠・ミルク・その他記録を管理するアプリ**  
Go / Rust / Node.js を使ったマルチクラウド対応の育児サポートアプリです。

## 📦 構成

baby-records/
├── backend/
│ ├── go/ # Go バックエンド
│ └── rust/ # Rust バックエンド
├── frontend/
│ └── web/ # Web フロントエンド（Node.js + Reactなど）
├── scripts/ # 起動スクリプト、wait-for-it.sh など
├── .env.sample # 環境変数のサンプル
├── docker-compose.yml
└── README.md

yaml
コピーする
編集する

---

## 🚀 準備手順

### 1. `.env` ファイルを作成

`.env.sample` を元にルートディレクトリに `.env` を作成し、各値を設定してください：

```bash
cp .env.sample .env
.env には以下のような値が含まれます：

env
コピーする
編集する
# DB
POSTGRES_DB=baby_records
POSTGRES_USER=postgres
POSTGRES_PASSWORD=password
POSTGRES_PORT=5432

# API 各種設定
RUST_API_PORT=8080
GO_API_PORT=8081
2. Docker 環境を構築
以下のコマンドで Docker イメージをビルドします：

bash
コピーする
編集する
docker compose build
3. アプリの起動
bash
コピーする
編集する
docker compose up
初回起動時はコンテナが必要な依存関係をインストールします。

⚙️ 使用技術
Rust：記録APIの一部（高性能・型安全）

Go：別系統のAPI（シンプル・軽量）

React / Node.js：Web フロントエンド

PostgreSQL：永続化 DB

Docker / Docker Compose：開発・本番環境の統一

📄 その他
Git 管理に含めない .env
.env は 個別環境に依存する機密情報 を含むため、.gitignore に追加しています。
共有が必要な設定値は .env.sample に記述してください。

開発用 Dockerfile と本番用の使い分け
Dockerfile.dev：ホットリロードなど開発用設定

Dockerfile：本番用の軽量ビルド

✍️ 今後のTODO
 Android 対応

 認証機能の追加

 多言語対応（i18n）

 CI/CD パイプラインの整備

