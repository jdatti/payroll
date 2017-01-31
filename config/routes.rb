Rails.application.routes.draw do
  devise_for :employees
  resources :employees do
  	collection do
  		post :employee_signup
  		get :admin_list
      get :error_show
  	end
  	member do
  		get :add_admin

  	end
    
  end
  
  resources :payslips do
    member do
      get 'download_pdf'
      get 'sendemail'
    end
  end
   
	root to: "employees#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
