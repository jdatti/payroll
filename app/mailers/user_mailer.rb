class UserMailer < ApplicationMailer
	default :from => "eifion@asciicasts.com"

  def send_report(employee, pdf)
    @payslip = employee
    html = render_to_string(:template => 'payslips/_show.html.erb') 
    a = PDFKit.new(html)
    a.stylesheets << '../payslips/app/assets/stylesheets/payslips.scss'
    attachments['MyPDF.pdf'] = a.to_pdf
    
    mail(:to => @payslip.employee.email, :subject => "Attached pdf")
  end
  
end
