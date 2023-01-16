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
        Employee.destroy
        head :no_content
      end
      private
    
      def find_Employee
        Employee.find_by(id: params[:id])
      end
    
      def employee_params
        params.permit(:name, :location, :joining, :job_title)
      end
end
