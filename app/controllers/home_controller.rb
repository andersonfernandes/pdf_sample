class HomeController < ApplicationController
  def index
  end

  def pdf
    @pdf_content = render_to_string('home/pdf_components/sample')

    respond_to do |format|
      format.js
    end
  end
end
