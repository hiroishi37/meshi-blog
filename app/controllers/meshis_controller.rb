class MeshisController < ApplicationController
  
  def new
    @meshi = Meshi.new
    @meshi.users << current_user
  end

  def create
    @meshi = Meshi.new(group_params)
    if @meshi.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def edit
  end

  def update  
  end

  private
  def meshi_params
    params.require(:group).permit(:name, user_ids: [] )
  end
end