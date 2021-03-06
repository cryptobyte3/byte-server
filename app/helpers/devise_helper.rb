module DeviseHelper
  # A simple way to show error messages for the current devise resource. If you need
  # to customize this method, you can either overwrite it in your application helpers or
  # copy the views to your application.
  #
  # This method is intended to stay simple and it is unlikely that we are going to change
  # it to add more behavior or options.
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    # sentence = I18n.t("errors.messages.not_saved",
    #                   :count => resource.errors.count,
    #                   :resource => resource.class.model_name.human.downcase)

    if messages == "<li>Reset password token is invalid</li>"
      messages = "<li>The link to create new password has been used. If you want to change password again, please go to Forgot Password section to request another change password email.
</li>"
    end
    html = <<-HTML
    <div id="error_explanation">
      <h2>Please fix all below errors before submitting:</h2>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end
