=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OpenapiClient
  class GetRecipeInformation200ResponseExtendedIngredientsInner
    attr_accessor :aisle

    attr_accessor :amount

    attr_accessor :consitency

    attr_accessor :id

    attr_accessor :image

    attr_accessor :measures

    attr_accessor :meta

    attr_accessor :name

    attr_accessor :original

    attr_accessor :original_name

    attr_accessor :unit

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aisle' => :'aisle',
        :'amount' => :'amount',
        :'consitency' => :'consitency',
        :'id' => :'id',
        :'image' => :'image',
        :'measures' => :'measures',
        :'meta' => :'meta',
        :'name' => :'name',
        :'original' => :'original',
        :'original_name' => :'originalName',
        :'unit' => :'unit'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'aisle' => :'String',
        :'amount' => :'Float',
        :'consitency' => :'String',
        :'id' => :'Integer',
        :'image' => :'String',
        :'measures' => :'GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures',
        :'meta' => :'Array<String>',
        :'name' => :'String',
        :'original' => :'String',
        :'original_name' => :'String',
        :'unit' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::GetRecipeInformation200ResponseExtendedIngredientsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::GetRecipeInformation200ResponseExtendedIngredientsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aisle')
        self.aisle = attributes[:'aisle']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'consitency')
        self.consitency = attributes[:'consitency']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'measures')
        self.measures = attributes[:'measures']
      end

      if attributes.key?(:'meta')
        if (value = attributes[:'meta']).is_a?(Array)
          self.meta = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'original')
        self.original = attributes[:'original']
      end

      if attributes.key?(:'original_name')
        self.original_name = attributes[:'original_name']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @aisle.nil?
        invalid_properties.push('invalid value for "aisle", aisle cannot be nil.')
      end

      if @aisle.to_s.length < 1
        invalid_properties.push('invalid value for "aisle", the character length must be great than or equal to 1.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @consitency.nil?
        invalid_properties.push('invalid value for "consitency", consitency cannot be nil.')
      end

      if @consitency.to_s.length < 1
        invalid_properties.push('invalid value for "consitency", the character length must be great than or equal to 1.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @image.nil?
        invalid_properties.push('invalid value for "image", image cannot be nil.')
      end

      if @image.to_s.length < 1
        invalid_properties.push('invalid value for "image", the character length must be great than or equal to 1.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if @original.nil?
        invalid_properties.push('invalid value for "original", original cannot be nil.')
      end

      if @original.to_s.length < 1
        invalid_properties.push('invalid value for "original", the character length must be great than or equal to 1.')
      end

      if @original_name.nil?
        invalid_properties.push('invalid value for "original_name", original_name cannot be nil.')
      end

      if @original_name.to_s.length < 1
        invalid_properties.push('invalid value for "original_name", the character length must be great than or equal to 1.')
      end

      if @unit.nil?
        invalid_properties.push('invalid value for "unit", unit cannot be nil.')
      end

      if @unit.to_s.length < 0
        invalid_properties.push('invalid value for "unit", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @aisle.nil?
      return false if @aisle.to_s.length < 1
      return false if @amount.nil?
      return false if @consitency.nil?
      return false if @consitency.to_s.length < 1
      return false if @id.nil?
      return false if @image.nil?
      return false if @image.to_s.length < 1
      return false if @name.nil?
      return false if @name.to_s.length < 1
      return false if @original.nil?
      return false if @original.to_s.length < 1
      return false if @original_name.nil?
      return false if @original_name.to_s.length < 1
      return false if @unit.nil?
      return false if @unit.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] aisle Value to be assigned
    def aisle=(aisle)
      if aisle.nil?
        fail ArgumentError, 'aisle cannot be nil'
      end

      if aisle.to_s.length < 1
        fail ArgumentError, 'invalid value for "aisle", the character length must be great than or equal to 1.'
      end

      @aisle = aisle
    end

    # Custom attribute writer method with validation
    # @param [Object] consitency Value to be assigned
    def consitency=(consitency)
      if consitency.nil?
        fail ArgumentError, 'consitency cannot be nil'
      end

      if consitency.to_s.length < 1
        fail ArgumentError, 'invalid value for "consitency", the character length must be great than or equal to 1.'
      end

      @consitency = consitency
    end

    # Custom attribute writer method with validation
    # @param [Object] image Value to be assigned
    def image=(image)
      if image.nil?
        fail ArgumentError, 'image cannot be nil'
      end

      if image.to_s.length < 1
        fail ArgumentError, 'invalid value for "image", the character length must be great than or equal to 1.'
      end

      @image = image
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] original Value to be assigned
    def original=(original)
      if original.nil?
        fail ArgumentError, 'original cannot be nil'
      end

      if original.to_s.length < 1
        fail ArgumentError, 'invalid value for "original", the character length must be great than or equal to 1.'
      end

      @original = original
    end

    # Custom attribute writer method with validation
    # @param [Object] original_name Value to be assigned
    def original_name=(original_name)
      if original_name.nil?
        fail ArgumentError, 'original_name cannot be nil'
      end

      if original_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "original_name", the character length must be great than or equal to 1.'
      end

      @original_name = original_name
    end

    # Custom attribute writer method with validation
    # @param [Object] unit Value to be assigned
    def unit=(unit)
      if unit.nil?
        fail ArgumentError, 'unit cannot be nil'
      end

      if unit.to_s.length < 0
        fail ArgumentError, 'invalid value for "unit", the character length must be great than or equal to 0.'
      end

      @unit = unit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aisle == o.aisle &&
          amount == o.amount &&
          consitency == o.consitency &&
          id == o.id &&
          image == o.image &&
          measures == o.measures &&
          meta == o.meta &&
          name == o.name &&
          original == o.original &&
          original_name == o.original_name &&
          unit == o.unit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aisle, amount, consitency, id, image, measures, meta, name, original, original_name, unit].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
