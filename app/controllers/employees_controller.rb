class EmployeesController < ApplicationController
    def create
        new_employee = Employee.create!(employee_params)
        render json: new_employee, status: :created
      end
    
      def show
        employee =  Employee.find(params[:id])
        render json: employee, include: [:user]
      end
    
      def index
       render json: Employee.all, status: :ok
      end
    
    
      def destroy 
        employee = find_Employee(params[:id])
        employee.destroy
        head :no_content
      end

      private
    
      def find_Employee(id)
        Employee.find_by(id: id)
      end
    
      def employee_params
        params.require(:employee).permit(:name, :location, :joining_date, :job_title)
      end
end
