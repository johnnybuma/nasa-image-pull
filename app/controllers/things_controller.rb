class ThingsController < ApplicationController




  def new
    @thing = Thing.new

  end

  def create
    @thing = Thing.new(thing_params)
  end

  def save
    @date = params[:date]
    @location = params[:location]

    key= ENV["NASA_KEY"]


    call = HTTParty.get("https://api.nasa.gov/planetary/apod?concept_tags=True&date=#{@date}&api_key=#{key}")

    @url = call["url"]

  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @thing = Thing.new(thing_params)

    @date = @thing.date

    @newdate = @date.map{|k,v| "#{v}"}.join('-')







    key= ENV["NASA_KEY"]


    call = HTTParty.get("https://api.nasa.gov/planetary/apod?concept_tags=True&date=#{@newdate}&api_key=#{key}")

    @url = call["url"]
  end

  def pull_data
    key= ENV["NASA_KEY"]


    call = HTTParty.get("https://api.nasa.gov/planetary/apod?concept_tags=True&date=2013-05-01&api_key=#{key}")

    @url = call["url"]

    #call = HTTParty.get("https://en.wikipedia.org/w/api.php?action=query&titles=Main%20Page&prop=revisions&rvprop=content&format=json")

    #@response = call["query"]["pages"]["15580374"]["pageid"]



    #response =
    #    HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
    #puts response[0]["number"]
    #@response = response[0]["number"]
  end

  def thing_params
    params.require(:thing).permit(:date, :location)
  end

end
