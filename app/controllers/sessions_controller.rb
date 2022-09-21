class SessionsController < ApplicationController

    def index
        session[:page_views] ||= 0
        session[:page_views] += 1
        render json: { session: session, cookies: cookies.to_hash }
      end
end
