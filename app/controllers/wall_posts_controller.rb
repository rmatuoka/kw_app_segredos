class WallPostsController < ApplicationController
  layout "fancybox"
  
  def publish
     graph = Koala::Facebook::API.new(@facebook_cookies["access_token"])
     graph.put_wall_post("Os Segredos de Adriane Galisteu", {:name => params[:title], :link => "http://apps.facebook.com/segredos_de_adriane"})
  end
end
