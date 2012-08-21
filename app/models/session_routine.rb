class SessionRoutine < ActiveRecord::Base
  belongs_to :session
  belongs_to :routine

  attr_accessible :session, :routine, :weight, :reps

  validates :routine, :presence => true
  validates :weight,  :presence => true
  validates :reps,    :presence => true

#  def after_initialise(session, routine, weight, reps)
#    puts "ERE"
#    puts session << routine << weight << reps
#  end

end
