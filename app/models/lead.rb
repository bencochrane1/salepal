require 'csv'

class Lead < ActiveRecord::Base

  # validates :lead, presence: true

    has_many :opportunities
    has_many :tasks
    has_many :notes
    has_many :emails
    has_many :contacts

    belongs_to :user

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Lead.create! row.to_hash
        end
    end

    def self.open_spreadsheet(file)
      case File.extname(file.original_filename)
      when ".csv" then Csv.new(file.path, nil, :ignore)
      when ".xls" then Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Excelx.new(file.path, nil, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
      end
    end


end