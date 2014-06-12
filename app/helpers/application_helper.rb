module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


  def validation_errors(model)
    if model.errors.any?
      content_tag :div, model.errors.full_messages.to_sentence, class: 'alert alert-danger'
    end
  end
end
