Rails.application.routes.draw do
  resources :musics
  root 'musics#thelist'
end
