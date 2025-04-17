# デプロイ手順

本番環境へのデプロイ手順例です。

## Heroku (例)
1. Heroku アプリ作成: `heroku create`
2. 環境変数設定: `heroku config:set STRIPE_SECRET_KEY=<your_stripe_secret_key>`
3. デプロイ: `git push heroku main`
4. マイグレーション実行: `heroku run rails db:migrate`
5. 必要に応じて Seed 実行: `heroku run rails db:seed`

## その他
- `RAILS_ENV=production rails assets:precompile`
- 適切なデータベース・キャッシュサーバー設定を行ってください。