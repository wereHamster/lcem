
module ApplicationHelper

  def text_field_ext(form, model, name, default = nil, focus = nil)
    attr = model.read_attribute(name)
    if attr == nil || attr.empty?
        attr = default
    end


    options = { :value => attr, :size => 35 }
    if focus
        options[:autofocus] = true
    end

    form.text_field name, options
  end

end
