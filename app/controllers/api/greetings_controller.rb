class Api::GreetingsController < ApplicationController
  def index
    randgreeting = Greeting.order(Arel.sql('RANDOM()')).first

    render json: { greetings: [
      {
        message: randgreeting.message
      }
    ] }.to_json
  end
end
