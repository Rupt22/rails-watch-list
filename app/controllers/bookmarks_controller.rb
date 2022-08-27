class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.create(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(params[:list_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end



  def set_list
    @list = List.find(params[:list_id])
  end
end
