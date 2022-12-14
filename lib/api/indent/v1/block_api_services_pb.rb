# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: indent/v1/block_api.proto for package 'indent.v1'
# Original file comments:
#
# Copyright 2019 Indent Inc
#
#

require 'grpc'
require 'indent/v1/block_api_pb'

module Indent
  module V1
    module BlockAPI
      # BlockAPI contains the resources associated with managing and evaluating blocks.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'indent.v1.BlockAPI'

        # List the Blocks in the given space.
        rpc :ListBlocks, ::Indent::V1::ListBlocksRequest, ::Indent::V1::ListBlocksResponse
        # Retrieve specified Block by name and Space.
        rpc :GetBlock, ::Indent::V1::GetBlockRequest, ::Indent::V1::Block
        # Create a new Block within a space.
        rpc :CreateBlock, ::Indent::V1::CreateBlockRequest, ::Indent::V1::Block
        # UpdateBlock allows modification of the contents of a Block.
        rpc :UpdateBlock, ::Indent::V1::UpdateBlockRequest, ::Indent::V1::Block
        # Permanently destroy a Block.
        rpc :DeleteBlock, ::Indent::V1::DeleteBlockRequest, ::Indent::V1::Block
        # Permanently destroy Blocks.
        rpc :BulkDelete, ::Indent::V1::BulkDeleteBlocksRequest, ::Indent::V1::BulkDeleteBlocksResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
