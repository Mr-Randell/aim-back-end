class RequestsController < ApplicationController
    def index
      render json: Request.all, status: :ok
     end
  
    def create
      new_request = @current_user.requests.create!(request_params)
      render json: new_request, status: :created
    end
  
    def show
      request = find_request
      render json: request, status: :ok
    end

    
    def destroy
      request = find_request
      request.destroy
      head :no_content
    end
  
    def update
      request = Request.find(params[:id])
      request.update(request_params)
    end
  

    private
    def find_request
      Request.find_by(id: params[:id])
    end
    def requets_params
      params.permit( :asset_id,:quantity, :status, :urgency, :user_id)
    end
end
