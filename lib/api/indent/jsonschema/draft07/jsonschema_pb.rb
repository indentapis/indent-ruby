# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: indent/jsonschema/draft07/jsonschema.proto

require 'google/protobuf'

require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("indent/jsonschema/draft07/jsonschema.proto", :syntax => :proto3) do
    add_message "indent.jsonschema.draft07.JSONSchema" do
      optional :id, :string, 1, json_name: "$id"
      optional :schema, :string, 2, json_name: "$schema"
      optional :ref, :string, 3, json_name: "$ref"
      optional :comment, :string, 4, json_name: "$comment"
      optional :title, :string, 5, json_name: "title"
      optional :description, :string, 6, json_name: "description"
      optional :default, :message, 7, "google.protobuf.Value", json_name: "default"
      optional :read_only, :bool, 8, json_name: "readOnly"
      repeated :examples, :message, 9, "google.protobuf.Value", json_name: "examples"
      optional :min_length, :uint64, 16, json_name: "minLength"
      optional :items, :message, 19, "indent.jsonschema.draft07.JSONSchema", json_name: "items"
      repeated :required, :string, 26, json_name: "required"
      map :properties, :string, :message, 29, "indent.jsonschema.draft07.JSONSchema"
      optional :type, :string, 35, json_name: "type"
      repeated :all_of, :message, 42, "indent.jsonschema.draft07.JSONSchema", json_name: "allOf"
    end
  end
end

module Indent
  module Jsonschema
    module Draft07
      JSONSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.jsonschema.draft07.JSONSchema").msgclass
    end
  end
end
