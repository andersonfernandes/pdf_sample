class PdfController < ApplicationController
  def index
  end

  def generate
    generatePDF(pdf_report_url) do |path|
      send_file(path, filename: 'output.pdf', type: 'application/pdf', disposition: 'attachment')
    end
  end

  def report
  end

  private

  def generatePDF(url)
    tmp = Tempfile.new("tmp/pdf-chrome-puppeteer-#{Time.now.to_i}")
    system("yarn createPDF #{Shellwords.escape(url)} #{Shellwords.escape(tmp.path)}")

    yield(tmp.path) if block_given?
  end
end
