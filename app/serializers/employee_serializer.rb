class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :joining_date, :job_title
  
end
