class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def create
		safe_comment_params = params.require(:comment).permit(:comment_body, :story_id)
		@comment = Comment.new safe_comment_params
		@comment.user_id = current_user.id
		if @comment.save
      		redirect_to story_path(@comment.story_id)
    	else
      		redirect_to story_path(@comment.story_id)
    end
	end
end
