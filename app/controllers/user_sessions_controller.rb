 class UserSessionsController < ApplicationController
	
   

   def new
     @user_session = UserSession.new(session)
   end
 
   def create
     @user_session = UserSession.new(session, params[:user_session])
     if @user_session.authenticate!
       # Não esqueça de adicionar a chave no i18n!
       redirect_to root_path, notice: "Login efetuado com sucesso!"
     else
     	render :new
     end	  
   end


 
   def destroy
     user_session.destroy
     redirect_to root_path, notice: 'Login Finalizado com sucesso!'
   end
 end