class ComentariosController < ApplicationController
  def new
    @comentario = Comentario.new
  end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    Comentario.create(texto:params["comentario"].values.join, gossip_id:params["gossip_id"], name: User.find_by(id: session[:user_id]).first_name).inspect
    redirect_to gossip_path(params[:gossip_id])
  end

  private
  def comentario_params
    params.require(:comentario).permit(:texto, :gossip_id)
  end

end
