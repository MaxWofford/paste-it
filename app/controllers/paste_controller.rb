class PasteController < ApplicationController

  def new
    @paste = Paste.create
    redirect_to "/#{@paste.hash}"
  end
  def edit
    @paste = Paste.where(token: params[:token])
  end

end
