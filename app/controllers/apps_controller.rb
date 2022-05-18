class AppsController < ApplicationController
	def new
		@app = App.new
	end

	def create
		@app = App.new(app_params)
		if @app.save
			redirect_to root_path, success: "#{@app.name}を追加しました"
		else
			flash.now[:danger] = "アプリの追加に失敗しました"
			render :new
		end
	end

	private

	def app_params
		params.require(:app).permit(:name, :link)
	end
end
