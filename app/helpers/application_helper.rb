module ApplicationHelper
  def active?(path)
      "active" if current_page?(path)
  end

  def status_converter(status, truthy: 'Yes', falsey: 'No')
    if status
      truthy
    else
      falsey
    end
  end  
end
