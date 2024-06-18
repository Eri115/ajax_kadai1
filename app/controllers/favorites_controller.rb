class FavoritesController < ApplicationController


  def create
    @favorite =current_user.favorites.build(blog_id: params[:blog_id])
    @favorite.save
      respond_to do |format|
      format.js { render :content }
      end
  end
  #def create
    #current_user.favorites.create(blog_id: params[:blog_id])
  #end

  def destroy
    @favorite = current_user.favorites.find_by(id: params[:id])
    @favorite.destroy
      respond_to do |format|
      format.js { render :content }
      end
    end
end

