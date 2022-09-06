# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: indent/audit/v1/resources.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'indent/log/log_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("indent/audit/v1/resources.proto", :syntax => :proto3) do
    add_message "indent.audit.v1.Event" do
      optional :event, :string, 1, json_name: "event"
      optional :meta, :message, 2, "indent.audit.v1.Meta", json_name: "meta"
      optional :reason, :string, 3, json_name: "reason"
      optional :timestamp, :message, 5, "google.protobuf.Timestamp", json_name: "timestamp"
      optional :id, :string, 9, json_name: "id"
      optional :external_id, :string, 13, json_name: "externalId"
      optional :session_id, :string, 20, json_name: "sessionId"
      optional :actor, :message, 27, "indent.audit.v1.Resource", json_name: "actor"
      repeated :resources, :message, 30, "indent.audit.v1.Resource", json_name: "resources"
      optional :_original, :bytes, 35, json_name: "Original"
    end
    add_message "indent.audit.v1.Meta" do
      optional :name, :string, 1, json_name: "name"
      optional :display_name, :string, 5, json_name: "displayName"
      map :labels, :string, :string, 20
      optional :create_time, :message, 30, "google.protobuf.Timestamp", json_name: "createTime"
      optional :update_time, :message, 31, "google.protobuf.Timestamp", json_name: "updateTime"
      optional :delete_time, :message, 32, "google.protobuf.Timestamp", json_name: "deleteTime"
      optional :expire_time, :message, 35, "google.protobuf.Timestamp", json_name: "expireTime"
      optional :start_time, :message, 40, "google.protobuf.Timestamp", json_name: "startTime"
      optional :end_time, :message, 45, "google.protobuf.Timestamp", json_name: "endTime"
    end
    add_message "indent.audit.v1.Resource" do
      optional :id, :string, 1, json_name: "id"
      optional :display_name, :string, 2, json_name: "displayName"
      repeated :alt_ids, :string, 3, json_name: "altIds"
      optional :kind, :string, 4, json_name: "kind"
      optional :email, :string, 5, json_name: "email"
      map :labels, :string, :string, 10
    end
    add_message "indent.audit.v1.Target" do
      optional :name, :string, 1, json_name: "name"
      optional :kind, :enum, 2, "indent.audit.v1.Target.Kind", json_name: "kind"
    end
    add_enum "indent.audit.v1.Target.Kind" do
      value :INPUT, 0
      value :OUTPUT, 1
    end
  end
end

module Indent
  module Audit
    module V1
      Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.Event").msgclass
      Meta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.Meta").msgclass
      Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.Resource").msgclass
      Target = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.Target").msgclass
      Target::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.audit.v1.Target.Kind").enummodule
    end
  end
end