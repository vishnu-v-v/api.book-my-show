class ShowsController < ApplicationController

  # GET /shows/:id
  def show
    show = Show.find(params[:id])
    render json: ShowSerializer.new(show, include: [:seats]).serialized_json
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end
end
