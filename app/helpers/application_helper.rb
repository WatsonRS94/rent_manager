module ApplicationHelper
  def error_message_for(resource)
    render 'layouts/partials/error_message_for', resource: resource
  end
end
