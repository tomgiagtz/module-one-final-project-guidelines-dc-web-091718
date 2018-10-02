class Cost < ActiveRecord::Base
	#has_many :users
	def initialize(zip_code:, avg_cost:)
		self.zip_code = zip_code
		@avg_cost = avg_cost
	end

	def zip_code=(zip)
		if !/^\d{5}$/.match(zip)
			raise ArgumentError.new("zip must be 5 digits")
		else
			@zip = zip
		end
	end
end
