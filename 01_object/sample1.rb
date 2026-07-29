class BankAccount
  def initialize(balance)
    @balance = balance  # 外から直接は触れない
  end

  def deposit(amount)
    @balance += amount
  end

  def show_balance
    @balance
  end
end

account = BankAccount.new(100)
account.deposit(50)
puts account.show_balance  # => 150