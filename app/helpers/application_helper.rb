module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    project_name = "testProject"
    if @title.nil?
      project_name
    else
      "#{project_name} - #{@title}"
    end
  end

end
