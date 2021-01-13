class Machine < ApplicationRecord

    def to_s
        "#{ self.brand } #{ self.model }"
    end

end
