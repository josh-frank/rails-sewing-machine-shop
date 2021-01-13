Rails.application.routes.draw do

  # display a list of all machines
  get '/machines', to: 'machines#index', as: 'machines'

  # go to a form to create a new machine
  get '/machines/new', to: 'machines#new', as: 'new_machine'
  post '/machines', to: 'machines#create'

  # go to a form to edit a machine
  get '/machines/:id/edit', to: 'machines#edit', as: 'edit_machine'
  patch '/machines/:id', to: 'machines#update'

  # delete a particular machine
  get '/machines/:id/destroy', to: 'machines#destroy', as: 'delete_machine'

  # display a particular machine
  get '/machines/:id', to: 'machines#show', as: 'machine'

  # get '', to: '', as: ''

end
