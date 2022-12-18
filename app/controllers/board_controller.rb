class BoardController < ApplicationController
  protect_from_forgery unless: -> {request.format.json? }
  def index
	  @posts = Post.all
  end
  def create
	  title1 = params[:title]	# 변수에 파라미터로 날아온 값 잡음
	  content1 = params[:content]
	  Post.create(title: title1, content: content1)	#title에서 받은 변수를 title1이라는 컬럼에 넣어줌
	  redirect_to '/board'
  end
  def edit
	  @post = Post.find(params[:id])
  end
  def update
	  @post = Post.find(params[:id])
	  @post.title = params[:title]
	  @post.content = params[:content]
	  @post.save
	  
	  redirect_to '/board'
  end
  def delete
	  @post = Post.find(params[:id])
	  @post.destroy
	  redirect_to '/board'
  end
end
