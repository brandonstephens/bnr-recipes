class Admin::WhitelistsController < ApplicationController

  def index
    @whitelist = Whitelist.all
  end

  def new
    @whitelist = Whitelist.new
  end

  def create
    @whitelist = Whitelist.new(whitelist_params)

    if @whitelist.save
      redirect_to admin_whitelists_path
    else
      render :new
    end
  end

  def destroy
    @whitelist = Whitelist.find(params[:id])
    @whitelist.destroy
    redirect_to admin_whitelists_path
  end
  
  private

  def whitelist_params
    params.require(:whitelist).permit(:ip)
  end

end
