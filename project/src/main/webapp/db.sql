create table room_tbl_202305 (
	rm_number number(3) not null primary key,
	rm_type varchar2(2)
)

insert into room_tbl_202305 values ('101', 'a');
insert into room_tbl_202305 values ('102', 'a');
insert into room_tbl_202305 values ('103', 'b');
insert into room_tbl_202305 values ('104', 'b');
insert into room_tbl_202305 values ('201', 'a');
insert into room_tbl_202305 values ('202', 'a');
insert into room_tbl_202305 values ('203', 'b');
insert into room_tbl_202305 values ('204', 'b');

create table reservation_tbl_202305 (
	resv_no varchar2(5) not null primary key,
	resv_name varchar2(20),
	resv_phone varchar2(11),
	resv_from_ymd varchar2(8),
	resv_to_ymd varchar2(8),
	resv_rm_number number(3)
)

insert into reservation_tbl_202305 values ('10001', '홍길동', '01011112222', '20230524', '20230524', '101');
insert into reservation_tbl_202305 values ('10002', '고길동', '01022223333', '20230524', '20230524', '102');
insert into reservation_tbl_202305 values ('10003', '이길동', '01033334444', '20230524', '20230525', '103');
insert into reservation_tbl_202305 values ('10004', '신길동', '01044445555', '20230524', '20230525', '104');
insert into reservation_tbl_202305 values ('10005', '최길동', '01055556666', '20230525', '20230525', '201');


select * from reservation_tbl_202305

select resv_no, resv_name, resv_phone, resv_from_ymd, resv_to_ymd, resv_rm_number, rm_type
from reservation_tbl_202305 reservation
join room_tbl_202305 room
on resv_rm_number = rm_number
order by resv_no
