module ApplicationHelper
  def full_title(page_title)
    base_title = "Infostack - Giving the world a voice."
    page_title.empty? ? base_title : "Infostack - #{page_title}"
  end
end
