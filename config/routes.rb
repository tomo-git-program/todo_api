Rails.application.routes.draw do
  # ホームページ
  get '/todos', to: "todos#home"
  # 新規作成ページ
  get '/todos/new', to: "todos#new"
  # エディットページ
  get '/todos/:id/edit', to: "todos#edit"
  # 送信用リクエスト
  post '/todos', to: "todos#create"
  # deleteメソッド
  delete '/todos/:id', to: "todos#destroy"
  # アップデートメソッド
  patch '/todos/:id', to: "todos#update"
end