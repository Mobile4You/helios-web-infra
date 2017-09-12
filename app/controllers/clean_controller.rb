class CleanController < ApplicationController

  def index
  end

  def seek_apps
      @apps = StoreConnector.new
                            .get_terminal_apps(params[:merchant_id], params[:number])

      if @apps.empty? 
        flash[:error] = 'Terminal não encontrado!'
        redirect_to root_path

      else
        render :seek_apps
      end
    end

end
