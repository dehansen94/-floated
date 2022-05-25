class FloatdevicesController < ApplicationController
  before_action :set_floatdevice, only: [:show]

  def index
    @floatdevices = Floatdevice.all
  end

  def show
  end

  def new
    @floatdevice = Floatdevice.new
  end

  def create
    @floatdevice = Floatdevice.new(floatdevice_params)
    @floatdevice.user = User.find("1")
    @floatdevice.save
  end

  private

  def set_floatdevice
    @floatdevice = Floatdevice.find(params[:id])
  end

  def floatdevice_params
    params.require(:floatdevice).permit(:name, :price, :category, :size, :description, :special_features, :photo)
  end
end
