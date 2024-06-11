-- Membuat tabel Genre
CREATE TABLE Genre (
    id_genre SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Membuat tabel Books
CREATE TABLE Books (
    id_book SERIAL PRIMARY KEY,
    genre_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255) NOT NULL,
    publish_year INT NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES Genre(id_genre)
);

-- Membuat tabel Users
CREATE TABLE Users (
    id_user SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    address TEXT,
    phone VARCHAR(20),
    birth_date DATE
);

-- Membuat tabel Admins
CREATE TABLE Admins (
    id_admin SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

-- Membuat tabel Loans
CREATE TABLE Loans (
    id_loan SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    deadline_date DATE NOT NULL,
    date_loan DATE NOT NULL,
    date_return DATE,
    status_loan VARCHAR(20) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id_user),
    FOREIGN KEY (book_id) REFERENCES Books(id_book)
);

-- Membuat tabel Book_Request
CREATE TABLE Book_Request (
    id_request SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255) NOT NULL,
    publish_year INT NOT NULL,
    status_request VARCHAR(20) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id_user)
);

-- Memasukkan data ke dalam tabel Genre
INSERT INTO Genre (genre_name) VALUES
('Fiksi'),
('Non-Fiksi'),
('Misteri'),
('Sejarah'),
('Sains'),
('Biografi'),
('Fantasi');

-- Memasukkan data ke dalam tabel Books
INSERT INTO Books (genre_id, title, author, publisher, publish_year) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 2005),
(1, 'Negeri 5 Menara', 'A. Fuadi', 'Gramedia Pustaka Utama', 2009),
(2, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', 2011),
(3, 'Gadis Kretek', 'Ratih Kumala', 'Gramedia Pustaka Utama', 2012),
(4, 'Sejarah Dunia yang Disembunyikan', 'Jonathan Black', 'Gramedia Pustaka Utama', 2010),
(5, 'The Theory of Everything', 'Stephen Hawking', 'Transworld Publishers', 2002),
(6, 'Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', 2011),
(7, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Bloomsbury', 1997);

-- Memasukkan data ke dalam tabel Users
INSERT INTO Users (name, email, password, address, phone, birth_date) VALUES
('John Doe', 'john.doe@example.com', 'password123', '123 Main St, Anytown', '123-456-7890', '1990-01-01'),
('Jane Smith', 'jane.smith@example.com', 'password456', '456 Elm St, Othertown', '987-654-3210', '1995-05-15'),
('Alice Johnson', 'alice.johnson@example.com', 'password789', '789 Oak St, Anothertown', '555-555-5555', '1985-10-10');

-- Memasukkan data ke dalam tabel Admins
INSERT INTO Admins (name, email, password, phone) VALUES
('Admin1', 'admin1@example.com', 'adminpass1', '111-222-3333'),
('Admin2', 'admin2@example.com', 'adminpass2', '444-555-6666');

-- Memasukkan data ke dalam tabel Loans (peminjaman)
INSERT INTO Loans (user_id, book_id, deadline_date, date_loan, date_return, status_loan) VALUES
(1, 1, '2024-06-01', '2024-05-15', NULL, 'Dipinjam'),
(2, 2, '2024-06-15', '2024-06-01', NULL, 'Dipinjam');

-- Memasukkan data ke dalam tabel Book_Request (permintaan buku)
INSERT INTO Book_Request (user_id, title, author, publisher, publish_year, status_request) VALUES
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 1925, 'Menunggu Persetujuan'),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960, 'Menunggu Persetujuan');
