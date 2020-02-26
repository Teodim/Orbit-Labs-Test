class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  # GET /comments
  def index
    @comments = Comment.filter_by_params(params).all
    render json:@comments
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.json { render json: @comment }
      else
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    def comment_params
      params.permit(:text, :user_id, :event_id)
    end
end
