class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def index
      	@users = User.all
    end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@users = User.all
	    respond_to do |format|
	      if @user.update(user_params)
	        format.js 
	        format.html { redirect_to @user, notice: 'User was successfully updated.' }
	        format.json { render :show, status: :ok, location: @user }
	      else
	        format.html { render :edit }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
	end

    private
	    # Only allow a list of trusted parameters through.
	    def user_params
	      params.require(:user).permit(:email, :firstName, :lastName, :pilot_role, :ops_role, :maint_role, :team_blue_role, :flight_support_role, :admin_role)
	    end
end
