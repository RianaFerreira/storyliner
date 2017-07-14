module ApplicationHelper
  # display flash messages with Bootstrap alert styles
  # read more:
  # https://gist.github.com/roberto/3344628
  # https://coderwall.com/p/jzofog/ruby-on-rails-flash-messages-with-bootstrap

  def flash_class(level)
    case level.to_sym
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-warning"
    end
  end
end
