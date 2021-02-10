# class Blog::Posts < Grape::API
#   namespace :posts do
#     get do
#       Post.all
#     end
#     get ':id' do
#       Post.find(params[:id])
#     end
#     post 'update' do
#       post = Post.find(params[:id])
#       post.update(params)
#     end
#     post 'new' do
#       Post.create!(params)
#     end
#     delete ':id' do
#       Post.destroy(params[:id])
#     end
#   end
# end
