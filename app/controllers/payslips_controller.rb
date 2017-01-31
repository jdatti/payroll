class PayslipsController < ApplicationController
    
  def new
    @emp_id = params[:emp_id]
    @emp = params[:emp]
    @payslip = Payslip.new        
    @payslip = (Payslip.where(:emp_id => params[:emp_id]).last || Payslip.new())
    respond_to do |format|
      format.js
    end
  end

  def create
    @payslip = Payslip.create(payslip_params)
    if @payslip.save
      redirect_to payslip_path(@payslip.id)
    else
      render "new"
    end
  end

  def show
    @payslip = Payslip.find(params[:id])
  end

  def download_pdf
    @payslip = Payslip.find(params[:id])
    html = render_to_string(:action => '_show.html.erb', :layout => false)
    pdf = PDFKit.new(html)
    pdf.stylesheets << '../payslips/app/assets/stylesheets/payslips.scss'
    send_data(pdf.to_pdf)
  end

  def sendemail
    pdf = generation
    UserMailer.send_report(@payslip, pdf).deliver
    redirect_to payslip_path(@payslip)
    flash[:notice] = 'Email has been sent!'
  end

  private

    def payslip_params
      params.require(:payslip).permit(:emp_id, :gross_CTC, :basic, :HRA, :medical, :conveyance, :PF, :special_allowance, :arrears, :Prof_Tax, :Total_PF_deductions, :Income_Tax, :vac_sick_overdue,:total_earnings,:total_deductions,:net_pay,:vacation,:sick,:Days_Paid, :employee_id )
    end
    
    def generation
      @payslip = Payslip.find(params[:id])
      html = render_to_string(:action => '_show.html.erb', :layout => false)
      pdf = PDFKit.new(html)
      pdf.stylesheets << '../payslips/app/assets/stylesheets/payslips.scss'
    end
end
