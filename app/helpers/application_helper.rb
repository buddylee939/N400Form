module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end

  def status_label status
    status_span_generator status
  end

  private
      
    def status_span_generator status
      case status
      when 'pending'
        content_tag(:span, status.titleize, class: 'badge badge-info')
      when 'checked'
        content_tag(:span, status.titleize, class: 'badge badge-primary')
      when 'approved'
        content_tag(:span, status.titleize, class: 'badge badge-success')
      when 'rejected'
        content_tag(:span, status.titleize, class: 'badge badge-danger')
      end
    end
end
