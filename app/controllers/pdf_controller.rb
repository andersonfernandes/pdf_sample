class PdfController < ApplicationController
  def index
  end

  def generate
    generatePDF
  end

  private

  def generatePDF
    system("yarn createPDF http://localhost:3000 output.pdf")
  end
end
