module ApplicationHelper
  def search(&block)
    render('layouts/search', content: capture(&block))
  end
end
