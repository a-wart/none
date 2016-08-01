class FaucetsController < ApplicationController
  before_action :faucets

  def faucets
    @faucets = Faucet.all
  end

  def index
    # result = {
    #   :wut => "WAI"
    # }

    # render :json => result
  end

  def get
    render :json => @faucets
  end

  def import
    begin
        Faucet.import(params[:file])
        redirect_to root_url, notice: "Faucets imported."
    rescue
        redirect_to root_url, notice: "Invalid CSV file format."
    end
  end

end
