Rails.application.routes.draw do
	#membersに関するURLを自動で生成してくれる
	#やったら必ず　rake routes
	root 'members#index'

	patch 'members/:id', :controller=>'members', :action=>'update'
	delete 'members/:id', :controller=>'members', :action=>'destroy'

	get 'members/addGood/:id', :controller=>'members', :action=>'addGood'
	get 'members/addNomal/:id', :controller=>'members', :action=>'addNomal'
	get 'members/addBad/:id', :controller=>'members', :action=>'addBad'

	get 'members/delGood/:id', :controller=>'members', :action=>'delGood'
	get 'members/delNomal/:id', :controller=>'members', :action=>'delNomal'
	get 'members/delBad/:id', :controller=>'members', :action=>'delBad'

	get 'admin' => 'members#admin'
	
	resources :members
end
