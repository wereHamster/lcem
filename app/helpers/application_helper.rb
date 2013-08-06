
module ApplicationHelper

  def text_field_ext(form, model, name, default = nil)
    attr = model.read_attribute(name)
    if attr == nil || attr.empty?
        attr = default
    end

    form.text_field name, { :value => attr, :size => 35 }
  end

end
