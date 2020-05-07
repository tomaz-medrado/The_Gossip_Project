class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    Comment.create(texto:params["comment"].values.join, gossip_id:params["gossip_id"], name: User.find_by(id: session[:user_id]).first_name).inspect
    redirect_to gossip_path(params[:gossip_id])
  end
  
  private
  def comment_params
    params.require(:comment).permit(:texto, :gossip_id)
  end

end
