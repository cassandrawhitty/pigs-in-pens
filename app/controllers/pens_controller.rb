class PensController < ApplicationController

    def index
      @pens = Pen.all

      render json: @pens, include: [:pigs]
    end

end
