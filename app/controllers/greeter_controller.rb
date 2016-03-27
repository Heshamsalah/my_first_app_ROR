class GreeterController < ApplicationController
  def hello #Logic work should be done here and not in the View files.
  	random_names = ["ahmed", "mohamed", "salah"]
  	@name = random_names.sample
  	@time = Time.now
  	################################################################################# Alternatives:
  	@times_displayed ||= 0 # these two lines are about trying to capture how        # -Sessions
  	@times_displayed += 1  # many times this page was displayed.                    # -Database
  	                       # this doesn't seem to work, because in rails,           #
  	                       # unlike other frameworks, we can't store values         #
  	                       # in controller's instance variables in between REQUESTS #
  	#################################################################################
  	######### every new request is going to create a new instance variable ##########
  	#################################################################################
  end
  def goodbye
  end
end
