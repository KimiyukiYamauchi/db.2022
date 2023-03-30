CREATE TABLE `cast` (
  `MOVIE_CD` char(4) NOT NULL,
  `CAST_NUM` int(2) NOT NULL,
  `ACTOR_CD` char(5) NOT NULL,
  PRIMARY KEY(`MOVIE_CD`, `CAST_NUM`)
);

INSERT INTO `cast` (`MOVIE_CD`, `CAST_NUM`, `ACTOR_CD`) VALUES
('1001', 1, 'AC001'),
('1001', 2, 'AC020'),
('1001', 3, 'AC021'),
('1002', 1, 'AC001'),
('1002', 2, 'AC022'),
('1002', 3, 'AC023'),
('1002', 4, 'AC024'),
('1003', 1, 'AC002'),
('1003', 2, 'AC025'),
('1003', 3, 'AC026'),
('1003', 4, 'AC027'),
('1003', 5, 'AC029'),
('1004', 1, 'AC002'),
('1004', 2, 'AC033'),
('1004', 3, 'AC026'),
('1004', 4, 'AC027'),
('1004', 5, 'AC028'),
('1004', 6, 'AC029'),
('1005', 1, 'AC002'),
('1005', 2, 'AC026'),
('1005', 3, 'AC027'),
('1005', 4, 'AC029'),
('1006', 1, 'AC003'),
('1006', 2, 'AC016'),
('1006', 3, 'AC004'),
('1007', 1, 'AC003'),
('1007', 2, 'AC016'),
('1007', 3, 'AC004'),
('1007', 4, 'AC015'),
('1008', 1, 'AC004'),
('1009', 1, 'AC005'),
('1009', 2, 'AC019'),
('1009', 3, 'AC010'),
('1009', 4, 'AC011'),
('1010', 1, 'AC005'),
('1010', 2, 'AC019'),
('1010', 3, 'AC010'),
('1010', 4, 'AC009'),
('1010', 5, 'AC011'),
('1011', 1, 'AC006'),
('1011', 2, 'AC010'),
('1011', 3, 'AC011'),
('1011', 4, 'AC012'),
('1012', 1, 'AC006'),
('1012', 2, 'AC010'),
('1012', 3, 'AC011'),
('1012', 4, 'AC012'),
('1013', 1, 'AC006'),
('1013', 2, 'AC010'),
('1013', 3, 'AC011'),
('1013', 4, 'AC012'),
('1014', 1, 'AC007'),
('1014', 2, 'AC001'),
('1014', 3, 'AC006'),
('1015', 1, 'AC007'),
('1015', 2, 'AC010'),
('1016', 1, 'AC005'),
('1016', 2, 'AC006'),
('1016', 3, 'AC009'),
('1016', 4, 'AC010'),
('1016', 5, 'AC013'),
('1016', 6, 'AC014'),
('1016', 7, 'AC011'),
('1017', 1, 'AC005'),
('1017', 2, 'AC006'),
('1017', 3, 'AC009'),
('1017', 4, 'AC010'),
('1017', 5, 'AC013'),
('1017', 6, 'AC014'),
('1017', 7, 'AC011'),
('1018', 1, 'AC005'),
('1018', 2, 'AC006'),
('1018', 3, 'AC009'),
('1018', 4, 'AC010'),
('1018', 5, 'AC013'),
('1018', 6, 'AC014'),
('1019', 1, 'AC008'),
('1020', 1, 'AC008'),
('1021', 1, 'AC030'),
('1021', 2, 'AC032'),
('1022', 1, 'AC005'),
('1022', 2, 'AC006'),
('1022', 3, 'AC007'),
('1022', 4, 'AC009'),
('1022', 5, 'AC010'),
('1022', 6, 'AC013'),
('1022', 7, 'AC014'),
('1022', 8, 'AC011'),
('1023', 1, 'AC005'),
('1023', 2, 'AC006'),
('1023', 3, 'AC007'),
('1023', 4, 'AC009'),
('1023', 5, 'AC010'),
('1023', 6, 'AC012'),
('1023', 7, 'AC013'),
('1023', 8, 'AC014'),
('1023', 9, 'AC017'),
('1023', 10, 'AC019'),
('1023', 11, 'AC022'),
('1023', 12, 'AC011'),
('1024', 1, 'AC015');