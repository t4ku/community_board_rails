class CommunitiesController < ApplicationController
  before_filter :authenticate_user!, only: %w[new create]
  before_filter :load_community, only: %w[show]
  respond_to :html

  def index
    @communities = Community.all
    respond_with @communities

  end

  def new
    @community = current_user.owned_communities.new
  end

  def create
    @community = current_user.owned_communities.new(communitity_params)
    @community.save
    respond_with @community
  end

  private

  def load_community
    @community = Community.find(params[:id])
  end

  def communitity_params
    params.require(:community).permit(:name)
  end
end
