class CommentsController < ApplicationController

  def create
    @gossip = Gossip.find(params[:id])
    @comment = @gossip.comments.create(params[:comment].permit(:body))
    redirect_to gossip_path(@gossip)
  end

end
