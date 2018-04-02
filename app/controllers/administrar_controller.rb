class AdministrarController < ApplicationController
  def permisos
  @usuarios = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_back(fallback_location: root_path,notice: "User deleted.")
    end
  end
  #convierte al usuario en administrador
  def ascender
  	usuario = User.find(params[:usuario_id].to_i)
  	#puts(params[:usuario_id].to_i)
  	usuario.update_attribute(:permission, 1)
  	redirect_back(fallback_location: root_path)
  end
  #convierte al usuario en usuario comun
  def descender
  	usuario = User.find(params[:usuario_id])
  	usuario.update_attribute(:permission, 0)
  	redirect_back(fallback_location: root_path)
  end

end
