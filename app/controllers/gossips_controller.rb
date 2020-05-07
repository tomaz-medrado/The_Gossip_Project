class GossipsController < ApplicationController

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    @gossip = Gossip.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
    @gossip = Gossip.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    @gossip = Gossip.new(title: params["gossip_title"], content: params["gossip_content"], user_id:6)
    @gossip.user = User.find_by(id: session[:user_id])
    puts params
    
    if @gossip.save
      redirect_to '/'
    else
      render '/gossips/new', info: "Invalid Title and/or Content Format!"
    end
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  end

  def edit
    @gossip = Gossip.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)

    redirect_to gossip_path
    
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.comentarios.count.times do
      @gossip.comentarios.first.destroy
    end
    @gossip.destroy

    redirect_to '/'
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end

  private
  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end


end
