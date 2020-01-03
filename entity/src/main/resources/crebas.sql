/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/1/3 9:59:59                             */
/*==============================================================*/


drop table if exists t_order;

drop table if exists t_product;

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order
(
   order_id             varchar(50) not null,
   chan_id              varchar(50) not null comment '�׿ǹ�˾���',
   product_id           varchar(50) not null,
   chan_user_id         varchar(50) not null comment '�׿ǹ�˾�û����',
   order_type           varchar(50) not null comment '�깺 ��APPLY �� ��أ�REDEEM',
   order_status         varchar(50) not null comment '��ʼ����INIT�������У�PROCESS���ɹ���SUCCESS��ʧ�ܣ�FAIL',
   outer_order_id       varchar(50) not null,
   order_amount         decimal(15,3) not null,
   remark               varchar(200),
   create_at            datetime,
   update_at            datetime,
   primary key (order_id)
);

/*==============================================================*/
/* Table: t_product                                             */
/*==============================================================*/
create table t_product
(
   id                   varchar(50) not null comment '��Ʒ���',
   name                 varchar(50) not null comment '��Ʒ����',
   start_amount         decimal(15,3) not null default 0 comment '��Ͷ���',
   step_amount          decimal(15,3) not null default 0 comment 'Ͷ�ʲ���',
   lockup_period        smallint not null default 0 comment '������  ����Ϊ��λ',
   earning_rate         decimal(5,3) not null comment '������  0-100 �ٷֱ�',
   status               varchar(20) not null comment '״̬  ������  ����  �ѽ���',
   remark               varchar(200) comment '��ע',
   create_at            datetime comment '����ʱ��',
   create_user          varchar(20) comment '��Ʒ������',
   update_at            datetime comment '��Ʒ����ʱ��',
   update_user          varchar(20) comment '��Ʒ������',
   primary key (id),
   unique key AK_unique (name)
);

