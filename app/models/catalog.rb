class Catalog < ApplicationRecord
  require 'catalog'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Catalog.create! row.to_hash
    end
  end
end
