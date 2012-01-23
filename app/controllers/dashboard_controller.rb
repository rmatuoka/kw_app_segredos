class DashboardController < ApplicationController
  
  def index
    #signed_request = params[:signed_request]
    #@oauth = Koala::Facebook::OAuth.new("316274158411188", "afc3887cb1faeadb0d975640d5a00661", "http://localhost:3000")
    #@oauth.parse_signed_request(signed_request)
    
    #@oauth.url_for_oauth_code

    #@oauth.url_for_access_token(code)
    #@token = @oauth.get_access_token(code)
    #@info = @oauth.get_access_token_info(code)
    
    
    
    #@oauth = Koala::Facebook::OAuth.new("316274158411188", "afc3887cb1faeadb0d975640d5a00661")
    #@oauth.get_user_info_from_cookies(cookies).access_token
    #@graph = Koala::Facebook::GraphAPI.new(@oauth)
    
    
    #@graph = Koala::Facebook::GraphAPI.new("AAAEfplDdHbQBAOK26J7p4sZADt2bZCyBHIQXKzk3A3ZBi3K7zlbqqpAMwOrhLPf3SQTANyk6YjAvB36fnx98jpTmckiN4fYCy9jheyZC5VsObYNqQvKr")
    #@graph.put_wall_post("teste")
  
    #graph = Koala::Facebook::API.new(@facebook_cookies["access_token"])
    #@likes = graph.get_connections("me", "likes")
    
    @hint = Hint.first(:order => "RAND()")
    
    #graph.put_wall_post("teste GraphAPI", {:name => "Teste name", :link => "http://apps.facebook.com/segredos_de_adriane"})
    
    #puts "2 " + @facebook_cookies.to_s
  end
  
  def publish_wall()
  end
end
