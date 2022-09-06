# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: indent/v1/account_api.proto for package 'indent.v1'
# Original file comments:
#
# Copyright 2019 Indent Inc
#
#

require 'grpc'
require 'indent/v1/account_api_pb'

module Indent
  module V1
    module AccountAPI
      # Manages the hierarchy that contains all other resources except Organization.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'indent.v1.AccountAPI'

        # List the Spaces that are children of given parent.
        rpc :ListSpaces, ::Indent::V1::ListSpacesRequest, ::Indent::V1::ListSpacesResponse
        # Retrieve specified space by name.
        rpc :GetSpace, ::Indent::V1::GetSpaceRequest, ::Indent::V1::Space
        # Create a new Space to contain resources.
        rpc :CreateSpace, ::Indent::V1::CreateSpaceRequest, ::Indent::V1::Space
        # Update configuration of a Space.
        rpc :UpdateSpace, ::Indent::V1::UpdateSpaceRequest, ::Indent::V1::Space
        # Permanently destroy a Space.
        rpc :DeleteSpace, ::Indent::V1::DeleteSpaceRequest, ::Indent::V1::Space
        # SetPolicy for permissions in a Space.
        rpc :SetPolicy, ::Indent::V1::SetPolicyRequest, ::Indent::V1::Policy
        # GetPolicy for permissions in a Space.
        rpc :GetPolicy, ::Indent::V1::GetPolicyRequest, ::Indent::V1::Policy
      end

      Stub = Service.rpc_stub_class
    end
  end
end
