# 環境構築手順

## 前提条件
- Ruby 3.3.0
- Rails 7.0.3.1
- MySQL
- Node.js (v16+), Yarn
- Stripe アカウント (環境変数: STRIPE_SECRET_KEY)
- .env ファイル（.env.example を参照）

## ローカル開発環境セットアップ
```bash
git clone <リポジトリURL>
cd <プロジェクトディレクトリ>
bundle install
yarn install
cp .env.example .env
rails db:create db:migrate db:seed
bin/dev
```

- `bin/dev` コマンドで Rails サーバと JS/CSS のビルドが同時に起動します。