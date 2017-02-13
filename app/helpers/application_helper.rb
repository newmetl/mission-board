module ApplicationHelper

  MOOD_CLASSES = {
    'green' => 'list-group-item-success',
    'yellow' => 'list-group-item-warning',
    'red' => 'list-group-item-danger'
  }

  def class_for_mood(mood)
    MOOD_CLASSES[mood.name]
  end
end
