class BankAccount {
  int accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, {this.balance = 0});

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$$amount. New balance is \$$balance.");
    } else {
      print("Invalid amount for deposit.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrew \$$amount. New balance is \$$balance.");
    } else {
      print("Invalid amount for withdrawal.");
    }
  }
}

void main() {
  BankAccount account1 = BankAccount(123456, "John Doe");
  BankAccount account2 = BankAccount(654321, "Jane Smith");

  account1.deposit(1000);
  account1.withdraw(500);
  account2.deposit(1500);
  account2.withdraw(200);

  print(
      "Final balance for ${account1.accountHolderName}: \$${account1.balance}");
  print(
      "Final balance for ${account2.accountHolderName}: \$${account2.balance}");
}
