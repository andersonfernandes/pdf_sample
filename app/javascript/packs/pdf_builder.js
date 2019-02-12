import * as jsPDF from 'jspdf'

export function build_pdf() {
  var doc = new jsPDF()

  doc.text('Hello world!', 10, 10)
  doc.save('a4.pdf')
}
