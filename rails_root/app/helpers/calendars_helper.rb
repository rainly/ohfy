module CalendarsHelper
  def draw_plan(plan)
    result = %(<div class="calendar">)
    
    Date::DAYNAMES.each do |name|
      result << %(<div class="date header">#{name}</div>)
    end
    
    plan.executions.first.date.wday.times do
      result << %(<div class="date padding"></div>)
    end
    
    plan.executions.each do |execution|
      result << %(<div class="date unknown">&nbsp;<br />#{execution.date.day}</div>)
    end
    result += %(</div>)
    
    return result.html_safe
  end
end
