module ApplicationHelper
  
  def instance_status(status)
    status_class = "btn-danger"
    status_class = "btn-success" if status.downcase == 'up'
    "<button type='button' class='btn #{status_class} btn-xs'>#{status.capitalize}</button>".html_safe
  end

end
