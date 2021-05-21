class DashboardsController < ApplicationController
  def index
    @props = current_user.props
    @reservations = current_user.reservations.pending
  end
end
