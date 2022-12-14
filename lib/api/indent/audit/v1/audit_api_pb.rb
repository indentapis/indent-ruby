# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: indent/audit/v1/audit_api.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/empty_pb'
require 'indent/audit/v1/resources_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("indent/audit/v1/audit_api.proto", :syntax => :proto3) do
    add_message "indent.audit.v1.WriteRequest" do
      optional :target, :message, 1, "indent.audit.v1.Target", json_name: "target"
      optional :async, :bool, 5, json_name: "async"
      repeated :events, :message, 20, "indent.audit.v1.Event", json_name: "events"
    end
    add_message "indent.audit.v1.WriteEventRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :provider_name, :string, 2, json_name: "providerName"
      optional :input_name, :string, 3, json_name: "inputName"
      optional :event, :message, 4, "indent.audit.v1.Event", json_name: "event"
    end
    add_message "indent.audit.v1.WriteBatchRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :provider_name, :string, 2, json_name: "providerName"
      optional :input_name, :string, 3, json_name: "inputName"
      optional :async, :bool, 4, json_name: "async"
      repeated :events, :message, 20, "indent.audit.v1.Event", json_name: "events"
    end
  end
end

module Indent
  module Audit
    module V1
      WriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.WriteRequest").msgclass
      WriteEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.WriteEventRequest").msgclass
      WriteBatchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.WriteBatchRequest").msgclass
    end
  end
end
