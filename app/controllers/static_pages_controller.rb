class StaticPagesController < ApplicationController
  

  def help
  end

  def about
  end

  def home
          if signed_in?
              @micropost  = current_user.microposts.build
              @feed_items = current_user.feed
          end
       end
end
