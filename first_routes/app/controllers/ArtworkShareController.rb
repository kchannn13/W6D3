class ArtworksController < ApplicationController
    def index
        # render plain: "I'm in the index action!"
        render json: ArtworkShare.all
      end
    
      def create
    
        artwork_shares = ArtworkShare.new(artwork_share_params)
        if artwork_shares.save
          render json: artwork_shares
        else
          render json: artwork_shares.errors.full_messages, status: :unprocessable_entity
        end
      end
    
      # def show
      #   render json: ArtworkShare.find(params[:id])
      # end
    
      # def update
      #   artwork_shares = ArtworkShare.find(params[:id])
      #   if artwork_shares.update(artwork_share_params)
      #     render json: artwork_shares
      #   else
      #     render json: artwork_shares.errors.full_messages, status: :unprocessable_entity
      #   end
      # end
      
      def destroy
        artwork_shares = ArtworkShare.find(params[:id])
        artwork_shares.destroy
        render json: artwork_shares
      end
    
      private
    
      def artwork_share_params
        params.require(:artwork_shares).permit(:viewer_id, :artwork_id)
      end
    end