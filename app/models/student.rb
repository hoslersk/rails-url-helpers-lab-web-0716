class Student < ActiveRecord::Base

    # After initialization, set default values
  after_initialize :set_default_values

  def set_default_values
    # Only set if time_zone IS NOT set
    self.active ||= false
  end

  # include Defaults
  # default :active, false

  def to_s
    self.first_name + " " + self.last_name
  end

end
