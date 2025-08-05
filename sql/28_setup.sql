DROP TABLE IF EXISTS exam.社員28;

CREATE TABLE exam.社員28 (
    社員コード VARCHAR(10),
    資格 VARCHAR(10)
);

INSERT INTO exam.社員28 (社員コード, 資格) VALUES
('S001', 'FE'),
('S001', 'AP'),
('S001', 'DB'),
('S002', 'FE'),
('S002', 'SM'),
('S003', 'FE'),
('S004', 'AP'),
('S005', NULL);
