# nft_storage

_This client was generated via the OpenAPI schema and is experimental, unsupported, and may not work at all!_

NFTStorage - the Ruby gem for the NFT Storage API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Product Decommission Notice

### Important Update

Hello from NFT.Storage!

As of June 30, 2024, we have officially decommissioned NFT.Storage Classic uploads. This means that NFT.Storage Classic, including NFTUp, the Classic web app, Classic APIs, Classic SDK, and Pinning API, will no longer accept new uploads/pins.

### What This Means for You

**Service Termination:** NFT.Storage Classic will no longer accept new uploads. However, retrieval of existing data remains operational.

**Data Access:** Don't forget, we're still keeping a copy of your NFT.Storage Classic data available in the NFT.Storage Gateway and in the decentralized Filecoin Network. However, over time, latency and availability may degrade.

**Support:** We’ll be working with the newly formed NFT.Storage community to determine what changes, if any, will impact NFT.Storage Classic data latency and availability in the future. Join the community [Join the community](https://nft.storage/join-us) to have your say. We will keep you informed by email and on Twitter/X.

### Transition to the New Version

For the new version of NFT.Storage, first mint your NFTs, then send us the NFT data—metadata and imagery CIDs, blockchain(s) minted on, contract address, and token IDs. We will preserve these in long-term Filecoin storage. Note that you need to upload the data to IPFS separately. Your NFTs will also be included in the NFT Token Checker, a tool for block explorers, marketplaces, and wallets to show verification that NFT collections, tokens, and CIDs are preserved by NFT.Storage.

### Recommended Hot Storage Alternatives

We’re excited to announce our partnerships with Pinata and Lighthouse for hot storage solutions. As an NFT.Storage user, you support our platform when you choose Pinata and Lighthouse and use our referral links, helping to sustain our valuable public goods. [Learn more here](https://nft.storage/blog/announcing-our-new-partnerships-with-pinata-and-lighthouse).

**Pinata:** Offers flexible plans and powerful, easy-to-use tools for managing your data on IPFS. Use code NFTSTORAGE50 at checkout to enjoy 50% off your first month. [Sign up today](https://pinata.cloud).

**Lighthouse:** An IPFS provider with unique payment options for NFT longevity. They offer affordability and flexibility for all your IPFS needs, including a pay-once and store-forever option. [Sign up today](https://lighthouse.storage).

### Contact Us

For any questions or assistance, contact us [contact us](https://nft.storage/contact-us). Together, we look forward to a promising future for NFT.Storage and the broader NFT ecosystem.

Best regards,  
The NFT.Storage Team


## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build nft_storage.gemspec
```

Then either install the gem locally:

```shell
gem install ./nft_storage-1.0.0.gem
```

(for development, run `gem install --dev ./nft_storage-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'nft_storage', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/nftstorage/ruby-client, then add the following in the Gemfile:

    gem 'nft_storage', :git => 'https://github.com/nftstorage/ruby-client.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'nft_storage'

# Setup authorization
NFTStorage.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NFTStorage::NFTStorageAPI.new
cid = 'cid_example' # String | CID for the NFT

begin
  #Stop storing the content with the passed CID
  result = api_instance.delete(cid)
  p result
rescue NFTStorage::ApiError => e
  puts "Exception when calling NFTStorageAPI->delete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.nft.storage*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NFTStorage::NFTStorageAPI* | [**delete**](docs/NFTStorageAPI.md#delete) | **DELETE** /{cid} | Stop storing the content with the passed CID
*NFTStorage::NFTStorageAPI* | [**list**](docs/NFTStorageAPI.md#list) | **GET** / | List all stored files
*NFTStorage::NFTStorageAPI* | [**status**](docs/NFTStorageAPI.md#status) | **GET** /{cid} | Get information for the stored file CID
*NFTStorage::NFTStorageAPI* | [**store**](docs/NFTStorageAPI.md#store) | **POST** /upload | Store a file


## Documentation for Models

 - [NFTStorage::Deal](docs/Deal.md)
 - [NFTStorage::DeleteResponse](docs/DeleteResponse.md)
 - [NFTStorage::ErrorResponse](docs/ErrorResponse.md)
 - [NFTStorage::ErrorResponseError](docs/ErrorResponseError.md)
 - [NFTStorage::ForbiddenErrorResponse](docs/ForbiddenErrorResponse.md)
 - [NFTStorage::ForbiddenErrorResponseError](docs/ForbiddenErrorResponseError.md)
 - [NFTStorage::GetResponse](docs/GetResponse.md)
 - [NFTStorage::Links](docs/Links.md)
 - [NFTStorage::LinksFile](docs/LinksFile.md)
 - [NFTStorage::ListResponse](docs/ListResponse.md)
 - [NFTStorage::NFT](docs/NFT.md)
 - [NFTStorage::Pin](docs/Pin.md)
 - [NFTStorage::PinStatus](docs/PinStatus.md)
 - [NFTStorage::UnauthorizedErrorResponse](docs/UnauthorizedErrorResponse.md)
 - [NFTStorage::UnauthorizedErrorResponseError](docs/UnauthorizedErrorResponseError.md)
 - [NFTStorage::UploadResponse](docs/UploadResponse.md)


## Documentation for Authorization


### bearerAuth

- **Type**: Bearer authentication (JWT)

