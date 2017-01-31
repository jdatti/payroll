class EmployeesController < ApplicationController

	def index
    if params[:search]
      @employees = Employee.search(params[:search])
    else
      @employees = Employee.all
    end
	end

	def new
		@employee = Employee.new
    @employee.is_admin = false
	end

  def add_admin
    @employee = Employee.new
    @employee.is_admin = true
  end
  
  def admin_list
    @employees = Employee.where(:is_admin => 1)
    render 'index'
  end

	def show
    @employee = Employee.find(params[:id])
	end

	def employee_signup
		@employee = Employee.new(employee_params)
    if @employee.save
     	redirect_to employees_path
    else
     	render 'new'
    end
  end
	
  def edit
    @employee = Employee.find(params[:id])
  end

	def create
		@employee = Employee.new(employee_params)
    if @employee.save
      render 'index'
    else
     	render 'new'
    end
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render 'edit'
    end

  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  def error_show
  end

  private
    def employee_params
  	  params.require(:employee).permit(:emp_id, :salutation, :first_name, :last_name, :email, :password, :is_admin, :cell_no, :pan_no, :designation, :UAN_no, :Bank_Name, :Bank_account, :PF_Acc_no, :Gross_CTC, :Dateofjoining)
    end

end
