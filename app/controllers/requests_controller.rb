class RequestsController < ApplicationController
    # skip_before_action :authorize_admin
    # skip_before_action :authorize_manager, except: [:update]
  
    # def index
    #   requests = Request.where(user_id: session[:user_id]).order("created_at DESC")
    #   render json: product, status: :ok
    # end
  
    def create
      new_request = Request.create!(request_params)
      render json: new_request, status: :created
    end
  
    def show
      request = find_request
      render json: request, status: :ok
    end

    def index
      render json: Request.all, status: :ok
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
