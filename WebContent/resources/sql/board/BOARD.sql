create table board(
    num int not null primary key,
    boardid varchar(1) default '1',
    writer varchar(10) not null,
    email varchar(30),
    subject varchar(50) not null,
    passwd varchar(12) not null,
    reg_date date not null,
    readcount int default 0,
    ref int not null,
    re_step int not null,
    re_level int not null,
    content varchar(3000) not null,
    ip varchar(20) not null,
    filename varchar(30),
    filesize int
);