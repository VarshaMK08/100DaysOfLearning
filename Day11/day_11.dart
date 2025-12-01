class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double salary, this.bonus) : super(name, salary);

  double totalSalary() {
    return salary + bonus;
  }
}

void main() {
  Manager m = Manager("Varsha", 50000, 15000);
  print("Total salary: ${m.totalSalary()}");
}
