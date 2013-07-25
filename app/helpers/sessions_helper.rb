module SessionsHelper

  def signed_in?
    return session[:remember_token] && User.find(session[:remember_token])
  end

  def current_user
    return User.find(session[:remember_token])
  end
end
