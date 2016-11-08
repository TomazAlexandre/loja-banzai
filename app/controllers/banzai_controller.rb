class BanzaiController < ApplicationController
  def add
    id = params[:id]
      if session[:banzai] then
         banzai = session[:banzai]
      else
        session[:banzai] ={}
        banzai = session[:banzai]
      end
      if banzai[id] then
         banzai[id] = banzai[id] + 1
      else
         banzai[id] = 1
      end
    redirect_to :action => :index
  end
  
def clearCart
  session[:banzai] = nil
  redirect_to :action => :index
end
    
def index
  if session[:banzai] then
     @banzai = session[:banzai]
  else
    @banzai = {}
  end
end

end
