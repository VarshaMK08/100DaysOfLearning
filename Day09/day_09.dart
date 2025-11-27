class User {
  String name;
  String email;

  User(this.name, this.email);

  void showDetails() {
    print("Name: $name");
    print("Email: $email");
  }
}

class AdminUser extends User {
  String role;

  AdminUser(String name, String email, this.role) : super(name, email);

  @override
  void showDetails() {
    super.showDetails();
    print("Role: $role");
  }

  void deleteUser() {
    print("$name can delete users");
  }
}

void main() {
  AdminUser admin = AdminUser("Varsha", "varsha@mail.com", "Admin");

  admin.showDetails();
  admin.deleteUser();
}
