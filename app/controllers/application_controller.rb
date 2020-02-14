class ApplicationController < ActionController::Base
    before_action :check_user

    def check_user

    end

    def current_user
        return unless session[:current_user]
        @current_user ||= Collaborator.find(session[:current_user])
    end
end
