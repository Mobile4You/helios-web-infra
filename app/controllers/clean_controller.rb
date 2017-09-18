class CleanController < ApplicationController

  VERSION_TROTTLE = 'VersionThrottle'

  def index
  end

  def seek_apps
      @apps = StoreConnector.new
                            .get_terminal_apps(params[:merchant_id], params[:number])
      if @apps.empty?
        flash[:error] = 'Terminal não encontrado!'
        redirect_to clean_index_path
      else
        render :seek_apps
      end
  end

  def clean_cache_memory
    terminal_uuid = StoreConnector.new
                            .get_terminal_uuid(params[:merchant_id], params[:number])
    @apps = StoreConnector.new
                            .get_terminal_apps(params[:merchant_id], params[:number])
    @redis = RedisConnector.new

    @apps.each do |version|
      @redis.expire("#{VERSION_TROTTLE}|#{terminal_uuid}|#{version.uuid}", 0)
    end
      render :result_clean_cache
  end
end
