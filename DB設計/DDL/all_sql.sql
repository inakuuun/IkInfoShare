-- �`���b�g�����o�[�e�[�u��
DROP TABLE chat_member; 

-- �`���b�g���b�Z�[�W�����e�[�u��
DROP TABLE chat_message_history; 

-- �`���b�g���[���e�[�u��
DROP TABLE chat_room;
 
-- ���[�U�[�e�[�u��
DROP TABLE users; 

-- �`���b�g�����o�[�e�[�u��
CREATE TABLE IF NOT EXISTS chat_member( 
    room_id integer not null
    , user_id integer not null
    , foreign key (room_id) references chat_room(room_id)
    , foreign key (user_id) references users(user_id)
); 

-- �`���b�g���b�Z�[�W�����e�[�u��
CREATE TABLE IF NOT EXISTS chat_message_history( 
    message_id integer not null primary key 
    , room_id integer not null
    , sent_user_id integer not null
    , binary_message blob
    , message text
    , sent_date timestamp not null
    , message_kind integer not null
    , foreign key (room_id) references chat_room(room_id)
    , foreign key (sent_user_id) references users(user_id)
);

-- �`���b�g���[���e�[�u��
CREATE TABLE IF NOT EXISTS chat_room( 
    room_id integer not null primary key 
    , room_name varchar (20)
    , room_image blob
    , create_user_id integer not null
    , create_date timestamp not null
    , room_kind integer not null
    , foreign key (create_user_id) references users(user_id)
); 

-- ���[�U�[�e�[�u��
CREATE TABLE IF NOT EXISTS users( 
    user_id integer not null primary key 
    , user_name varchar (20) not null
    , password varchar (20) not null
); 

SELECT * from USERS;

