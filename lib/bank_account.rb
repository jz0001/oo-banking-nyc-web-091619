require "pry"

class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance += amount
    end

    def display_balance
        # binding.pry
        "Your balance is $#{self.balance}."
    end

    def valid?
        if status == "open" && balance > 0
            true
        else
            false
        end
# binding.pry
    end

    def close_account
        @status = "closed"
    end



end
