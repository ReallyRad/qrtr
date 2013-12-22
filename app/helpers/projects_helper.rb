module ProjectsHelper

  def truncate_html

  end

  def compute_column i
    if (i == 1)
      return 4
    elsif (i == 4 || i==8)
      return i+4
    else
      return 1
    end
  end

  def project_row i, p

    render :partial => "projects/project_block", :locals => {:i => i, :p => p}
  end

  def truncate_description t
    full_text = link_to(topic.title, topic) + ' - ' + topic.description_without_embed

  end

end
