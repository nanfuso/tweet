class UsersController < ApplicationController

    def new
    end

    def create
        user = User.create(
                            email: params[:email],
                            user_name: params[:user_name],
                            password: params[:password],
                            password_confirmation: params[:password_confirmation]
                        )
        if user.save
            session[:user_id] = user.id
            flash[:success] = "Congrats on your new account!"
            redirect_to '/'
        else
            flash[:warning] = "Something went wrong. Try again"
            redirect_to '/signup'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.assign_attributes(
                                email: params[:email],
                                user_name: params[:user_name],
                                password: params[:password],
                                password_confirmation: params[:password_confirmation]
                                )
        if @user.save
            flash[:success] = "Username updated"
            redirect_to '/'
        else
            render 'edit.html.erb'
        end
    end
end