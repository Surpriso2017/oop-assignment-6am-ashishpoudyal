class Student {
  int roolNum;
  String studName;
  int mark1;
  int mark2;
  int mark3;
  int? totalMarks;
  Student({
    required this.roolNum,
    required this.studName,
    required this.mark1,
    required this.mark2,
    required this.mark3,
  });
  calculateTotal() {
    totalMarks = mark1 + mark2 + mark3;
  }

  displayStudDetails() {
    print(
      "Roll Num: " +
          roolNum.toString() +
          "\n"
              "Student Name:" +
          studName.toString() +
          "\n"
              "TotalMarks:" +
          totalMarks.toString(),
    );
  }
}

class Account {
  int accountNo;
  String accountType;
  double accountBalance;

  Account(
      {required this.accountNo,
      required this.accountType,
      required this.accountBalance});
  withdraw(withdrawAmount) {
    accountBalance = accountBalance - withdrawAmount;
    print("\nRs" +
        withdrawAmount.toString() +
        "has been withdrawd from your account \n" +
        ""
            "Balance after withdraw is RS. " +
        accountBalance.toString() +
        "");
  }

  deposit(depositAmount) {
    accountBalance = accountBalance + depositAmount;
    print("\nRs" +
        depositAmount.toString() +
        "has been deposit from your account \n" +
        ""
            "Balance after deposit is RS. " +
        accountBalance.toString() +
        "");
  }

  getAccountDetails() {
    print("\nAccount No: " +
        accountNo.toString() +
        "\nAccountType: " +
        accountType.toString() +
        ""
            "\nAccount Balance: " +
        accountBalance.toString() +
        "");
  }
}

class Rectangle {
  int length;
  int breath;

  Rectangle({
    required this.length,
    required this.breath,
  });

  area() {
    double areas = (length * breath).toDouble();
    print("\narea of rectangle" + areas.toString());
  }

  perimeter() {
    double peremeters = (2 * (length + breath)).toDouble();
    print("\n peremeters of rectangle" + peremeters.toString());
  }
}

void main(List<String> args) {
  Student st1 = new Student(
    roolNum: 1,
    studName: "ram",
    mark1: 50,
    mark2: 40,
    mark3: 30,
  );
  st1.calculateTotal();
  st1.displayStudDetails();
  Account ac1 = new Account(
    accountNo: 156062023,
    accountType: "Saving",
    accountBalance: 10000,
  );
  ac1.withdraw(500);
  ac1.deposit(1500);
  ac1.getAccountDetails();
  Rectangle r1 = new Rectangle(
    length: 5,
    breath: 10,
  );
  r1.area();
  r1.perimeter();
}
