=begin
#Marketing Events

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Marketing
    module Events
      class ListAssociationsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Disassociate a list from a marketing event
        # Disassociates a list from a marketing event by external account id, external event id, and ILS list id
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id(external_account_id, external_event_id, list_id, opts = {})
          delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id_with_http_info(external_account_id, external_event_id, list_id, opts)
          nil
        end

        # Disassociate a list from a marketing event
        # Disassociates a list from a marketing event by external account id, external event id, and ILS list id
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id_with_http_info(external_account_id, external_event_id, list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListAssociationsApi.delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id ...'
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ListAssociationsApi.delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id"
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling ListAssociationsApi.delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id"
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListAssociationsApi.delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/associations/{externalAccountId}/{externalEventId}/lists/{listId}'.sub('{' + 'externalAccountId' + '}', CGI.escape(external_account_id.to_s)).sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s)).sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListAssociationsApi.delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListAssociationsApi#delete_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Disassociate a list from a marketing event
        # Disassociates a list from a marketing event by marketing event id and ILS list id
        # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id(marketing_event_id, list_id, opts = {})
          delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id_with_http_info(marketing_event_id, list_id, opts)
          nil
        end

        # Disassociate a list from a marketing event
        # Disassociates a list from a marketing event by marketing event id and ILS list id
        # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id_with_http_info(marketing_event_id, list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListAssociationsApi.delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id ...'
          end
          # verify the required parameter 'marketing_event_id' is set
          if @api_client.config.client_side_validation && marketing_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_id' when calling ListAssociationsApi.delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id"
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListAssociationsApi.delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/associations/{marketingEventId}/lists/{listId}'.sub('{' + 'marketingEventId' + '}', CGI.escape(marketing_event_id.to_s)).sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListAssociationsApi.delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListAssociationsApi#delete_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get lists associated with a marketing event
        # Gets lists associated with a marketing event by external account id and external event id
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponseWithTotalPublicListNoPaging]
        def get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists(external_account_id, external_event_id, opts = {})
          data, _status_code, _headers = get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_with_http_info(external_account_id, external_event_id, opts)
          data
        end

        # Get lists associated with a marketing event
        # Gets lists associated with a marketing event by external account id and external event id
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponseWithTotalPublicListNoPaging, Integer, Hash)>] CollectionResponseWithTotalPublicListNoPaging data, response status code and response headers
        def get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_with_http_info(external_account_id, external_event_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListAssociationsApi.get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists ...'
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ListAssociationsApi.get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists"
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling ListAssociationsApi.get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/associations/{externalAccountId}/{externalEventId}/lists'.sub('{' + 'externalAccountId' + '}', CGI.escape(external_account_id.to_s)).sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseWithTotalPublicListNoPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListAssociationsApi.get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListAssociationsApi#get_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get lists associated with a marketing event
        # Gets lists associated with a marketing event by marketing event id
        # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponseWithTotalPublicListNoPaging]
        def get_marketing_v3_marketing_events_associations_marketing_event_id_lists(marketing_event_id, opts = {})
          data, _status_code, _headers = get_marketing_v3_marketing_events_associations_marketing_event_id_lists_with_http_info(marketing_event_id, opts)
          data
        end

        # Get lists associated with a marketing event
        # Gets lists associated with a marketing event by marketing event id
        # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponseWithTotalPublicListNoPaging, Integer, Hash)>] CollectionResponseWithTotalPublicListNoPaging data, response status code and response headers
        def get_marketing_v3_marketing_events_associations_marketing_event_id_lists_with_http_info(marketing_event_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListAssociationsApi.get_marketing_v3_marketing_events_associations_marketing_event_id_lists ...'
          end
          # verify the required parameter 'marketing_event_id' is set
          if @api_client.config.client_side_validation && marketing_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_id' when calling ListAssociationsApi.get_marketing_v3_marketing_events_associations_marketing_event_id_lists"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/associations/{marketingEventId}/lists'.sub('{' + 'marketingEventId' + '}', CGI.escape(marketing_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseWithTotalPublicListNoPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListAssociationsApi.get_marketing_v3_marketing_events_associations_marketing_event_id_lists",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListAssociationsApi#get_marketing_v3_marketing_events_associations_marketing_event_id_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Associate a list with a marketing event
        # Associates a list with a marketing event by external account id, external event id, and ILS list id
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id(external_account_id, external_event_id, list_id, opts = {})
          put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id_with_http_info(external_account_id, external_event_id, list_id, opts)
          nil
        end

        # Associate a list with a marketing event
        # Associates a list with a marketing event by external account id, external event id, and ILS list id
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event application.
        # @param external_event_id [String] The id of the marketing event in the external event application.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id_with_http_info(external_account_id, external_event_id, list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListAssociationsApi.put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id ...'
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ListAssociationsApi.put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id"
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling ListAssociationsApi.put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id"
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListAssociationsApi.put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/associations/{externalAccountId}/{externalEventId}/lists/{listId}'.sub('{' + 'externalAccountId' + '}', CGI.escape(external_account_id.to_s)).sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s)).sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListAssociationsApi.put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListAssociationsApi#put_marketing_v3_marketing_events_associations_external_account_id_external_event_id_lists_list_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Associate a list with a marketing event
        # Associates a list with a marketing event by marketing event id and ILS list id
        # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id(marketing_event_id, list_id, opts = {})
          put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id_with_http_info(marketing_event_id, list_id, opts)
          nil
        end

        # Associate a list with a marketing event
        # Associates a list with a marketing event by marketing event id and ILS list id
        # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
        # @param list_id [String] The ILS ID of the list.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id_with_http_info(marketing_event_id, list_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: ListAssociationsApi.put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id ...'
          end
          # verify the required parameter 'marketing_event_id' is set
          if @api_client.config.client_side_validation && marketing_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_id' when calling ListAssociationsApi.put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id"
          end
          # verify the required parameter 'list_id' is set
          if @api_client.config.client_side_validation && list_id.nil?
            fail ArgumentError, "Missing the required parameter 'list_id' when calling ListAssociationsApi.put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/associations/{marketingEventId}/lists/{listId}'.sub('{' + 'marketingEventId' + '}', CGI.escape(marketing_event_id.to_s)).sub('{' + 'listId' + '}', CGI.escape(list_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"ListAssociationsApi.put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: ListAssociationsApi#put_marketing_v3_marketing_events_associations_marketing_event_id_lists_list_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
