require 'grpc'
require 'api/indent/audit/v1/resources_pb'
require 'api/indent/v1/petition_api_services_pb'
require 'api/indent/v1/resource_api_services_pb'

module Indent
  class Client
    def initialize(config)
      @endpoint = "#{config.host}:#{config.port}"
      @credentials = config.credentials
      @timeout = config.timeout
    end

    def create_petition(config_id, space, labels, petitioner, resources)
      req = Indent::V1::CreatePetitionRequest.new(
        space_name: space,
        petition: Indent::V1::Petition.new(
          meta: Indent::Audit::V1::Meta.new(
            labels: petition_labels(config_id, labels)
          ),
          petitioners: [
            petitioner
          ]
        ),
        resources: resources
      )
      client_petition.create_petition(req)
    rescue ::GRPC::AlreadyExists => e
      raise Indent::PetitionAlreadyExistsError, e.details
    end

    def client_petition
      @client_petition ||= Indent::V1::PetitionAPI::Stub.new(
        @endpoint,
        @credentials,
        timeout: @timeout
      )
    end

    private

    def petition_labels(labels, config_id)
      labels["indent.com/app/cmd/name"] = "access"
      labels["indent.com/app/config/id"] = config_id
    end
  end
end