# frozen_string_literal: true
require_relative '../model/bank'

module Figo
  # Retrieve specific bank
  #
  # @return [Bank] bank object
  def get_bank(bank_id)
    query_api_object Model::Bank, "/rest/banks/#{bank_id}"
  end

  # Modify bank
  #
  # @param bank [Bank] modified bank object
  # @return [Bank] modified bank object returned by server
  def modify_bank(bank)
    query_api_object Model::Bank, "/rest/banks/#{bank.bank_id}", bank.to_hash, 'PUT'
  end

  # Remove stored PIN from bank
  #
  # @param bank [Bank, String] the bank whose stored PIN should be removed or its ID
  # @return [nil]
  def remove_bank_pin(bank)
    path = bank.is_a?(String) ? "/rest/banks/#{bank}/remove_pin" : "/rest/banks/#{bank.bank_id}/remove_pin"
    query_api path, nil, 'POST'
  end

  # Get bank information from standard bank code
  #
  # @param country_code [String]
  # @param bank_code [String] bank sort code (Bankleitzahl)
  # @return [Hash] JSON response
  def find_bank(bank_code, country_code = 'DE')
    query_api "/rest/catalog/banks/#{country_code}/#{bank_code}"
  end
end
