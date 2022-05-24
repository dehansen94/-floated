class FloatdevicesController < ApplicationController
  before_action :set_floatdevice, only: [:show]

  def index
    @floatdevices = Floatdevice.all
  end

  def show
  end

  private

  def set_floatdevice
    @floatdevice = Floatdevice.find(params[:id])
  end
end
