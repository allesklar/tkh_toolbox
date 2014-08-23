module TkhToolboxHelper
  def self.included(base)
    base.send(:include, InstanceMethods)
  end

  module InstanceMethods
    def human_date_and_time(dt)
      now = Time.zone.now

      if now.to_i - dt.to_i <= 15 # less than 15 seconds ago
        'just now'
      elsif now.to_i - dt.to_i < ( 60 * 5 ) # less than 5 minutes ago
        'a few minutes ago'
      elsif dt > Time.zone.now.beginning_of_day # today
        "at #{ dt.strftime('%I:%M %P')}"
      elsif dt > Time.zone.now.beginning_of_day - 24.hours # yesterday
        "yesterday at #{ dt.strftime('%I:%M %P')}"
      elsif dt > Time.zone.now.beginning_of_week # before yesterday and since Monday morning
        dt.strftime('%A at %I:%M %P')
      elsif dt > Time.zone.now.beginning_of_year # between Jan. 1st this year and Sunday at midnight
        dt.strftime("%b. %e at %I:%M %P")
      else # before beginning of this year
        dt.strftime("%b. %e, %Y")
      end
    end
  end
end
