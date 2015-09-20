class Member < ActiveRecord::Base
	validates :name, 
	presence: { message: "Please Enter Name" },
	length: { minimum: 2, message: "Short = 2moji ijou irete" }
end
