class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett
    tekst = tekst.new(text_params)

    if @tekst.save
      redirect "/siste"
    else
      render '/homepage'
    end
  end
  end

  private def text_params
      params.require(:tekst).permit(:content)
    end

  def siste
    @tekst = Tekst.find(params[:id])
    @message = "Siste page av appen"
  end