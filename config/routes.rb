Rails.application.routes.draw do
	#membersに関するURLを自動で生成してくれる
	#やったら必ず　rake routes
  resources :members
  
end
