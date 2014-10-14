Rails.application.routes.draw do
  root 'paste#new', as: :new_paste
  post '/:token', to: 'paste#update'
  get '/:token', to: 'paste#edit'
end
