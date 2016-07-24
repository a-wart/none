class Faucet < ApplicationRecord
    require 'csv';

    def self.import(file)

        CSV.foreach(file.path, headers: true, :col_sep => (";")) do |row|
            faucet_hash = row.to_hash
            faucet = Faucet.where(link: faucet_hash["link"])

            if faucet.count == 1
                faucet.first.update_attributes(faucet_hash)
            else
                Faucet.create!(faucet_hash)
            end
        end
    end
end
