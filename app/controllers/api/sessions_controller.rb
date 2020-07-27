class Api::SessionsController < ApplicationController
    # before_action :require_logged_in, only: [:destroy]

    def create
        @user = User.find_by_credentials(
            params[:user][:username],
            params[:user][:password]
        )

        if @user
            login!(@user)
            render json: @user
        else
            flash.now[:errors] = ['Invalid username or password.']
            # render json: { error: "invalid credentials" }
            render json: { errors: @user.errors }
        end
    end

    def destroy
        @user = current_user
        if @user
            logout!
            render json: @user
        else
            render json: {
                    error: "no user logged in",
                    status: 404
                }, status: 404
        end
    end
end
