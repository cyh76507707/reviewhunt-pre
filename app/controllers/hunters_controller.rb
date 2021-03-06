class HuntersController < ApplicationController
  def new
    @hunter = Hunter.new
  end

  def create
    @hunter = Hunter.new(hunter_params)

    if @hunter.save
      redirect_to '/', notice: 'Thank you. We’ll contact you soon.'
    else
      render action: 'new'
    end
  end

  private
    def hunter_params
      params.require(:hunter).permit(:email, :name, :country_code, channels_attributes: [ :channel_name, :url, :score ])
    end
end
