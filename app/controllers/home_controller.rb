class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett
    @tekst = Text.new(params[:id])
      if @tekst.save
        redirect_to "/siste" #(@tekst)
      else 
        redirect_to "/homepage"
      end
  end 

  def siste
    @tekst = Text.latest
    @message = "Siste page av appen"
  end

  private def tekst_params
    params.require(:Text).permit(:body)
  end

end