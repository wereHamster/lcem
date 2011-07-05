
module ApplicationHelper

  def text_field_ext(form, model, name)
    form.text_field name, { :default => model.read_attribute(name), :size => 35 } 
  end

end
