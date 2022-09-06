# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: indent/v1/petition_api.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/duration_pb'
require 'indent/audit/v1/resources_pb'
require 'indent/v1/resources_pb'
require 'indent/log/log_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("indent/v1/petition_api.proto", :syntax => :proto3) do
    add_message "indent.v1.ListPetitionsRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      repeated :among, :string, 4, json_name: "among"
      optional :label_selector, :string, 10, json_name: "labelSelector"
      optional :page_size, :int32, 50, json_name: "pageSize"
      optional :page_token, :string, 55, json_name: "pageToken"
    end
    add_message "indent.v1.ListPetitionsResponse" do
      repeated :petitions, :message, 1, "indent.v1.Petition", json_name: "petitions"
      optional :next_page_token, :string, 2, json_name: "nextPageToken"
    end
    add_message "indent.v1.GetPetitionRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :petition_name, :string, 2, json_name: "petitionName"
    end
    add_message "indent.v1.CreatePetitionRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :petition, :message, 40, "indent.v1.Petition", json_name: "petition"
    end
    add_message "indent.v1.UpdatePetitionRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :petition_name, :string, 3, json_name: "petitionName"
      optional :petition, :message, 40, "indent.v1.Petition", json_name: "petition"
    end
    add_message "indent.v1.DeletePetitionRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :petition_name, :string, 2, json_name: "petitionName"
    end
    add_message "indent.v1.StartPetitionRequest" do
      optional :petition, :message, 15, "indent.v1.Petition", json_name: "petition"
    end
    add_message "indent.v1.Petition" do
      optional :name, :string, 1, json_name: "name"
      optional :space_name, :string, 5, json_name: "spaceName"
      optional :meta, :message, 7, "indent.audit.v1.Meta", json_name: "meta"
      repeated :petitioners, :message, 9, "indent.audit.v1.Resource", json_name: "petitioners"
      repeated :resources, :message, 11, "indent.audit.v1.Resource", json_name: "resources"
      optional :default_duration, :message, 19, "google.protobuf.Duration", json_name: "defaultDuration"
      optional :reason, :string, 25, json_name: "reason"
      optional :state, :message, 30, "indent.v1.PetitionState", json_name: "state"
      optional :block, :message, 50, "indent.v1.Block", json_name: "block"
    end
    add_message "indent.v1.PetitionState" do
      optional :status, :message, 10, "indent.v1.PetitionStatus", json_name: "status"
      repeated :eventHistory, :message, 20, "indent.audit.v1.Event", json_name: "eventHistory"
      repeated :messages, :message, 30, "indent.v1.CannedMessage", json_name: "messages"
    end
    add_message "indent.v1.CannedMessage" do
      optional :channel, :string, 10, json_name: "channel"
      optional :timestamp, :string, 15, json_name: "timestamp"
    end
    add_message "indent.v1.PetitionStatus" do
      optional :phase, :string, 10, json_name: "phase"
    end
    add_message "indent.v1.ListPetitionClaimsRequest" do
      optional :space_name, :string, 13, json_name: "spaceName"
      optional :petition_name, :string, 17, json_name: "petitionName"
      optional :label_selector, :string, 25, json_name: "labelSelector"
      optional :page_size, :int32, 50, json_name: "pageSize"
      optional :page_token, :string, 55, json_name: "pageToken"
    end
    add_message "indent.v1.ListPetitionClaimsResponse" do
      repeated :claims, :message, 1, "indent.audit.v1.Event", json_name: "claims"
      optional :next_page_token, :string, 2, json_name: "nextPageToken"
    end
    add_message "indent.v1.GetPetitionClaimRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :petition_name, :string, 5, json_name: "petitionName"
      optional :claim_name, :string, 20, json_name: "claimName"
    end
    add_message "indent.v1.CreatePetitionClaimRequest" do
      optional :space_name, :string, 1, json_name: "spaceName"
      optional :petition_name, :string, 5, json_name: "petitionName"
      optional :claim, :message, 40, "indent.audit.v1.Event", json_name: "claim"
    end
  end
end

module Indent
  module V1
    ListPetitionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.ListPetitionsRequest").msgclass
    ListPetitionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.ListPetitionsResponse").msgclass
    GetPetitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.GetPetitionRequest").msgclass
    CreatePetitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.CreatePetitionRequest").msgclass
    UpdatePetitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.UpdatePetitionRequest").msgclass
    DeletePetitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.DeletePetitionRequest").msgclass
    StartPetitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.StartPetitionRequest").msgclass
    Petition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.Petition").msgclass
    PetitionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.PetitionState").msgclass
    CannedMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.CannedMessage").msgclass
    PetitionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.PetitionStatus").msgclass
    ListPetitionClaimsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.ListPetitionClaimsRequest").msgclass
    ListPetitionClaimsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.ListPetitionClaimsResponse").msgclass
    GetPetitionClaimRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.GetPetitionClaimRequest").msgclass
    CreatePetitionClaimRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("indent.v1.CreatePetitionClaimRequest").msgclass
  end
end
