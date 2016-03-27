module GreeterHelper
	#this method is availabe for all views, and is called a "helper method"
	def formatted_time(time)
		# time string in AM/PM format
		time.strftime("%I:%M%p")
	end
end
