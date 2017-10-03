module ApplicationHelper
  def full_title(page_title)
    base_title = "Infostack - The only forum you'll ever need"
    page_title.empty? ? base_title : "Infostack - #{page_title}"
  end
end
