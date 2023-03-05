class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett
    @tekst = Text.new(params[:id])
      if true
        redirect_to videre(text: @tekst)
      else 
        redirect_to "/neste"
      end
  end 

  def siste
    @tekst = params[:text]
    @message = "Siste page av appen"
  end

  private def tekst_params
    params.require(:Text).permit(:body)
  end

end