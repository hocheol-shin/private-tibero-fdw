BEGIN
  INSERT INTO just_conn_test_table VALUES('connect OK!');

	INSERT INTO t1 VALUES(
  '가','a','!','가나다라마바사아자차카타파하','abcdefghijklmnopqrstuvwxyz','!@#$%^&*()<>/\\''',
  '가','a','!','가나다라마바사아자차카타파하','abcdefghijklmnopqrstuvwxyz','!@#$%^&*()<>/\\''',
  '가','a','!','가나다라마바사아자차카타파하','abcdefghijklmnopqrstuvwxyz','!@#$%^&*()<>/\\''',
  '가','a','!','가나다라마바사아자차카타파하','abcdefghijklmnopqrstuvwxyz','!@#$%^&*()<>/\\''',
  '가','a','!','가나다라마바사아자차카타파하','abcdefghijklmnopqrstuvwxyz','!@#$%^&*()<>/\\''',
  '가','a','!','가나다라마바사아자차카타파하','abcdefghijklmnopqrstuvwxyz','!@#$%^&*()<>/\\''',
  'AAAArFAAAAAACTFAAA'
  );

  INSERT INTO t2 VALUES(12345678901234567890123456789012345678, 12345678901234567890123456789012345678, 123456.123456, 1234567.1234567,1234567890123456789012345678,0.123456789012345678901234567, 123456.123456789);
  INSERT INTO t2 VALUES(654321, 654321, 654321.123456, -6543210.0123456, 654321, 0.654321 ,654321.654321);
  INSERT INTO t2 VALUES(6543212, 6543212, -123456.123456, -123456.123456, 6543212, 0.6543212,6543212.6543212);
  INSERT INTO t2 VALUES(6543212, 6543213, 123456.123456,123456.123456, 6543214, 0.6543215,6543216.6543217);
  INSERT INTO t2 VALUES(65, 65, 65.4321, -65.43210, 65, 0.654321 ,654.321);

  INSERT INTO smallint_test VALUES(11165, 16665, -32768, 32767, 16151, 0 , 1);
  INSERT INTO smallint_test VALUES(8265, 12267, 32767, -32768, 23652, 0 , -32768);
  INSERT INTO smallint_test VALUES(23565, 3115, -32768, -32768, 13315, 0 , 19999);
  INSERT INTO smallint_test VALUES(4169, 2998, 32767, 32767, 4365, 0 , 0);
  INSERT INTO smallint_test VALUES(14165, 22265, -32768, 32767, 1311, 0 , 19999);

  INSERT INTO smallint_test_err VALUES(11165, 16665, -32769, 32768, 16151, 0 , 0.1);

  INSERT INTO integer_test VALUES(578697901, 875292973, -2147483648, 2147483647, 1142541592, 0 , 0);
  INSERT INTO integer_test VALUES(142448699, 309504840, 2147483647, -2147483648, 935913123, 0 , 0);
  INSERT INTO integer_test VALUES(900687647, 2122990169, -2013204112, 2147483647, 1106261116, 0 , 0);
  INSERT INTO integer_test VALUES(1426357944, 1741080709, -1342034219, 2026588246, 1142541592, 0 , 0);
  INSERT INTO integer_test VALUES(1572666478, 2007150713, -1522755447, 1348111339, 1142541592, 0 , 0);

  INSERT INTO integer_test_err VALUES(578697901, 875292973, -2147483649, 2147483648, 1142541592, 0 , 0);

  INSERT INTO bigint_test VALUES(396729820403220500, 1211583650523953200, -9223372036854775808, 9223372036854775807, 6752415838430077000, 0 , 0);
  INSERT INTO bigint_test VALUES(649021770996025300, 1574801045732446200, -9223372036854775808, 5460205899157160000, 3598545108280766500, 0 , 0);
  INSERT INTO bigint_test VALUES(396729820403220500, 996923005474682900, -9223372036854775808, 2965748578745463000, 3480785061509556000, 0 , 0);
  INSERT INTO bigint_test VALUES(9223372036854775807, -9223372036854775808, -9223372036854775808, 4735587481859375000, 6676266962802545000, 0 , 0);
  INSERT INTO bigint_test VALUES(-9223372036854775808, 6752415838430077000, -9223372036854775808, 3444225529067227000, 4735587481859375000, 0 , 0);

  INSERT INTO bigint_test_err VALUES(396729820403220500, 1211583650523953200, -9223372036854775809, 9223372036854775808, 6752415838430077000, 0 , 0);

  INSERT INTO r_and_dp_test VALUES(
  123456789012345678901234567890123456789.123456789012345678901234567890123456789,
  12345678901234567890123456789012345678,
  1234567890123456789.1234567890123456789,
  1234567890123456789.1234567890123456789,
  0.123456789012345678901234567,
  0.899999999999999999999999999999999999999,
  999999999999999999999999999999.9999999999999999999999999999);

  INSERT INTO t3 VALUES(
  TO_DATE('20230101','YYYYMMDD'),
  TO_DATE('-99990101','sYYYYMMDD'),
  TO_DATE('99990101','sYYYYMMDD'),
  TO_DATE('20230101123456','YYYYMMDDHH24MISS'),
  TO_TIMESTAMP('20230101123456.123456','YYYYMMDDHH24MISS.FF'),
  TO_TIMESTAMP('20230101123456.123456','YYYYMMDDHH24MISS.FF'),
  TO_TIMESTAMP('20230101123456.123456','YYYYMMDDHH24MISS.FF'),
  TO_TIMESTAMP('20230101123456.123456789','YYYYMMDDHH24MISS.FF9'),
  TO_TIMESTAMP('-99990101123456.123456','sYYYYMMDDHH24MISS.FF'),
  TO_TIMESTAMP('99990101123456.123456','sYYYYMMDDHH24MISS.FF'),
  TO_TIMESTAMP_TZ('20230101123456.123456 +00:00','YYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456 +00:00','YYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456 +00:00','YYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456789 +00:00','YYYYMMDDHH24MISS.FF9 TZH:TZM'),
  TO_TIMESTAMP_TZ('-99990101123456.123456 +00:00','sYYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('99990101123456.123456 +00:00','sYYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456 +00:00','YYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456 +00:00','YYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456 +00:00','YYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('20230101123456.123456789 +00:00','YYYYMMDDHH24MISS.FF9 TZH:TZM'),
  TO_TIMESTAMP_TZ('-99990101123456.123456 +00:00','sYYYYMMDDHH24MISS.FF TZH:TZM'),
  TO_TIMESTAMP_TZ('99990101123456.123456 +00:00','sYYYYMMDDHH24MISS.FF TZH:TZM')
  );

	/* TODO: Tibero bug with anon block containing interval
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999 23:59:59.999999999' DAY(9) TO SECOND(9));

	INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999 23:59' DAY(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999 23' DAY(9) TO HOUR);
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999' DAY(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999:59:59.999999999' HOUR(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999:59' HOUR(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999' HOUR(9));

  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999:59.999999999' MINUTE(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999' MINUTE(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000-11' YEAR(9) TO MONTH, INTERVAL '999999999.999999999' SECOND(9,9));


  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999 23:59:59.999999999' DAY(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999 23:59' DAY(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999 23' DAY(9) TO HOUR);
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999' DAY(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999:59:59.999999999' HOUR(9) TO SECOND(9));

  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999:59' HOUR(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999' HOUR(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999:59.999999999' MINUTE(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999' MINUTE(9));
  INSERT INTO t4 VALUES(INTERVAL '178000000' YEAR(9), INTERVAL '999999999.999999999' SECOND(9,9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999 23:59:59.999999999' DAY(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999 23:59' DAY(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999 23' DAY(9) TO HOUR);
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999' DAY(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999:59:59.999999999' HOUR(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999:59' HOUR(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999' HOUR(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999:59.999999999' MINUTE(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999' MINUTE(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999-11' YEAR(9) TO MONTH, INTERVAL '999999999.999999999' SECOND(9,9));


  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999 23:59:59.999999999' DAY(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999 23:59' DAY(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999 23' DAY(9) TO HOUR);
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999' DAY(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999:59:59.999999999' HOUR(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999:59' HOUR(9) TO MINUTE);
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999' HOUR(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999:59.999999999' MINUTE(9) TO SECOND(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999' MINUTE(9));
  INSERT INTO t4 VALUES(INTERVAL '999999999' YEAR(9), INTERVAL '999999999.999999999' SECOND(9,9));

  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999 23:59:59.999999999' DAY(9) TO SECOND(9));
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999 23:59' DAY(9) TO MINUTE);
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999 23' DAY(9) TO HOUR);
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999' DAY(9));
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999:59:59.999999999' HOUR(9) TO SECOND(9));
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999:59' HOUR(9) TO MINUTE);
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999' HOUR(9));
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999:59.999999999' MINUTE(9) TO SECOND(9));
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999' MINUTE(9));
  INSERT INTO t4 VALUES (INTERVAL '999999999' MONTH(9), INTERVAL '999999999.999999999' SECOND(9,9));
	*/

	INSERT INTO vt1 (col_char, col_varchar, col_varchar2, col_nchar, col_nvarchar, col_nvarchar2, col_rowid, col_number, col_number_n_m, col_float, col_date, col_timestamp, col_timestamp_tz, col_interval_ym, col_interval_ds)
  VALUES (
    'sample',
    'sample data',
    'sample data',
    'sample',
    'sample data',
    'sample data',
    'AAAArFAAAAAACTFAAA',
    123,
    123.45,
    123.45,
    '2023-02-08',
    '2023-02-08 12:34:56',
    '2023-02-08 12:34:56 +01:00',
    '1-2',
    '1 2:34:56'
  );

  INSERT INTO jt1 VALUES(
  '가나다라마바사아자차카타파하',
  'abcdefghijklmnopqrstuvwxyz',
  '!@#$%^&*()<>/\\''',
  '가나다라마바사아자차카타파하',
  'abcdefghijklmnopqrstuvwxyz',
  '!@#$%^&*()<>/\\''',
  '가나다라마바사아자차카타파하',
  'abcdefghijklmnopqrstuvwxyz',
  '!@#$%^&*()<>/\\''',
  '가나다라마바사아자차카타파하',
  'abcdefghijklmnopqrstuvwxyz',
  '!@#$%^&*()<>/\\''',
  '가나다라마바사아자차카타파하',
  'abcdefghijklmnopqrstuvwxyz',
  '!@#$%^&*()<>/\\''',
  'AAAArFAAAAAACTFAAA',
  123456789012345678901234567890123456789012345678901234567890.12345678901234567890123456789012345678901234567890123456789012345,
  123456.123456789,
  TO_DATE('20230101','YYYYMMDD'),
  TO_TIMESTAMP('20230101123456.123456','YYYYMMDDHH24MISS.FF'),
  TO_TIMESTAMP_TZ('20230101123456 +09:00','YYYYMMDDHH24MISS TZH:TZM'),
  INTERVAL'3' YEAR + INTERVAL'1' MONTH,
  '3 15:00:00'
  );

  INSERT INTO st1 VALUES (100, 'HS1', 'KOREA', 1300, '1980-12-17', 800.23, NULL, 20, 'aaaaa', '가가가가가가가가가가가가가가');
  INSERT INTO st1 VALUES (200, 'HS2', 'JAPAN', 600, '1981-02-20', 1600.00, 300, 30, 'bbbbb', '나나나나나나나나나나나나나나');
  INSERT INTO st1 VALUES (300, 'HS3', 'JAPAN', 600, '1981-02-22', 1250, 500, 30, 'hhhhh', '다다다다다다다다다다다다다다');
  INSERT INTO st1 VALUES (400, 'HS4', 'CHINA', 900, '1981-04-02', 2975.12, NULL, 20, 'ddddd', '라라라라라라라라라라라라라라');
  INSERT INTO st1 VALUES (500, 'HS5', 'JAPAN', 600, '1981-09-28', 1250, 1400, 30, 'hhhhh', '마마마마마마마마마마마마마마');
  INSERT INTO st1 VALUES (600, 'HS6', 'CHINA', 900, '1981-05-01', 2850, NULL, 30, 'fffff', '바바바바바바바바바바바바바바');
  INSERT INTO st1 VALUES (700, 'HS7', 'CHINA', 900, '1981-06-09', 2450.45, NULL, 10, 'ggggg', '사사사사사사사사사사사사사사');
  INSERT INTO st1 VALUES (800, 'HS8', 'AMERICA', 400, '1987-04-19', 3000, NULL, 20, 'hhhhh', '아아아아아아아아아아아아아아');
  INSERT INTO st1 VALUES (900, 'HS9', 'JEJU', NULL, '1981-11-17', 5000, NULL, 10, 'iiiii', '가가가가가가가가가가가가가가');
  INSERT INTO st1 VALUES (1000, 'HS10', 'JAPAN', 600, '1980-09-08', 1500, 0, 30, 'jjjjj', '차차차차차차차차차차차차차차');
  INSERT INTO st1 VALUES (1100, 'HS11', 'KOREA', 800, '1987-05-23', 1100, NULL, 20, 'aaaaa', '바바바바바바바바바바바바바바');
  INSERT INTO st1 VALUES (1200, 'HS12', 'KOREA', 600, '1981-12-03', 950, NULL, 30, 'hhhhh', '타타타타타타타타타타타타타타');
  INSERT INTO st1 VALUES (1300, 'HS13', 'AMERICA', 400, '1981-12-03', 3000, NULL, 20, 'mmmmm', '사사사사사사사사사사사사사사');
  INSERT INTO st1 VALUES (1400, 'HS14', 'KOREA', 700, '1982-01-23', 1300, NULL, 10, 'aaaaa', '가가가가가가가가가가가가가가');

  INSERT INTO st2 VALUES(10, 'EAST', 'PUNE');
  INSERT INTO st2 VALUES(20, 'WEST', 'BANGLORE');
  INSERT INTO st2 VALUES(30, 'NORTH', 'MUMBAI');
  INSERT INTO st2 VALUES(40, 'SOUTH', 'NAGPUR');

  INSERT INTO t_test1 (id, dates, amounts) VALUES
  (1, '2022-01-15', 100.00),
  (2, '2022-03-25', 200.00),
  (3, '2022-05-10', 300.00),
  (4, '2022-09-20', 400.00),
  (5, '2022-12-30', 500.00);

  INSERT INTO t_test2 (id, name, region) VALUES
  (1, 'John Doe', 'Northeast'),
  (2, 'Jane Doe', 'Southeast'),
  (3, 'Jim Smith', 'Northwest'),
  (4, 'Sara Lee', 'Southwest');

  INSERT INTO t_test3 (id, name, department) VALUES
  (1, 'John Doe', 'Sales'),
  (2, 'Jane Doe', 'Marketing'),
  (3, 'Jim Smith', 'Operations'),
  (4, 'Sara Lee', 'HR'),
  (5, 'Tom Smith', 'Finance'),
  (6, 'Emily Davis', 'IT'),
  (7, 'Michael Johnson', 'HR'),
  (8, 'Amy Johnson', 'Marketing'),
  (9, 'William Brown', 'Sales'),
  (10, 'Jennifer Wilson', 'Operations');

  INSERT INTO syn_test (col_char, col_varchar, col_varchar2, col_nchar, col_nvarchar, col_nvarchar2, col_rowid, col_number, col_number_n_m, col_float, col_date, col_timestamp, col_timestamp_tz, col_interval_ym, col_interval_ds)
  VALUES (
    'sample',
    'sample data',
    'sample data',
    'sample',
    'sample data',
    'sample data',
    'AAAArFAAAAAACTFAAA',
    123,
    123.45,
    123.45,
    '2023-02-08',
    '2023-02-08 12:34:56',
    '2023-02-08 12:34:56 +01:00',
    '1-2',
    '1 2:34:56'
  );

  INSERT INTO null_test_table VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
  INSERT INTO null_test_table VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
  INSERT INTO null_test_table VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

  INSERT INTO math_func_test_table VALUES(0.654321, 654321, 654321.123456, -6543210.0123456, 654321, 0.654321 ,654321.654321);
  INSERT INTO math_func_test_table VALUES(6543212, 6543212, -123456.123456, -123456.123456, 6543212, 0.6543212,6543212.6543212);
  INSERT INTO math_func_test_table VALUES(-123456.123456, 6543213, 123456.123456,123456.123456, 6543214, 0.6543215,6543216.6543217);
  INSERT INTO math_func_test_table VALUES(-65.43210, 65, 65.4321, -65.43210, 65, 0.654321 ,654.321);
  INSERT INTO math_func_test_table VALUES(-654321, 654321, -654321.123456, -6543210.0123456, -654321, 0.654321 ,-654321.654321);
  INSERT INTO math_func_test_table VALUES(6543212, -6543212, 123456.123456, -123456.123456, -6543212, -0.6543212,6543212.6543212);
  INSERT INTO math_func_test_table VALUES(-6543210.0123456, 6543213, -123456.123456,123456.123456, 6543214, -0.6543215,-6543216.6543217);
  INSERT INTO math_func_test_table VALUES(-65, -65, -65.4321, -65.43210, -65, 0.654321 ,654.321);
  INSERT INTO math_func_test_table VALUES(1.654321, 654321, -654321.123456, -76543210.0123456, -654321, 0.654321 , -7654321.654321);
  COMMIT;
END;
