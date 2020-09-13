class UsersController < ApplicationController
    def index
        user = User.new
        @users = user.search
    end

    private

    def params_user_search
        params.permit(:search_name, :search_age)

    end
end