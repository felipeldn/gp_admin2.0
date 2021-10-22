class AuthController < ApplicationController

    skip_before_action :authorized, only: [:sign_in, :validate]

    def sign_in
        
        user = Clinician.find_by(username: user_login_params[:username])

        if user && user.aunthenticate(user_login_params[:password])
            token = encode_token({ user_id: user.id })
            render json: { user: ClinicianSerializer.new(user), jwt: token }, status: :accepted
        else
            render json: { error: 'Invalid login credentials' }, status: :unauthorized
        end

    end

    def validate 
        user = current_user

        if user
            render json: user
        else
            render json: { error: 'Invalid token' }, status: 401
        end
    end

    private

    def user_login_params
        params.require(:clinician).permit(:username, :password)
    end

end