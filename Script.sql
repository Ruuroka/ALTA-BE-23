-- Membuat tabel Genre terlebih dahulu
CREATE TABLE Genre (
    id_genre INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    deskripsi TEXT
);

-- Membuat tabel Member
CREATE TABLE Member (
    id_member INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    tanggal_daftar DATE NOT NULL
);

-- Membuat tabel Buku setelah tabel Genre
CREATE TABLE Buku (
    id_buku INT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    penulis VARCHAR(255) NOT NULL,
    tahun_terbit INT NOT NULL,
    id_genre INT NOT NULL,
    jumlah_tersedia INT NOT NULL,
    FOREIGN KEY (id_genre) REFERENCES Genre(id_genre)
);

-- Membuat tabel Admin
CREATE TABLE Admin (
    id_admin INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Membuat tabel Peminjaman setelah tabel Member dan Buku
CREATE TABLE Peminjaman (
    id_peminjaman INT PRIMARY KEY,
    id_member INT NOT NULL,
    id_buku INT NOT NULL,
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE,
    FOREIGN KEY (id_member) REFERENCES Member(id_member),
    FOREIGN KEY (id_buku) REFERENCES Buku(id_buku)
);

INSERT INTO Genre (id_genre, nama, deskripsi) VALUES
(1, 'Fiksi', 'Karya sastra yang menceritakan kejadian imajiner atau khayalan.'),
(2, 'Non-Fiksi', 'Karya tulis yang memberikan informasi faktual dan nyata.'),
(3, 'Misteri', 'Buku yang berfokus pada pemecahan teka-teki atau kasus kriminal.'),
(4, 'Sejarah', 'Buku yang menceritakan peristiwa masa lalu dengan detail historis.'),
(5, 'Sains', 'Buku yang menjelaskan konsep-konsep ilmiah.'),
(6, 'Biografi', 'Buku yang menceritakan kehidupan seseorang.'),
(7, 'Fantasi', 'Karya sastra yang mengandung elemen magis dan dunia imajiner.');

INSERT INTO Buku (id_buku, judul, penulis, tahun_terbit, id_genre, jumlah_tersedia) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 2005, 1, 5),
(2, 'Negeri 5 Menara', 'A. Fuadi', 2009, 1, 3),
(3, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2011, 2, 2),
(4, 'Gadis Kretek', 'Ratih Kumala', 2012, 3, 4),
(5, 'Sejarah Dunia yang Disembunyikan', 'Jonathan Black', 2010, 4, 6),
(6, 'The Theory of Everything', 'Stephen Hawking', 2002, 5, 2),
(7, 'Steve Jobs', 'Walter Isaacson', 2011, 6, 5),
(8, 'Harry Potter and the Sorcerer', 'J.K. Rowling', 1997, 7, 7);

INSERT INTO Member (id_member, nama, email, password, tanggal_daftar) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '2024-01-01'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456', '2024-02-15'),
(3, 'Alice Johnson', 'alice.johnson@example.com', 'password789', '2024-03-10');


INSERT INTO Admin (id_admin, nama, email, password) VALUES
(1, 'Admin1', 'admin1@library.com', 'adminpass1'),
(2, 'Admin2', 'admin2@library.com', 'adminpass2');

INSERT INTO Peminjaman (id_peminjaman, id_member, id_buku, tanggal_pinjam, tanggal_kembali) VALUES
(1, 1, 1, '2024-04-01', '2024-04-15'),
(2, 2, 2, '2024-05-01', '2024-05-15'),
(3, 3, 3, '2024-06-01', NULL);  -- Buku ini belum dikembalikan


select * from admin;


-- Menambahkan 5 data genre
INSERT INTO Genre (genre_name) VALUES
('Drama'),
('Thriller'),
('Romance'),
('Adventure'),
('Science Fiction');

-- Menambahkan 5 data buku untuk masing-masing genre
-- Drama
INSERT INTO Books (genre_id, title, author, publisher, publish_year) VALUES
(1, 'Drama Book 1', 'Author A', 'Publisher A', 2001),
(1, 'Drama Book 2', 'Author B', 'Publisher B', 2002),
(1, 'Drama Book 3', 'Author C', 'Publisher C', 2003),
(1, 'Drama Book 4', 'Author D', 'Publisher D', 2004),
(1, 'Drama Book 5', 'Author E', 'Publisher E', 2005);

-- Thriller
INSERT INTO Books (genre_id, title, author, publisher, publish_year) VALUES
(2, 'Thriller Book 1', 'Author F', 'Publisher F', 2006),
(2, 'Thriller Book 2', 'Author G', 'Publisher G', 2007),
(2, 'Thriller Book 3', 'Author H', 'Publisher H', 2008),
(2, 'Thriller Book 4', 'Author I', 'Publisher I', 2009),
(2, 'Thriller Book 5', 'Author J', 'Publisher J', 2010);

-- Romance
INSERT INTO Books (genre_id, title, author, publisher, publish_year) VALUES
(3, 'Romance Book 1', 'Author K', 'Publisher K', 2011),
(3, 'Romance Book 2', 'Author L', 'Publisher L', 2012),
(3, 'Romance Book 3', 'Author M', 'Publisher M', 2013),
(3, 'Romance Book 4', 'Author N', 'Publisher N', 2014),
(3, 'Romance Book 5', 'Author O', 'Publisher O', 2015);

-- Adventure
INSERT INTO Books (genre_id, title, author, publisher, publish_year) VALUES
(4, 'Adventure Book 1', 'Author P', 'Publisher P', 2016),
(4, 'Adventure Book 2', 'Author Q', 'Publisher Q', 2017),
(4, 'Adventure Book 3', 'Author R', 'Publisher R', 2018),
(4, 'Adventure Book 4', 'Author S', 'Publisher S', 2019),
(4, 'Adventure Book 5', 'Author T', 'Publisher T', 2020);

-- Science Fiction
INSERT INTO Books (genre_id, title, author, publisher, publish_year) VALUES
(5, 'Sci-Fi Book 1', 'Author U', 'Publisher U', 2021),
(5, 'Sci-Fi Book 2', 'Author V', 'Publisher V', 2022),
(5, 'Sci-Fi Book 3', 'Author W', 'Publisher W', 2023),
(5, 'Sci-Fi Book 4', 'Author X', 'Publisher X', 2024),
(5, 'Sci-Fi Book 5', 'Author Y', 'Publisher Y', 2025);

-- Menambahkan 5 user
INSERT INTO Users (name, email, password, address, phone, birth_date) VALUES
('User One', 'user1@example.com', 'password1', 'Address 1', '111-111-1111', '1980-01-01'),
('User Two', 'user2@example.com', 'password2', 'Address 2', '222-222-2222', '1985-02-02'),
('User Three', 'user3@example.com', 'password3', 'Address 3', '333-333-3333', '1990-03-03'),
('User Four', 'user4@example.com', 'password4', 'Address 4', '444-444-4444', '1995-04-04'),
('User Five', 'user5@example.com', 'password5', 'Address 5', '555-555-5555', '2000-05-05');

-- Tampilkan hasil pencarian data buku berdasarkan judul buku
SELECT * FROM Books WHERE title LIKE '%judul_buku%';

-- Tampilkan hasil pencarian data buku berdasarkan genre id
SELECT * FROM Books WHERE genre_id = 1;

-- Menambahkan data peminjaman buku
INSERT INTO Loans (user_id, book_id, deadline_date, date_loan, status_loan) VALUES
(1, 1, '2024-06-30', '2024-06-01', 'Dipinjam'),
(1, 2, '2024-07-01', '2024-06-02', 'Dipinjam'),
(1, (SELECT id_book FROM Books WHERE genre_id = 2 LIMIT 1), '2024-07-02', '2024-06-03', 'Dipinjam'),
(2, 3, '2024-07-03', '2024-06-04', 'Dipinjam'),
(3, 1, '2024-07-04', '2024-06-05', 'Dipinjam');

-- Mengubah status peminjaman buku yang dipinjam oleh user 1 dan buku dengan id 1 menjadi "dikembalikan"
UPDATE Loans
SET status_loan = 'Dikembalikan', date_return = '2024-06-15'
WHERE user_id = 1 AND book_id = 1;

-- Tampilkan data user beserta buku yang masih dipinjam/belum dikembalikan
SELECT Users.id_user, Users.name, Books.title, Loans.date_loan, Loans.deadline_date
FROM Loans
JOIN Users ON Loans.user_id = Users.id_user
JOIN Books ON Loans.book_id = Books.id_book
WHERE Loans.status_loan = 'Dipinjam';

-- Tampilkan data buku yang statusnya telah dikembalikan oleh user
SELECT Books.id_book, Books.title, Loans.date_loan, Loans.date_return
FROM Loans
JOIN Books ON Loans.book_id = Books.id_book
WHERE Loans.status_loan = 'Dikembalikan';

-- Tampilkan data buku yang belum pernah dipinjam oleh user
SELECT * FROM Books
WHERE id_book NOT IN (SELECT book_id FROM Loans);

-- Tampilkan data user beserta banyaknya buku yang pernah dia pinjam
SELECT Users.id_user, Users.name, COUNT(Loans.id_loan) AS total_loans
FROM Users
JOIN Loans ON Users.id_user = Loans.user_id
GROUP BY Users.id_user, Users.name;

-- Tampilkan data user yang belum pernah meminjam buku
SELECT * FROM Users
WHERE id_user NOT IN (SELECT user_id FROM Loans);

-- Tampilkan data user yang sudah pernah meminjam buku
SELECT * FROM Users
WHERE id_user IN (SELECT user_id FROM Loans);

-- Tampilkan data user yang paling banyak meminjam buku
SELECT Users.id_user, Users.name, COUNT(Loans.id_loan) AS total_loans
FROM Users
JOIN Loans ON Users.id_user = Loans.user_id
GROUP BY Users.id_user, Users.name
ORDER BY total_loans DESC
LIMIT 1;

-- Tampilkan data genre beserta banyaknya buku di masing-masing genre
SELECT Genre.id_genre, Genre.genre_name, COUNT(Books.id_book) AS total_books
FROM Genre
JOIN Books ON Genre.id_genre = Books.genre_id
GROUP BY Genre.id_genre, Genre.genre_name;