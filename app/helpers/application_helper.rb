module ApplicationHelper
  def convert_date(initialdate)
    if initialdate.to_s.to_date
      seconds = initialdate.to_datetime.to_i - Time.now.to_i
      minutes = (seconds/60).to_i
      hour = (minutes/60).to_i
      days = (hour/24).to_i
      if days > 2
        "#{days} days"
      else
        if hour > 1
          "#{hour} hours"
        else
          "#{minutes} minutes"
        end
      end
    end
  end

  def status(period)
    return true if period.to_date > Time.now
  end

end
