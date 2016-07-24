class FaucetsController < ApplicationController
  def index
  	result = {
  		:wut => "WAI"
  	}

  	render :json => result
  end
end
