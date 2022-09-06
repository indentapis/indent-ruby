# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: indent/v1/resources.proto

require 'google/protobuf'

require 'google/protobuf/struct_pb'
require 'google/type/expr_pb'
require 'indent/jsonschema/draft07/jsonschema_pb'
require 'indent/log/log_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("indent/v1/resources.proto", :syntax => :proto3) do
    add_message "indent.v1.Binding" do
      optional :role, :string, 1, json_name: "role"
      repeated :members, :string, 2, json_name: "members"
    end
    add_message "indent.v1.Block" do
      optional :name, :string, 1, json_name: "name"
      optional :space_name, :string, 2, json_name: "spaceName"
      optional :display_name, :string, 3, json_name: "displayName"
      map :labels, :string, :string, 4
      repeated :on, :message, 7, "indent.v1.Trigger", json_name: "on"
      optional :props, :message, 15, "google.protobuf.Struct", json_name: "props"
      optional :exec, :message, 20, "indent.v1.Exec", json_name: "exec"
      map :spec, :string, :message, 25, "indent.v1.SpecField"
      optional :state, :message, 30, "google.protobuf.Struct", json_name: "state"
      optional :ui, :message, 35, "google.protobuf.Struct", json_name: "ui"
    end
    add_message "indent.v1.Column" do
      optional :type, :string, 1, json_name: "type"
      optional :name, :string, 2, json_name: "name"
      optional :type_signature, :message, 3, "google.protobuf.Value", json_name: "typeSignature"
    end
    add_message "indent.v1.Credential" do
      optional :name, :string, 1, json_name: "name"
      map :labels, :string, :string, 2
      map :materials, :string, :bytes, 3
    end
    add_message "indent.v1.Watch" do
      map :match_labels, :string, :string, 10
    end
    add_message "indent.v1.Error" do
      optional :message, :string, 1, json_name: "message"
      optional :sql_state, :string, 2, json_name: "sqlState"
      optional :error_code, :int64, 3, json_name: "errorCode"
      optional :error_name, :string, 4, json_name: "errorName"
      optional :error_type, :string, 5, json_name: "errorType"
      optional :error_location, :message, 6, "indent.v1.ErrorLocation", json_name: "errorLocation"
      optional :failure_info, :message, 7, "indent.v1.FailureInfo", json_name: "failureInfo"
    end
    add_message "indent.v1.ErrorLocation" do
      optional :line_number, :int64, 1, json_name: "lineNumber"
      optional :column_number, :int64, 2, json_name: "columnNumber"
    end
    add_message "indent.v1.Exec" do
      optional :name, :string, 1, json_name: "name"
    end
    add_message "indent.v1.FailureInfo" do
      optional :type, :string, 1, json_name: "type"
      optional :message, :string, 2, json_name: "message"
      optional :cause, :message, 3, "indent.v1.FailureInfo", json_name: "cause"
      repeated :suppressed, :message, 4, "indent.v1.FailureInfo", json_name: "suppressed"
      repeated :stack, :string, 5, json_name: "stack"
      optional :error_location, :message, 6, "indent.v1.ErrorLocation", json_name: "errorLocation"
    end
    add_message "indent.v1.SpecField" do
      oneof :eval do
        optional :expr, :string, 1, json_name: "expr"
        optional :val, :message, 2, "google.protobuf.Value", json_name: "val"
        optional :block, :message, 3, "indent.v1.Block", json_name: "block"
      end
    end
    add_message "indent.v1.Storage" do
      optional :temporary, :bool, 1, json_name: "temporary"
      optional :external, :bool, 2, json_name: "external"
      optional :database_name, :string, 3, json_name: "databaseName"
      optional :table_name, :string, 4, json_name: "tableName"
      repeated :partitions, :message, 10, "indent.v1.Field", json_name: "partitions"
      optional :format, :string, 20, json_name: "format"
      optional :location, :string, 30, json_name: "location"
      map :table_properties, :string, :string, 31
      optional :sync, :message, 40, "indent.v1.Sync", json_name: "sync"
    end
    add_message "indent.v1.Sync" do
      optional :location, :string, 1, json_name: "location"
      optional :credential, :string, 2, json_name: "credential"
    end
    add_message "indent.v1.JsonnetTransform" do
      optional :name, :string, 1, json_name: "name"
      optional :body, :bytes, 2, json_name: "body"
    end
    add_message "indent.v1.Lifecycle" do
      optional :create, :bool, 1, json_name: "create"
      optional :delete, :bool, 7, json_name: "delete"
    end
    add_message "indent.v1.Props" do
      map :contents, :string, :message, 1, "google.protobuf.Value"
    end
    add_message "indent.v1.Query" do
      optional :content, :string, 1, json_name: "content"
    end
    add_message "indent.v1.ResolveOpts" do
      repeated :labels, :string, 5, json_name: "labels"
    end
    add_message "indent.v1.Result" do
      optional :id, :string, 1, json_name: "id"
      optional :info_uri, :string, 2, json_name: "infoUri"
      optional :partial_cancel_uri, :string, 3, json_name: "partialCancelUri"
      optional :next_uri, :string, 4, json_name: "nextUri"
      repeated :columns, :message, 5, "indent.v1.Column", json_name: "columns"
      repeated :data, :message, 6, "google.protobuf.Value", json_name: "data"
      optional :stats, :message, 7, "indent.v1.Stats", json_name: "stats"
      optional :error, :message, 8, "indent.v1.Error", json_name: "error"
      repeated :warnings, :message, 9, "indent.v1.Warning", json_name: "warnings"
      optional :update_type, :string, 10, json_name: "updateType"
      optional :update_count, :int64, 11, json_name: "updateCount"
      repeated :body, :message, 30, "google.protobuf.Value", json_name: "body"
    end
    add_message "indent.v1.Stats" do
      optional :state, :string, 1, json_name: "state"
      optional :queued, :bool, 2, json_name: "queued"
      optional :scheduled, :bool, 3, json_name: "scheduled"
      optional :nodes, :int32, 4, json_name: "nodes"
      optional :total_splits, :int32, 5, json_name: "totalSplits"
      optional :queued_splits, :int32, 6, json_name: "queuedSplits"
      optional :running_splits, :int32, 7, json_name: "runningSplits"
      optional :completed_splits, :int32, 8, json_name: "completedSplits"
      optional :cpu_time_millis, :float, 9, json_name: "cpuTimeMillis"
      optional :wall_time_millis, :float, 10, json_name: "wallTimeMillis"
      optional :queued_time_millis, :float, 11, json_name: "queuedTimeMillis"
      optional :elapsed_time_millis, :float, 12, json_name: "elapsedTimeMillis"
      optional :processed_rows, :float, 13, json_name: "processedRows"
      optional :processed_bytes, :float, 14, json_name: "processedBytes"
      optional :peak_memory_bytes, :float, 15, json_name: "peakMemoryBytes"
      optional :spilled_bytes, :float, 16, json_name: "spilledBytes"
      optional :root_stage, :message, 17, "google.protobuf.Value", json_name: "rootStage"
      optional :progress_percentage, :double, 18, json_name: "progressPercentage"
    end
    add_message "indent.v1.Schema" do
      optional :version, :string, 1, json_name: "version"
      repeated :fields, :message, 2, "indent.v1.Field", json_name: "fields"
    end
    add_message "indent.v1.Transform" do
      optional :jsonnet, :message, 1, "indent.v1.JsonnetTransform", json_name: "jsonnet"
    end
    add_message "indent.v1.Trigger" do
      optional :output, :string, 1, json_name: "output"
      oneof :condition do
        optional :lifecycle, :message, 5, "indent.v1.Lifecycle", json_name: "lifecycle"
        optional :cron, :string, 9, json_name: "cron"
        optional :watch, :message, 13, "indent.v1.Watch", json_name: "watch"
      end
    end
    add_message "indent.v1.TransformStep" do
      optional :source, :string, 1, json_name: "source"
      optional :format, :enum, 2, "indent.v1.TransformFormat", json_name: "format"
      optional :transform, :message, 3, "indent.v1.Transform", json_name: "transform"
    end
    add_message "indent.v1.Field" do
      optional :name, :string, 1, json_name: "name"
      optional :field_type, :enum, 2, "indent.v1.FieldType", json_name: "fieldType"
      optional :array, :message, 3, "indent.v1.Field", json_name: "array"
      repeated :fields, :message, 4, "indent.v1.Field", json_name: "fields"
    end
    add_message "indent.v1.Form" do
      optional :form_schema, :message, 1, "indent.jsonschema.draft07.JSONSchema", json_name: "formSchema"
      optional :ui_schema, :message, 2, "google.protobuf.Struct", json_name: "uiSchema"
      optional :form_data, :message, 3, "google.protobuf.Struct", json_name: "formData"
      optional :form_schema_type, :string, 4, json_name: "formSchemaType"
    end
    add_message "indent.v1.Warning" do
      optional :warning_code, :message, 1, "indent.v1.WarningCode", json_name: "warningCode"
      optional :message, :string, 2, json_name: "message"
    end
    add_message "indent.v1.WarningCode" do
      optional :code, :int64, 1, json_name: "code"
      optional :name, :string, 2, json_name: "name"
    end
    add_message "indent.v1.PolicyBase" do
      optional :selector, :message, 5, "indent.v1.Selector", json_name: "selector"
      repeated :conditions, :message, 15, "google.type.Expr", json_name: "conditions"
    end
    add_message "indent.v1.Selector" do
      map :match_labels, :string, :string, 20
      repeated :match_expressions, :message, 2, "indent.v1.LabelSelectorRequirement", json_name: "matchExpressions"
    end
    add_message "indent.v1.LabelSelectorRequirement" do
      optional :key, :string, 1, json_name: "key"
      optional :operator, :string, 2, json_name: "operator"
      repeated :values, :string, 3, json_name: "values"
    end
    add_enum "indent.v1.TransformFormat" do
      value :JSON, 0
      value :CSV, 1
    end
    add_enum "indent.v1.FieldType" do
      value :INVALID, 0
      value :TINYINT, 1
      value :SMALLINT, 2
      value :INTEGER, 3
      value :BIGINT, 4
      value :FLOAT, 5
      value :DOUBLE, 6
      value :DECIMAL, 7
      value :NUMERIC, 8
      value :TIMESTAMP, 21
      value :DATE, 22
      value :INTERVAL, 23
      value :STRING, 41
      value :VARCHAR, 42
      value :CHAR, 43
      value :BOOLEAN, 61
      value :BINARY, 62
      value :ARRAY, 81
      value :MAP, 82
      value :STRUCT, 83
      value :UNIONTYPE, 84
    end
  end
end

module Indent
  module V1
    Binding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Binding").msgclass
    Block = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Block").msgclass
    Column = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Column").msgclass
    Credential = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Credential").msgclass
    Watch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Watch").msgclass
    Error = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Error").msgclass
    ErrorLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.ErrorLocation").msgclass
    Exec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Exec").msgclass
    FailureInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.FailureInfo").msgclass
    SpecField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.SpecField").msgclass
    Storage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Storage").msgclass
    Sync = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Sync").msgclass
    JsonnetTransform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.JsonnetTransform").msgclass
    Lifecycle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Lifecycle").msgclass
    Props = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Props").msgclass
    Query = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Query").msgclass
    ResolveOpts = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.ResolveOpts").msgclass
    Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Result").msgclass
    Stats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Stats").msgclass
    Schema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Schema").msgclass
    Transform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Transform").msgclass
    Trigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Trigger").msgclass
    TransformStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.TransformStep").msgclass
    Field = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Field").msgclass
    Form = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Form").msgclass
    Warning = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Warning").msgclass
    WarningCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.WarningCode").msgclass
    PolicyBase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.PolicyBase").msgclass
    Selector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Selector").msgclass
    LabelSelectorRequirement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.LabelSelectorRequirement").msgclass
    TransformFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.TransformFormat").enummodule
    FieldType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.FieldType").enummodule
  end
end
