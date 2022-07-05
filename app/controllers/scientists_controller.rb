class ScientistsController < ApplicationController


    def index 
        scientists= Scientist.all 
        render json: scientists
    end

    def show 
        scientist= Scientist.find_by!(id: params[:id])
        render json: scientist, serializer: ScientistWithPlanetsSerializer
    end

    def create 
        scientist= Scientist.create!(scientist_params)
        render json: scientist, status: :created
    end

    def update 
        scientist= Scientist.find_by!(id: params[:id])
        scientist.update!(scientist_params)
        render json: scientist, status: :accepted
    end

    def destroy 
        scientist= Scientist.find_by!(id: params[:id])
        scientist.destroy 
        head :no_content
    end

    private 

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end



end
