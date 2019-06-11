class PagesController < ApplicationController
  layout :resolve_layout

  def home
  end

  private

  def resolve_layout
    case action_name
    when "home"
      "no_footer"
    else
      "application"
    end
  end
end
