class StoreController < ApplicationController
    def index
        #require 'pry'; binding.pry
        @cart = current_user.current_cart if current_user != nil && current_user.current_cart != nil
        @categories = Category.all
        @items = Item.available_items
    end 
    
    
end

=begin
px aux | grep rails

kill -9 <pid-number>
=end