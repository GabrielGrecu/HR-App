CREATE USER 'licenta-2025'@'%' IDENTIFIED BY 'internship2024';
GRANT ALL PRIVILEGES ON candidate_management.* TO 'licenta2025'@'%';
GRANT ALL PRIVILEGES ON user_management.* TO 'licenta2025'@'%';
FLUSH PRIVILEGES;