# NFTStorage::NFTStorageAPI

All URIs are relative to *https://api.nft.storage*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete**](NFTStorageAPI.md#delete) | **DELETE** /{cid} | Stop storing the content with the passed CID |
| [**list**](NFTStorageAPI.md#list) | **GET** / | List all stored files |
| [**status**](NFTStorageAPI.md#status) | **GET** /{cid} | Get information for the stored file CID |
| [**store**](NFTStorageAPI.md#store) | **POST** /upload | Store a file |


## delete

> <DeleteResponse> delete(cid)

Stop storing the content with the passed CID

Stop storing the content with the passed CID on nft.storage. - Unpin the item from the underlying IPFS pinning service. - Cease renewals for expired Filecoin deals involving the CID.    ⚠️ This does not remove the content from the network.  - Does not terminate any established Filecoin deal. - Does not remove the content from other IPFS nodes in the network that already cached or pinned the CID.    Note: the content will remain available if another user has stored the CID with nft.storage. 

### Examples

```ruby
require 'time'
require 'nft_storage'
# setup authorization
NFTStorage.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NFTStorage::NFTStorageAPI.new
cid = 'cid_example' # String | CID for the NFT

begin
  # Stop storing the content with the passed CID
  result = api_instance.delete(cid)
  p result
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->delete: #{e}"
end
```

#### Using the delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_with_http_info(cid)

```ruby
begin
  # Stop storing the content with the passed CID
  data, status_code, headers = api_instance.delete_with_http_info(cid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | CID for the NFT |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list

> <ListResponse> list(opts)

List all stored files

### Examples

```ruby
require 'time'
require 'nft_storage'
# setup authorization
NFTStorage.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NFTStorage::NFTStorageAPI.new
opts = {
  before: Time.parse('2020-07-27T17:32:28Z'), # Time | Return results created before provided timestamp
  limit: 56 # Integer | Max records to return
}

begin
  # List all stored files
  result = api_instance.list(opts)
  p result
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->list: #{e}"
end
```

#### Using the list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListResponse>, Integer, Hash)> list_with_http_info(opts)

```ruby
begin
  # List all stored files
  data, status_code, headers = api_instance.list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListResponse>
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **before** | **Time** | Return results created before provided timestamp | [optional] |
| **limit** | **Integer** | Max records to return | [optional][default to 10] |

### Return type

[**ListResponse**](ListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## status

> <GetResponse> status(cid)

Get information for the stored file CID

Includes the IPFS pinning state and the Filecoin deal state.

### Examples

```ruby
require 'time'
require 'nft_storage'
# setup authorization
NFTStorage.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NFTStorage::NFTStorageAPI.new
cid = 'cid_example' # String | CID for the NFT

begin
  # Get information for the stored file CID
  result = api_instance.status(cid)
  p result
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->status: #{e}"
end
```

#### Using the status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetResponse>, Integer, Hash)> status_with_http_info(cid)

```ruby
begin
  # Get information for the stored file CID
  data, status_code, headers = api_instance.status_with_http_info(cid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetResponse>
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | CID for the NFT |  |

### Return type

[**GetResponse**](GetResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## store

> <UploadResponse> store(body)

Store a file

Store a file with nft.storage.  - Submit a HTTP `POST` request passing the file data in the request body. - To store multiple files in a directory, submit a `multipart/form-data` HTTP `POST` request.  Use the `Content-Disposition` header for each part to specify a filename. 

### Examples

```ruby
require 'time'
require 'nft_storage'
# setup authorization
NFTStorage.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NFTStorage::NFTStorageAPI.new
body = File.new('/path/to/some/file') # File | 

begin
  # Store a file
  result = api_instance.store(body)
  p result
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->store: #{e}"
end
```

#### Using the store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadResponse>, Integer, Hash)> store_with_http_info(body)

```ruby
begin
  # Store a file
  data, status_code, headers = api_instance.store_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadResponse>
rescue NFTStorage::ApiError => e
  puts "Error when calling NFTStorageAPI->store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **File** |  |  |

### Return type

[**UploadResponse**](UploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: image/png, application/octet-stream, multipart/form-data
- **Accept**: application/json

