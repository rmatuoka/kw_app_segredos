class WallPostsController < ApplicationController
  layout "fancybox"
  
  def publish
     graph = Koala::Facebook::API.new(@facebook_cookies["access_token"])
     graph.put_wall_post(params[:hint], {:name => "Os Segredos de Adriane Galisteu", :link => "http://apps.facebook.com/segredos_de_adriane"})
  end
end
