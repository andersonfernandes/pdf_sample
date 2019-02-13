import * as jsPDF from 'jspdf'

export function build_pdf(content) {
  var doc = new jsPDF()

  doc.fromHTML(content, 10, 10)
  doc.save('sample.pdf')
}
