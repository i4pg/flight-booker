class FlightsController < ApplicationController
  def index
    @search = if params.nil?
                Flight.all
              elsif params[:date] == ''
                Flight.where(arrival_airport_id: params[:arrival_airport_id],
                             departure_airport_id: params[:departure_airport_id])
              else
                Flight.where(arrival_airport_id: params[:arrival_airport_id],
                             departure_airport_id: params[:departure_airport_id], date: params[:date])
              end
  end
end
