class ComentariosController < ApplicationController
	
	def index
		@task = Task.find(params[:task_id])
		@comentarios = @task.comentarios(params[:task_id])		
	end
	
	def create
		@task = Task.find(params[:task_id])
		@comentario = @task.comentarios.create(params[:comentario])
		if @comentario.save
			redirect_to task_path(@task)
		else
			redirect_to task_path(@task)
		end
	end
end