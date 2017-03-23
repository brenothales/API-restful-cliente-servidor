Rails.application.routes.draw do

  namespace 'api' do
      namespace 'v1' do
        resources :dogs
        resources :breeds
      end
  end

end
