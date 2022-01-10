module ApplicationHelper
    def enum_for_select(object, name)
        object.class.send(name).map do |key, _value|
          [
            enum_label(object, name: name, key: key), key
          ]
        end
      end
end

def enum_label(object, name:, key:)
    I18n.t("activerecord.attributes.#{object.model_name.i18n_key}.#{name}.#{key}")
end
