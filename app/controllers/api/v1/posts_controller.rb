class Api::V1::PostsController < ApplicationController
  respond_to :json
  doorkeeper_for :create

  def index
    @community = Community.find(params[:community_id])
    @posts = @community.posts.new_to_old
    respond_with @posts
  end

  def create
    params.require(:post).permit(:text)
    post = current_resource_owner.posts.create!(params[:post])
    puts "hoge"
    puts post
    respond_with post
  end

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
