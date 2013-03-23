class Api::V1::PostsController < ApplicationController
  respond_to :json
  doorkeeper_for :create

  def index
    @community = Community.find(params[:community_id])
    @posts = @community.posts.new_to_old
    respond_with @posts
  end

  def create
    user = current_resource_owner
    post = Post.new(post_params)
    community = Community.find(params[:community_id])
    post.user = user
    post.community = community
    post.save!

    respond_with post
  end

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def post_params
    params.require(:post).permit(:text)
  end
end
