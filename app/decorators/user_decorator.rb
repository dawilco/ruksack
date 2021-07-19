class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    if first_name.blank? && last_name.blank?
      'No name provided.'
    else
      "#{first_name} #{last_name}".strip.titlecase
    end
  end
end
