class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds
    end

    def show
        bird = Bird.all.find_by_id(params[:id])
        if bird
        render json: bird
        else
            render json: {"message" => "Oops"}, status: not_found
        end
    end

end
