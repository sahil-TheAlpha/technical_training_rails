class UsersController < ApplicationController
    def create
        @user = User.new
        binding.pry
    end
end