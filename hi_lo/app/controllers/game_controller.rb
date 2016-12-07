class GameController < ApplicationController

  def index
    @guess = params[:guess]

    if cookies[:random] == nil
      cookies[:random] = rand(100)
    end

    @secret = cookies[:random].to_i

    if @guess != nil && @guess != ""

      @guess = @guess.to_i

      if @guess > @secret
        @result = "Too High"
      elsif @guess < @secret
        @result = "Too low"
      elsif @guess == @secret
        @result = "You Win!"
      end

    end

  end

end
