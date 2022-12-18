Rails.application.routes.draw do
	root 'board#index'
	
	get '/board', to: 'board#index'	# 주소창 뒤에 /board라고 넣었을 때 
									# 라우터에서 get 방식으로 /board라고 들어왔을 때,
									# board라는 컨트롤러에 index라는 뷰랑 연결
	post '/create', to: 'board#create'	# 생성된 db는 웹 실행한 뒤 뒤에 /rails/db 붙여보면 확인가능
	get '/edit', to: 'board#edit'
	post '/update', to: 'board#update'
	get '/delete', to: 'board#delete'
 

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end