=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module OpenapiClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Analyze Recipe
    # This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
    # @param analyze_recipe_request [AnalyzeRecipeRequest] Example request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
    # @option opts [Boolean] :include_nutrition Whether nutrition data should be added to correctly parsed ingredients.
    # @option opts [Boolean] :include_taste Whether taste data should be added to correctly parsed ingredients.
    # @return [Object]
    def analyze_recipe(analyze_recipe_request, opts = {})
      data, _status_code, _headers = analyze_recipe_with_http_info(analyze_recipe_request, opts)
      data
    end

    # Analyze Recipe
    # This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
    # @param analyze_recipe_request [AnalyzeRecipeRequest] Example request body.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The input language, either \&quot;en\&quot; or \&quot;de\&quot;.
    # @option opts [Boolean] :include_nutrition Whether nutrition data should be added to correctly parsed ingredients.
    # @option opts [Boolean] :include_taste Whether taste data should be added to correctly parsed ingredients.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def analyze_recipe_with_http_info(analyze_recipe_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.analyze_recipe ...'
      end
      # verify the required parameter 'analyze_recipe_request' is set
      if @api_client.config.client_side_validation && analyze_recipe_request.nil?
        fail ArgumentError, "Missing the required parameter 'analyze_recipe_request' when calling DefaultApi.analyze_recipe"
      end
      # resource path
      local_var_path = '/recipes/analyze'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'includeNutrition'] = opts[:'include_nutrition'] if !opts[:'include_nutrition'].nil?
      query_params[:'includeTaste'] = opts[:'include_taste'] if !opts[:'include_taste'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['', 'application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(analyze_recipe_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"DefaultApi.analyze_recipe",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#analyze_recipe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Recipe Card
    # Generate a recipe card for a recipe.
    # @param id [Float] The recipe id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).
    # @option opts [String] :background_image The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).
    # @option opts [String] :background_color The background color for the recipe card as a hex-string.
    # @option opts [String] :font_color The font color for the recipe card as a hex-string.
    # @return [Object]
    def create_recipe_card_get(id, opts = {})
      data, _status_code, _headers = create_recipe_card_get_with_http_info(id, opts)
      data
    end

    # Create Recipe Card
    # Generate a recipe card for a recipe.
    # @param id [Float] The recipe id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :mask The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;).
    # @option opts [String] :background_image The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;).
    # @option opts [String] :background_color The background color for the recipe card as a hex-string.
    # @option opts [String] :font_color The font color for the recipe card as a hex-string.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_recipe_card_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.create_recipe_card_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.create_recipe_card_get"
      end
      # resource path
      local_var_path = '/recipes/{id}/card'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mask'] = opts[:'mask'] if !opts[:'mask'].nil?
      query_params[:'backgroundImage'] = opts[:'background_image'] if !opts[:'background_image'].nil?
      query_params[:'backgroundColor'] = opts[:'background_color'] if !opts[:'background_color'].nil?
      query_params[:'fontColor'] = opts[:'font_color'] if !opts[:'font_color'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"DefaultApi.create_recipe_card_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#create_recipe_card_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Restaurants
    # Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @option opts [Float] :lat The latitude of the user&#39;s location.
    # @option opts [Float] :lng The longitude of the user&#39;s location.\&quot;.
    # @option opts [Float] :distance The distance around the location in miles.
    # @option opts [Float] :budget The user&#39;s budget for a meal in USD.
    # @option opts [String] :cuisine The cuisine of the restaurant.
    # @option opts [Float] :min_rating The minimum rating of the restaurant between 0 and 5.
    # @option opts [Boolean] :is_open Whether the restaurant must be open at the time of search.
    # @option opts [String] :sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.
    # @option opts [Float] :page The page number of results.
    # @return [SearchRestaurants200Response]
    def search_restaurants(opts = {})
      data, _status_code, _headers = search_restaurants_with_http_info(opts)
      data
    end

    # Search Restaurants
    # Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @option opts [Float] :lat The latitude of the user&#39;s location.
    # @option opts [Float] :lng The longitude of the user&#39;s location.\&quot;.
    # @option opts [Float] :distance The distance around the location in miles.
    # @option opts [Float] :budget The user&#39;s budget for a meal in USD.
    # @option opts [String] :cuisine The cuisine of the restaurant.
    # @option opts [Float] :min_rating The minimum rating of the restaurant between 0 and 5.
    # @option opts [Boolean] :is_open Whether the restaurant must be open at the time of search.
    # @option opts [String] :sort How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;.
    # @option opts [Float] :page The page number of results.
    # @return [Array<(SearchRestaurants200Response, Integer, Hash)>] SearchRestaurants200Response data, response status code and response headers
    def search_restaurants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.search_restaurants ...'
      end
      # resource path
      local_var_path = '/food/restaurants/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'lat'] = opts[:'lat'] if !opts[:'lat'].nil?
      query_params[:'lng'] = opts[:'lng'] if !opts[:'lng'].nil?
      query_params[:'distance'] = opts[:'distance'] if !opts[:'distance'].nil?
      query_params[:'budget'] = opts[:'budget'] if !opts[:'budget'].nil?
      query_params[:'cuisine'] = opts[:'cuisine'] if !opts[:'cuisine'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'is-open'] = opts[:'is_open'] if !opts[:'is_open'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchRestaurants200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyScheme']

      new_options = opts.merge(
        :operation => :"DefaultApi.search_restaurants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#search_restaurants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
