def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
        	flash[:success] = "Welcome to the Twitter App!" 
           redirect_to @user
        else
            render 'new'   
        end
      end