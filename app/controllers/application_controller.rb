class ApplicationController < ActionController::Base
  #protect_from_forgery
  
  before_filter :parse_facebook_cookies
  def parse_facebook_cookies
   puts "OAuth FB"
   
   @facebook_cookies = Koala::Facebook::OAuth.new.get_user_info_from_cookies(cookies)
   
   if @facebook_cookies
     puts "Leu"
   else
    puts "Cookies vazio"
   end
   
  puts "1 " + @facebook_cookies.to_s 
  end
end
