class SessionsController <ApplicationController

  before_filter :find_user, except: [:new, :create, :index]
   before_filter :authorize_user, only: [:show, :update, :destroy, :edit]
   
   
   def find_user
      @user = User.find_by_id(params[:id])
    end

    def authorize_user
      if @user != current_user
        redirect_to users_url, notice: "Nice try."
      end
    end
    
    
    def new
    end

    def create
      u = User.find_by_email(params[:email])

      if u.present? && u.authenticate(params[:password])
        session[:user_id] = u.id
        redirect_to u, notice: 'Signed in successfully.'
      else
        redirect_to new_session_url, notice: "Try again."
      end
    end

    def destroy
      reset_session
      redirect_to events_url, notice: 'Signed out successfully.'
    end
  end