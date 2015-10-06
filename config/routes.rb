Rails.application.routes.draw do
  resources "inscricao", only: [:create]

  root "eventos#index"

  resources :eventos, only: [:show]

  devise_for :usuarios
  scope :admin, module: 'admin' do
    resources :inscricoes, only: [:index, :update, :destroy] do
      get :csv, on: :collection
    end
    root 'inscricoes#index', as: :usuarios_root
  end

end