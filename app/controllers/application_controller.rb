class ApplicationController < ActionController::Base
  def index
    render template: 'layouts/statistics'
  end
end
