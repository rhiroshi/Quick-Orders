module ApplicationHelper
  def search(&block)
    content_for(:search) { render('common/search', content: capture(&block)) }
  end
end
