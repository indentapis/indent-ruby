# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: indent/v1/task_api.proto for package 'indent.v1'
# Original file comments:
#
# Copyright 2019 Indent Inc
#
#

require 'grpc'
require 'indent/v1/task_api_pb'

module Indent
  module V1
    module TaskAPI
      # Manages actionable items that can be assigned to a User to facilitate the completion of Petitions.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'indent.v1.TaskAPI'

        # List the Tasks within a space.
        rpc :ListTasks, ::Indent::V1::ListTasksRequest, ::Indent::V1::ListTasksResponse
        # Retrieve specified Task by name.
        rpc :GetTask, ::Indent::V1::GetTaskRequest, ::Indent::V1::Task
        # Create a new Task.
        rpc :CreateTask, ::Indent::V1::CreateTaskRequest, ::Indent::V1::Task
        # Update configuration of a Task.
        rpc :UpdateTask, ::Indent::V1::UpdateTaskRequest, ::Indent::V1::Task
        # Permanently destroy a Task.
        rpc :DeleteTask, ::Indent::V1::DeleteTaskRequest, ::Indent::V1::Task
      end

      Stub = Service.rpc_stub_class
    end
  end
end
