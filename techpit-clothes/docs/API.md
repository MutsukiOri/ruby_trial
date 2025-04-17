# API 仕様

本アプリケーションが提供する主なエンドポイント一覧です。

## 商品関連
- GET / (root)
  - 概要: 商品一覧取得 (ProductsController#index)
- GET /products/:id
  - 概要: 商品詳細取得 (ProductsController#show)

## カート関連
- POST /line_items
  - 概要: カートに商品を追加 (LineItemsController#create)
  - パラメータ: product_id (商品 ID)
- DELETE /line_items/:id
  - 概要: カートから商品を削除 (LineItemsController#destroy)
- GET /carts
  - 概要: カート内容表示 (CartsController#index)

## 決済関連
- GET /payments/checkout
  - 概要: Stripe Checkout セッション生成 (PaymentsController#checkout)
- GET /payments/success
  - 概要: 決済成功後処理 (PaymentsController#success)