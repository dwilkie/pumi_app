Rails.application.routes.draw do
  resource :demo, only: :show
  mount Pumi::Engine => "/pumi"

  root to: "demos#show"
end
