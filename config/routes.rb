# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#                     root GET    /                                 home#index
#         new_user_session GET    /users/sign_in(.:format)          users/sessions#new
#             user_session POST   /users/sign_in(.:format)          users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         users/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)     users/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    users/passwords#edit
#            user_password PATCH  /users/password(.:format)         users/passwords#update
#                          PUT    /users/password(.:format)         users/passwords#update
#                          POST   /users/password(.:format)         users/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)           users/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)          users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             users/registrations#edit
#        user_registration PATCH  /users(.:format)                  users/registrations#update
#                          PUT    /users(.:format)                  users/registrations#update
#                          DELETE /users(.:format)                  users/registrations#destroy
#                          POST   /users(.:format)                  users/registrations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) users/confirmations#new
#        user_confirmation GET    /users/confirmation(.:format)     users/confirmations#show
#                          POST   /users/confirmation(.:format)     users/confirmations#create
#          new_user_unlock GET    /users/unlock/new(.:format)       users/unlocks#new
#              user_unlock GET    /users/unlock(.:format)           users/unlocks#show
#                          POST   /users/unlock(.:format)           users/unlocks#create

Rails.application.routes.draw do
  root 'home#index'

  # explicitly defining controllers
  devise_for :users, controllers: {
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    registrations: "users/registrations",
    sessions: "users/sessions",
    unlocks: "users/unlocks"
  }

end
