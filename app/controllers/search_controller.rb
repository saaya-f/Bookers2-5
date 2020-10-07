class SearchController < ApplicationController
  before_action :authenticate_user!

  def search
    word = params[:keyword]
    @range = params[:range]
    search = params[:search]
    if @range == '1'
      @user = User.search(search,word)
    else
      @book = Book.search(search,word)
    end
  end
end