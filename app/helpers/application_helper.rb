module ApplicationHelper
  # make a nice bootstrap label with a twipsy with object.notes
  def notes_helper(object)
    if object.notes
      link_to('#', { :rel => 'twipsy', :title => object.notes }) do
        content_tag :span, 'note', :class => 'label notice'
      end
    end
  end
end
