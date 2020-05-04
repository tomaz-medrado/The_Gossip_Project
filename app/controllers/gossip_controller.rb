class GossipController < ApplicationController
  
  def show
    @gossip = Gossip.find(params[:id])
    puts "This is my gossip`s title: #{@gossip.title}"
  end

end
