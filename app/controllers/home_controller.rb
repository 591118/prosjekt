class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett()
    @tekst = params[:tekst]
    render 'siste'
  end 

  def siste ()
    @message = "Siste page av appen"
    @tekst = "input"
  end

  private def text_params
    params.require(:Text).permit(:body)
  end

end