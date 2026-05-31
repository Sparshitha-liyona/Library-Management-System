📚 Library Management System

A web-based Library Management System built with **Spring MVC**, **Hibernate**, and **PostgreSQL**. It allows library staff to manage books, students, and book issue/return operations through a clean, structured backend.

## 🚀 Features

- **Book Management** – Add, update, and view books with copy tracking
- **Student Management** – Register and manage student records
- **Issue Books** – Issue books to students with automatic availability updates
- **Return Books** – Process returns and restore book availability
- **Duplicate Issue Prevention** – Prevents the same book from being issued twice to the same student
- **Issue History** – View all active and returned issue records
  
## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Framework | Spring MVC 6.2.x |
| Language | Java 8 |
| ORM | Hibernate 5.6 |
| Database | PostgreSQL |
| Boilerplate Reduction | Lombok |
| Build Tool | Maven |
| Packaging | WAR (Apache Tomcat) |
| Testing | JUnit 4 |

## 📁 Project Structure

Library-Management-System/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/jsp/library/
│       │       ├── controller/       # Spring MVC Controllers
│       │       ├── dao/              # Data Access Objects (BookDao, StudentDao, IssueDao)
│       │       ├── entity/           # JPA Entities (Book, Student, Issue)
│       │       └── service/          # Business Logic
│       │           ├── BookService.java
│       │           ├── StudentService.java
│       │           └── IssueService.java
│       ├── resources/
│       │   └── hibernate.cfg.xml     # Hibernate + DB configuration
│       └── webapp/
│           └── WEB-INF/
│               └── views/            # JSP pages
├── pom.xml
└── README.md

## ⚙️ Prerequisites

- Java 8+
- Maven 3.x
- PostgreSQL
- Apache Tomcat 9+


## 🔧 Setup & Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/Library-Management-System.git
   cd Library-Management-System
   ```

2. **Create the PostgreSQL database**
   ```sql
   CREATE DATABASE library_db;
   ```

3. **Configure database credentials**

   Update your Hibernate/Spring datasource config with your PostgreSQL credentials:
   ```properties
   db.url=jdbc:postgresql://localhost:5432/library_db

   ```

4. **Build the project**
   ```bash
   mvn clean install
   ```

5. **Deploy to Tomcat**

   Copy `target/Library-Management-System.war` to your Tomcat `webapps/` directory and start the server.

6. **Access the application**
   http://localhost:8080/Library-Management-System/
  

## 🔄 Core Business Logic

### Book Issuing (`IssueService`)
- Validates that both the book and student exist in the database
- Prevents duplicate issues — a student cannot borrow the same book twice while it is still active
- Decrements `availableCopies` on the book when issued
- Records `issueDate` and sets status to `ISSUED`

### Book Returning (`IssueService`)
- Looks up the active issue record by ID
- Sets `returnDate` to today and updates status to `RETURNED`
- Increments `availableCopies` back on the book

## 📦 Key Dependencies (`pom.xml`)

| Dependency | Version | Purpose |
|---|---|---|
| `spring-webmvc` | 6.2.15 | MVC framework |
| `hibernate-core` | 5.6.15 | ORM / DB interaction |
| `postgresql` | 42.6.0 | PostgreSQL JDBC driver |
| `lombok` | 1.18.44 | Reduces boilerplate (`@AllArgsConstructor`, etc.) |
| `junit` | 4.13.1 | Unit testing |

## 📸 Screenshots

> Add screenshots of your UI pages here (book list, issue form, student dashboard, etc.)

## 🤝 Contributing

Contributions are welcome!

1. Fork the project
2. Create your feature branch (git checkout -b feature/YourFeature)
3. Commit your changes (git commit -m 'Add YourFeature)
4. Push to the branch (git push origin feature/YourFeature)
5. Open a Pull Request



