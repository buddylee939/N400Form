module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end

  def status_label status
    status_span_generator status
  end

  def role_converter role
    case role
    when :user
      content_tag(:span, "User", class: 'u-tags-v1 text-center g-width-100 g-brd-around g-brd-teal-v2 g-bg-teal-v2 g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
    when :site_admin
      content_tag(:span, "Admin", class: 'u-tags-v1 text-center g-width-100 g-brd-around g-brd-lightred-v2 g-bg-lightred-v2 g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
    when :site_manager
      "Manager"
      content_tag(:span, "Manager", class: 'u-tags-v1 text-center g-width-100 g-brd-around g-brd-lightblue-v3 g-bg-lightblue-v3 g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
    end
  end  

  private
      
    def status_span_generator status
      case status
      when 'pending'
        content_tag(:span, status.titleize, class: 'u-tags-v1 text-center g-width-100 g-brd-around bg-secondary g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
      when 'checked'
        content_tag(:span, status.titleize, class: 'u-tags-v1 text-center g-width-100 g-brd-around bg-primary g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
      when 'approved'
        content_tag(:span, status.titleize, class: 'u-tags-v1 text-center g-width-100 g-brd-around bg-success g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
      when 'rejected'
        content_tag(:span, status.titleize, class: 'u-tags-v1 text-center g-width-100 g-brd-around bg-danger g-font-size-default g-color-white g-rounded-50 g-py-4 g-px-15')
      end
    end
end
