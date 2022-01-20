class PostsController < ApplicationController
  before_action :set_post, only: %i[show]

  # GET /posts or /posts.json
  def index
    @posts = if user_signed_in?
               Post.all
             else
               Post.published
             end
  end

  # GET /posts/1 or /posts/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = if user_signed_in? && params[:id].present?
              Post.find(params[:id])
            else
              Post.published.find_by_permalink(params[:permalink])
            end
  end
end
