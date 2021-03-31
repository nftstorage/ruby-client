# NFTStorage::ForbiddenErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  | [optional][default to false] |
| **error** | [**ForbiddenErrorResponseError**](ForbiddenErrorResponseError.md) |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::ForbiddenErrorResponse.new(
  ok: null,
  error: null
)
```

