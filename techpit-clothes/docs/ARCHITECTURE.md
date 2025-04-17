# システムアーキテクチャ

本アプリケーションは MVC アーキテクチャに基づいて構築されています。

## 主なモデル・テーブル
- Product: 商品情報
- Cart: カート（一時的な購入選択）
- LineItem: カート内の商品アイテム
- StripeCheckout: Stripe Checkout セッション生成用クラス

## 主なコントローラ
- ProductsController: 商品一覧・詳細表示
- LineItemsController: カートへの追加・削除
- CartsController: カート表示
- PaymentsController: 決済処理

## データフロー
1. 商品一覧/詳細ページ閲覧
2. カートに商品追加/削除
3. カートページで決済ボタン押下
4. Stripe Checkout セッション生成後、決済画面へリダイレクト
5. 決済成功後、カートクリアしてトップページへリダイレクト