class Session < ActiveRecord::Base

  def self.getInstance
    session = nil

    if previous_session = self.find(:last, :conditions => [ "updated_at > ?", 1.hours.ago ])
      session = previous_session
    else
      session = self.new
      session.save
    end

    return session
  end
end
