class FloatdevicesController < ApplicationController

  def index
    @floatdevices = Floatdevice.all
  end
end
