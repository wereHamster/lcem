
module ApplicationHelper

  @@onFocus = "if(this.value==this.defaultValue) this.value='';"
  @@onBlur = "if(this.value=='') this.value=this.defaultValue;"
  
  def text_field_ext(form, default, name)
    form.text_field name, :value => default, :onFocus => @@onFocus, :onBlur => @@onBlur
  end

end
