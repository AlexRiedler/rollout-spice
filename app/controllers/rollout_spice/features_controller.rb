module RolloutSpice
  class FeaturesController < RolloutSpice::ApplicationController
    def index
      @features = RolloutSpice::Feature.all
    end

    def update
      @feature = RolloutSpice::Feature.new(params[:id])

      @feature.percentage = params["percentage"] if params["percentage"]
      @feature.groups     = params["groups"]     if params["groups"]
      @feature.user_ids   = params["users"]      if params["users"]
      render json: {}, status: 200
    end
  end
end
