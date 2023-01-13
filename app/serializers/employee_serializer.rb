class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :employee_id, :employee_name, :date_of_birth, :joining_date, :leaving_date, :password_digest
end
