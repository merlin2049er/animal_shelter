Rails.application.routes.draw do
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users,
               controllers: {
                 registrations: 'registrations',
                 confirmations: 'confirmations',
                 passwords: 'passwords',
                 sessions: 'sessions'

               }

    root 'pages#index'
    resources :faqs
    resources :blacklists
    resources :contacts
    resources :categories
    resources :notifications
    resources :photos
    resources :products
    resources :taxes
    resources :transactions
    resources :feedbacks
    resources :watchlists
    resources :troubletickets
    resources :ticketnotes



    get 'pages/about'
    get 'pages/banned'
    get 'pages/contact'
    get 'pages/cookies'
    get 'pages/error'
    get 'pages/index'  # recently added
    get 'pages/index2' #last change
    get 'pages/invitations'
    get 'pages/invite'
    get 'pages/jobs'
    get 'pages/hours'
    get 'pages/location'
    get 'pages/lola'
    get 'pages/payments'
    get 'pages/privacy'
    get 'pages/random'
    get 'pages/random2'
    get 'pages/terms'
    get 'pages/thankyou'
    get 'pages/pickup'
    get 'pages/returns'
    get 'pages/taxes'
    get 'pages/bird'
    get 'pages/dog'
    get 'pages/cat'
    get 'pages/rodent'
    get 'pages/reptile'
    get 'pages/rabbit'

    mount Commontator::Engine => '/commontator'

    get '*path', to: redirect('/pages/error')
end
