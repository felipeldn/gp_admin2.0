class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :gender, :telephone, :address, :hosp_number, :nhs_number
end
