class ApplicationController < ActionController::Base
    def current_user
        return unless session[:current_user]
        @current_user ||= Collaborator.find(session[:current_user])
    end
end
