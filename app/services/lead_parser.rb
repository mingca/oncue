class LeadParser
	attr_accessor :content

	def initialize content
		@content = content
	end

	def parse
		data = @content.split("\n")						# split text into lines
			.each_with_object([]) do |item, arr|
				cap = /(.*\S)\s*:\s*(\S.*)/.match(item)
				next unless cap 						# skip useless lines
				key, val = cap.captures.map(&:strip)
				arr << [key.parameterize.underscore, val]
			end
			.to_h

		# data is structured like below
		# {"name"=>"Vineet Thanedar", "email"=>"vineet@oncue.co", "phone"=>"(415) 888-8888", 
		#  "from_areacode"=>"415", "from_zip"=>"94123", "from_state"=>"CA", "from_city"=>"San Francisco", 
		#  "to_areacode"=>"510", "to_zip"=>"94619", "to_state"=>"CA", "to_city"=>"Oakland", 
		#  "bedrooms"=>"2", "distance"=>"19", "move_date"=>"2017-11-11"}

		Customer.create!(data)
	end
end
