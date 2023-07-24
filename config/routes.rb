# frozen_string_literal: true

Rails.application.routes.draw do
  resources :fruits
  get 'fruits/:id/delete', to: 'fruits#delete', as: 'delete_fruit'
end
