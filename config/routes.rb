Rails.application.routes.draw do

  root :to => 'jobs#index'
  resources :jobs
  resources :appls
  resources :employers
  resources :jobseekers

  get '/employerlogin' => 'employersession#new'
  post '/employerlogin' => 'employersession#create'
  delete '/employerlogin' => 'employersession#destroy'

  get '/jobseekerlogin' => 'jobseekersession#new'
  post '/jobseekerlogin' => 'jobseekersession#create'
  delete '/jobseekerlogin' => 'jobseekersession#destroy'

end
