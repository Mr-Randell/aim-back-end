class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessed_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  
    skip_before_action :authorize, only: :create
  
     # Everything pertaining to signup.... Done 
    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else 
        render json: { errors: user.errors.full_message }
      end
    end
  
    #display all users
    def index
      @users = User.all
      render :index
    end

    # This is an Auto -login feature 
    def show
      render json: @current_user
    end
  
    # Update route
    def update
      user = find_user
      user.update!(user_params)
      render json: user, status: :updated
    end
  
    # destroy route
    def destroy
      user = User.find_by(id: params[:id])
      user.destroy
    end
  
  
    private
  
    def find_user
      User.find_by(id: params[:id])
    end
  
    def user_params
      params.permit(:username, :email, :role, :password, :companyname, :phonenumber, :companysize, :industry)
    end
  
    def render_not_found
      render json: { errors: "User Not Found"}
    end
  
    def render_unprocessed_entity(invalid)
      render json: { errors: invalid.record.errors}, status: :unprocessable_entity
    end

   
end
