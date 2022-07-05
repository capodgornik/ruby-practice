class Account
  attr_reader :name
  attr_reader :balance

  def initialize(name, balance =  100)
    @name = name
    @balance = balance
    pin
  end

  def display_balance(pin_number)
    puts pin_number == @pin ? "Balance: $#{@balance}." : pin_error
  end
  
   def withdraw(pin_number, amount)
    if pin_number == @pin
      if !overdraw(amount)
        @balance -= amount
      else
        puts "Error: Not enough money in account."
      end
      display_balance(pin_number)
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == @pin
      @balance += amount
      display_balance(pin_number)
    else
      puts pin_error
    end
  end
  
  def overdraw(amount)
    return amount > balance
  end

  private
  def pin()
    @pin = 1234
  end

  def pin_error()
    return "Access denied: incorrect PIN."
  end
end

class CheckingAccount < Account; end

class SavingsAccount < Account; end

checking_account = Account.new("Imladris", 1_000_000_000)
checking_account.withdraw(1234, 1_000_000_000)
checking_account.deposit(1234, 300)
checking_account.display_balance(4321)
