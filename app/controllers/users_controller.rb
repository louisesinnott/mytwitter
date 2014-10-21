<<<<<<< HEAD
class UsersController < ApplicationController
      def show
        @user = User.find(params[:id])
      end

      def new
        @user = User.new
      end

      def create
=======
def create
>>>>>>> ed27b70c447f10b7d81f9e5919292b01c205089c
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
<<<<<<< HEAD
        	sign_in @user       #  NEW LINE
      flash[:success] = "Welcome to the Sample App!"    # NEW LINE
      redirect_to @user   # NEW LINE
        else
            render 'new'     # NEW LINE    
        end
      end
    end
=======
        	flash[:success] = "Welcome to the Twitter App!" 
           redirect_to @user
        else
            render 'new'   
        end
      end
>>>>>>> ed27b70c447f10b7d81f9e5919292b01c205089c
