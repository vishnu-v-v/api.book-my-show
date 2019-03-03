# frozen_string_literal: true

class ShowsController < ApplicationController
  def index
    render json: ShowSerializer.new(Show.all).serialized_json
  end

  # GET /shows/:id
  def show
    show = Show.find(params[:id])
    render json: ShowSerializer.new(show, include: [:seats]).serialized_json
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end
end
