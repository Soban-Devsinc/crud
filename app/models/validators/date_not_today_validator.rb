# app/validators/date_not_today_validator.rb
class DateNotTodayValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.present? && value >= Date.today
      record.errors.add(attribute, 'cannot be today or in the future')
    end
  end
end
