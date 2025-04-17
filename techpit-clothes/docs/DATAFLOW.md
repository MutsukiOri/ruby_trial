# データフロー概要

本アプリケーションの主要データフローを、主要エンティティとユーザー操作の観点から簡潔にまとめます。

## 主なエンティティ
- Product: 商品情報 (`id`, `name`, `price`, …)
- Cart: カート (`id`, `session[:cart_id]` と紐付け)
- LineItem: カート内アイテム (`cart_id`, `product_id`, `quantity`)

### ER 関係
```text
Product 1<-->* LineItem *<-->* Cart
```  

## セッションとカート
- `session[:cart_id]` 未設定時に新規 `Cart` を作成し、ID を保存  
- 以降は `Cart.find(session[:cart_id])` でカートを取得

## ユーザー操作フロー
1. 商品一覧/詳細表示: [GET] `/products`, `/products/:id`  
2. カート操作  
   - 追加・数量変更: [POST] `/line_items`  
   - 削除: [DELETE] `/line_items/:id`  
3. カート表示: [GET] `/carts` (`CartsController#index`)  
4. 決済準備: [GET] `/payments/checkout` (`PaymentsController#checkout`)  
   - Stripe セッション生成 (`Stripe::Checkout::Session.create`)  
5. 決済完了: [GET] `/payments/success` (`PaymentsController#success`)  
   - `@cart.line_items.delete_all` でカートをクリア

## データ関係
- `session[:cart_id]` → Cart → has_many LineItem → belongs_to Product  
- 小計計算: `Cart#sub_total` → `LineItem#amount` の合計

※上記により、ユーザー操作とデータの流れが一目で把握できます。

 ---
 以上が本アプリケーションにおける、カート機能を中心としたテーブルおよび処理のデータフローです。