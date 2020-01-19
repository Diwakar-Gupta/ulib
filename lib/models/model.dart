class Member {
  String firstname, lastname, email, status;
  int id;
  Category type;

  Member(
      {this.firstname,
      this.lastname,
      this.email,
      this.status,
      this.id,
      this.type});
}

class Category {
  String name;
  int maxIssueBook, maxLendingDay, finePerDay;

  Category({this.name, this.maxIssueBook, this.maxLendingDay, this.finePerDay});
}

class Book {
  String ISBN;

  String title, subject, author, publisher, language;
  int numberOfPages;

  Book({this.ISBN, this.title, this.subject, this.author, this.publisher,
      this.language});
}

class BookItem {
  Book ISBN;
  String barcode, format;
  bool isReferenceOnly;
  int price;

  BookItem(
      this.ISBN, this.barcode, this.format, this.isReferenceOnly, this.price);
}
var bookitemformats = ['HARD_COVER', 'CD'];
var status = ['ACTIVE', 'BLOCKLISTED', 'CLOSED'];

var categories = [
  Category(name: 'STUDENT', maxIssueBook: 2, maxLendingDay: 14, finePerDay: 14),
  Category(name: 'FACULTY', maxIssueBook: 3, maxLendingDay: 20, finePerDay: 39)
];

var members = [
  Member(
      firstname: 'Diwakar',
      lastname: 'Gupta',
      email: 'fghj@dfghj.fghj',
      status: 'ACTIVE',
      id: 45,
      type: categories[0]),
  Member(
      firstname: 'Atul',
      lastname: 'Verma',
      email: 'ghui@tyu.vbn',
      status: 'CLOSED',
      id: 345,
      type: categories[1])
];
