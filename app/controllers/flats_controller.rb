class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]
  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
  end

  def show
    @flat = @flats.find { |flat| params[:id].to_i == flat["id"] }
  end

  private

  def set_flats
    raw_json = URI.open(URL).read
    @flats = JSON.parse(raw_json)
  end
end
