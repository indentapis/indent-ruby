# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: indent/v1/webhook_api.proto for package 'indent.v1'
# Original file comments:
#
# Copyright 2021 Indent Inc
#
#

require 'grpc'
require 'indent/v1/webhook_api_pb'

module Indent
  module V1
    module WebhookAPI
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'indent.v1.WebhookAPI'

        rpc :ListWebhooks, ::Indent::V1::ListWebhooksRequest, ::Indent::V1::ListWebhooksResponse
        # Retrieve specified Webhook by name.
        rpc :GetWebhook, ::Indent::V1::GetWebhookRequest, ::Indent::V1::Webhook
        # Create a new Webhook.
        rpc :CreateWebhook, ::Indent::V1::CreateWebhookRequest, ::Indent::V1::Webhook
        # Update configuration of a Webhook.
        rpc :UpdateWebhook, ::Indent::V1::UpdateWebhookRequest, ::Indent::V1::Webhook
        # Permanently destroy a Webhook.
        rpc :DeleteWebhook, ::Indent::V1::DeleteWebhookRequest, ::Indent::V1::Webhook
        # List the WebhookPolicies in the given space.
        rpc :ListPolicies, ::Indent::V1::ListWebhookPoliciesRequest, ::Indent::V1::ListWebhookPoliciesResponse
        # Retrieve specified WebhookPolicy by name and Space.
        rpc :GetPolicy, ::Indent::V1::GetWebhookPolicyRequest, ::Indent::V1::WebhookPolicy
        # Create a new WebhookPolicy within a space.
        rpc :CreatePolicy, ::Indent::V1::CreateWebhookPolicyRequest, ::Indent::V1::WebhookPolicy
        # Update an existing WebhookPolicy.
        rpc :UpdatePolicy, ::Indent::V1::UpdateWebhookPolicyRequest, ::Indent::V1::WebhookPolicy
        # Permanently destroy a WebhookPolicy.
        rpc :DeletePolicy, ::Indent::V1::DeleteWebhookPolicyRequest, ::Indent::V1::WebhookPolicy
        # Test how WebhookPolicies apply to Webhooks.
        rpc :TestPolicy, ::Indent::V1::TestWebhookPolicyRequest, ::Indent::V1::TestWebhookPolicyResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
