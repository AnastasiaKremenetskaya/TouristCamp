class ApplicationController < ActionController::Base
  def index
    @data = Camp.all.size
    render template: 'layouts/statistics'
  end
end
