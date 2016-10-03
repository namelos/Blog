require 'org-ruby'

module ApplicationHelper
  def logged_in?
    not request.authorization.nil?
  end

  def org(text)
    html = Orgmode::Parser.new(text).to_html
    html.html_safe
  end
end
