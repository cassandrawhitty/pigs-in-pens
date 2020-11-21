class PigsController < ApplicationController

    def index 
      @pigs = Pig.all

      render json: @pigs, include: [:pen]
    end

    def create
      @pig = Pig.create(name: params[:name], dirty: params[:dirty], friend: params[:friend], age: params[:age], pen_id: params[:pen_id])

      render json: @pig 
      # message: "Hey lil oinker buddy, #{params[:name]}!"
    end

    def update
      @pig = Pig.find(params[:id])
      @pig = Pig.update(name: params[:name], dirty: params[:dirty], friend: params[:friend], age: params[:age], pen_id: params[:pen_id])

      render json: @pig
    end

end
