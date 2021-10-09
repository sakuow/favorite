class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.book_id = params[:book_id]
    favorite.save
    redirect_back(fallback_location: root_path)
    # favorite.create(user_id: current_user.id, book_id: params[:id])
    # redirect_to book_path
  end

  def destroy
  end
end
