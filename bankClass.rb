class Account
  attr_reader :name
  attr_reader :balance

  def initialize(name, balance =  100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    puts pin_number == @pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if !overdraw(amount) && pin_number == pin
      @balance -= amount
      display_balance(pin_number)
    elsif overdraw(amount) && pin_number == pin
      puts "Error: Not enough money in account"
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      display_balance(pin_number)
    else
      puts pin_error
    end
  end
  
  def overdraw(amount)
    if amount > balance
      return true
    else
       return false
    end
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
