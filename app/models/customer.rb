class Customer < ApplicationRecord
	EMAIL_REGEXP = /\A(?:[a-zA-Z0-9_\+\-]+\.)*[a-zA-Z0-9_\+\-]+@[a-zA-Z0-9\-]+\.(?:[a-zA-Z0-9\-]+\.?)*[a-zA-Z]+\Z/

	validates_presence_of :name, :email, :phone
	validates :email, format: { with: EMAIL_REGEXP }
end
