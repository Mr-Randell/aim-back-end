class UsersController < ApplicationController
    #create
    def create
        user = User.create(user_params)
        #finding a user in the database using the username
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else 
            render json: { errors:  user.errors.full_message}
    end

    #show route 
    def show
        current_user = @current_user
        render json: current_user, status: :ok
    end


    private 
    def user_params
        params.permit(:username,:password, :email, :password_confirmation)
    end


end
