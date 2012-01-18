class DashboardController < ApplicationController
  
  def index
    signed_request = params[:signed_request]
    @oauth = Koala::Facebook::OAuth.new("316274158411188", "afc3887cb1faeadb0d975640d5a00661", "http://apps.facebook.com/segredos_de_adriane/")
    @oauth.parse_signed_request(signed_request)
    @oauth.url_for_oauth_code

    @oauth.url_for_access_token(params[:code])
    @token = @oauth.get_access_token(params[:code])
    @info = @oauth.get_access_token_info(params[:code])
    
    
    
    #@oauth = Koala::Facebook::OAuth.new("316274158411188", "afc3887cb1faeadb0d975640d5a00661")
    #@oauth.get_user_info_from_cookies(cookies).access_token
    #@graph = Koala::Facebook::GraphAPI.new(@oauth)
    
    
    #@graph = Koala::Facebook::GraphAPI.new("AAAEfplDdHbQBAOK26J7p4sZADt2bZCyBHIQXKzk3A3ZBi3K7zlbqqpAMwOrhLPf3SQTANyk6YjAvB36fnx98jpTmckiN4fYCy9jheyZC5VsObYNqQvKr")
    #@graph.put_wall_post("teste")
  end
end
