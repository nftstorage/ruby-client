# NFTStorage::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  | [optional][default to false] |
| **error** | [**ErrorResponseError**](ErrorResponseError.md) |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::ErrorResponse.new(
  ok: null,
  error: null
)
```

