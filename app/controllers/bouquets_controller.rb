class BouquetsController < ApplicationController
    def index
    end

    def new
        @bouquet = Bouquet.new
    end

    def show
        @bouquet = Bouquet.find_by(id: params[:id])
    end

    def create
        bouquet = Bouquet.new(bouquet_params)
        if bouquet.save
            flash[:notice] = "診断が完了しました"
            redirect_to bouquet_path(bouquet.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def bouquet_params
        params.require(:bouquet).permit(:question1, :question2, :question3, :question4)
    end
end
