class Api::NamesController < ApplicationController
  def name_in_caps
    @name = params["name"].upcase
    render 'name_in_caps.json.jbuilder'

  end

  def a_game
    @name = params["name"]
    if @name.downcase.start_with?("a")
      @message = "Hey, your name starts with the first letter of the alphabet"
    end
    render 'a_name.json.jbuilder'
  end

  def string_guessing
    @guess = params["guess"].to_i
    answer = 42

    if @guess > answer
      @hint = "are you high?"
    elsif @guess < answer
      @hint = "too low and slow"
    else
      @hint = "ding ding ding!!!"
    end
    render 'string_guessing.json.jbuilder'
  end
  def url_segment
    answer = 42
    @guess = params["guess"].to_i

    if @guess > answer
      @hint = "are you high?"
    elsif @guess < answer
      @hint = "too low and slow"
    else
      @hint = "ding ding ding!!!"
    end
    render 'url_segment.json.jbuilder'
  end

end
