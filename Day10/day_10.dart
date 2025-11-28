class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance!");
    }
  }

  void showBalance() {
    print("Current Balance: $balance");
  }
}

void main() {
  BankAccount acc = BankAccount("12345", 1000);

  acc.deposit(500);
  acc.withdraw(200);
  acc.showBalance();
}
