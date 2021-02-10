module Blog
  module V1
    class Posts < Grape::API
version 'v1', using: :path
format :json
prefix :api
namespace :posts do
  get do
    Post.all
  end
  get ':id' do
    Post.find(params[:id])
  end
  post 'update' do
    post = Post.find(params[:id])
    post.update(params)
  end
  post 'new' do
    Post.create!(params)
  end
  delete ':id' do
    Post.destroy(params[:id])
    end
    end
    end
  end
end
