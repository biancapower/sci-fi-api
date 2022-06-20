Rails.application.routes.draw do
  scope '/api' do
    resources :quotes
  end
end
