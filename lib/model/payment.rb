# frozen_string_literal: true
require_relative 'base'

module Figo
  module Model
    # Object representing a Payment
    class Payment < Base
      DUMP_ATTRIBBUTES = %i[type name account_number bank_code amount currency purpose]

      # Internal figo Connect payment ID
      # @return [String]
      attr_accessor :payment_id

      # Internal figo Connect account ID
      # @return [String]
      attr_accessor :account_id

      # Payment type
      # @return [String]
      attr_accessor :type

      # Name of creditor or debtor
      # @return [String]
      attr_accessor :name

      # Account number of creditor or debtor
      # @return [String]
      attr_accessor :account_number

      # IBAN of creditor
      # @return [String]
      attr_accessor :iban

      # Bank code of creditor or debtor
      # @return [String]
      attr_accessor :bank_code

      # Bank name of creditor or debtor
      # @return [String]
      attr_accessor :bank_name

      # Icon of creditor or debtor bank
      # @return [String]
      attr_accessor :bank_icon

      # Icon of the creditor or debtor bank in other resolutions
      # @return [Hash]
      attr_accessor :bank_additional_icons

      # Order amount
      # @return [DecNum]
      attr_accessor :amount

      # Three-character currency code
      # @return [String]
      attr_accessor :currency

      # Purpose text
      # @return [String]
      attr_accessor :purpose

      # Timestamp of submission to the bank server
      # @return [DateTime]
      attr_accessor :submitted_at
      attr_accessor :submission_timestamp

      # Internal creation timestamp on the figo Connect server
      # @return [DateTime]
      attr_accessor :created_at
      attr_accessor :creation_timestamp

      # Internal modification timestamp on the figo Connect server
      # @return [DateTime]
      attr_accessor :modified_at
      attr_accessor :modification_timestamp

      # ID of the transaction corresponding to this payment.
      # This field is only set if the payment has been matched to a transaction
      # @return [String]
      attr_accessor :transaction_id
    end
  end
end