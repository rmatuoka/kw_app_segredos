class ApplicationController < ActionController::Base
  #protect_from_forgery
  
  before_filter :parse_facebook_cookies
  def parse_facebook_cookies
   logger.info "OAuth FB"
   
   @facebook_cookies = Koala::Facebook::OAuth.new.get_user_info_from_cookies(cookies)
   
   if @facebook_cookies
     logger.info "Leu"
   else
     logger.info "Cookies vazio"
   end
   
  logger.info "1 " + @facebook_cookies.to_s 
  end
end
