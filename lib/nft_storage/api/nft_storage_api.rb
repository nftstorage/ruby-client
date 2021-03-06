=begin
#NFT Storage API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'cgi'

module NFTStorage
  class NFTStorageAPI
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Stop storing the content with the passed CID
    # Stop storing the content with the passed CID on nft.storage. - Unpin the item from the underlying IPFS pinning service. - Cease renewals for expired Filecoin deals involving the CID.    ⚠️ This does not remove the content from the network.  - Does not terminate any established Filecoin deal. - Does not remove the content from other IPFS nodes in the network that already cached or pinned the CID.    Note: the content will remain available if another user has stored the CID with nft.storage. 
    # @param cid [String] CID for the NFT
    # @param [Hash] opts the optional parameters
    # @return [DeleteResponse]
    def delete(cid, opts = {})
      data, _status_code, _headers = delete_with_http_info(cid, opts)
      data
    end

    # Stop storing the content with the passed CID
    # Stop storing the content with the passed CID on nft.storage. - Unpin the item from the underlying IPFS pinning service. - Cease renewals for expired Filecoin deals involving the CID.    ⚠️ This does not remove the content from the network.  - Does not terminate any established Filecoin deal. - Does not remove the content from other IPFS nodes in the network that already cached or pinned the CID.    Note: the content will remain available if another user has stored the CID with nft.storage. 
    # @param cid [String] CID for the NFT
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResponse, Integer, Hash)>] DeleteResponse data, response status code and response headers
    def delete_with_http_info(cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NFTStorageAPI.delete ...'
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling NFTStorageAPI.delete"
      end
      # resource path
      local_var_path = '/{cid}'.sub('{' + 'cid' + '}', CGI.escape(cid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NFTStorageAPI.delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NFTStorageAPI#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all stored files
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :before Return results created before provided timestamp
    # @option opts [Integer] :limit Max records to return (default to 10)
    # @return [ListResponse]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List all stored files
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :before Return results created before provided timestamp
    # @option opts [Integer] :limit Max records to return
    # @return [Array<(ListResponse, Integer, Hash)>] ListResponse data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NFTStorageAPI.list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NFTStorageAPI.list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NFTStorageAPI.list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NFTStorageAPI.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NFTStorageAPI#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information for the stored file CID
    # Includes the IPFS pinning state and the Filecoin deal state.
    # @param cid [String] CID for the NFT
    # @param [Hash] opts the optional parameters
    # @return [GetResponse]
    def status(cid, opts = {})
      data, _status_code, _headers = status_with_http_info(cid, opts)
      data
    end

    # Get information for the stored file CID
    # Includes the IPFS pinning state and the Filecoin deal state.
    # @param cid [String] CID for the NFT
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetResponse, Integer, Hash)>] GetResponse data, response status code and response headers
    def status_with_http_info(cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NFTStorageAPI.status ...'
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling NFTStorageAPI.status"
      end
      # resource path
      local_var_path = '/{cid}'.sub('{' + 'cid' + '}', CGI.escape(cid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NFTStorageAPI.status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NFTStorageAPI#status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Store a file
    # Store a file with nft.storage.  - Submit a HTTP `POST` request passing the file data in the request body. - To store multiple files in a directory, submit a `multipart/form-data` HTTP `POST` request.  Use the `Content-Disposition` header for each part to specify a filename. 
    # @param body [File] 
    # @param [Hash] opts the optional parameters
    # @return [UploadResponse]
    def store(body, opts = {})
      data, _status_code, _headers = store_with_http_info(body, opts)
      data
    end

    # Store a file
    # Store a file with nft.storage.  - Submit a HTTP &#x60;POST&#x60; request passing the file data in the request body. - To store multiple files in a directory, submit a &#x60;multipart/form-data&#x60; HTTP &#x60;POST&#x60; request.  Use the &#x60;Content-Disposition&#x60; header for each part to specify a filename. 
    # @param body [File] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UploadResponse, Integer, Hash)>] UploadResponse data, response status code and response headers
    def store_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NFTStorageAPI.store ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling NFTStorageAPI.store"
      end
      # resource path
      local_var_path = '/upload'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['image/png', 'application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UploadResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NFTStorageAPI.store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NFTStorageAPI#store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
