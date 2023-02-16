class Comment < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        if params[:user_id]
            commenter = User.find(params[:user_id])
            render json: commenter.comments
        else
            render json: Comment.all
        end
      end
    
      def create
        comments = Comment.new(comment_params)
        if comments.save
          render json: comments
        else
          render json: comments.errors.full_messages, status: :unprocessable_entity
        end
      end

      def destroy
        comments = Comment.find(params[:id])
        comments.destroy
        render json: comments
      end
    
      private
    
      def comment_params
        params.require(:comments).permit(:user_id, :artwork_id)
      end
    end