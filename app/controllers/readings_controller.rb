class ReadingsController < ApplicationController
  def create
  	reading = params[:reading].map(&:to_i)
    hexagram = Hexagram.find_by(line1: reading[0] == 6 || reading[0] == 8 ? :yin : :yang,
                                line2: reading[1] == 6 || reading[1] == 8 ? :yin : :yang,
                                line3: reading[2] == 6 || reading[2] == 8 ? :yin : :yang,
                                line4: reading[3] == 6 || reading[3] == 8 ? :yin : :yang,
                                line5: reading[4] == 6 || reading[4] == 8 ? :yin : :yang,
                                line6: reading[5] == 6 || reading[5] == 8 ? :yin : :yang)
    Reading.new(first_place:reading[0],
    	        second_place:reading[1],
    	        third_place:reading[2],
    	        fourth_place:reading[3],
    	        fifth_place:reading[4],
    	        sixth_place:reading[5],
              hexagram_id:hexagram.id,
    	        user_id:current_user.id,
              question:params[:question],
              timestamp:Time.now).save
    render json: hexagram, include: :lines
  end
  
  def index
    @readings = current_user.readings
  end

end