class ApplicationController < ActionController::Base
  def index
    @data = 1#TouristCamp.all.count
    render template: 'layouts/statistics'
  end
end
