use cbea;

drop table if exist users;
create table users( user_id uuid primary key, device_id varchar, access_key varchar, status boolean);

drop table if exist sessions;
create table sessions (session_id varchar primary key, user_id uuid, start_time timestamp, end_time timestamp);

drop table if exist gps_data;
create table gps_data (gps_data_id uuid primary key, session_id varchar, gps_long float, gps_lang float, rec_time timestamp);

drop table if exist file_data;
create table file_data(file_id uuid primary key, session_id varchar, file_name varchar, file_path varchar, created_time timestamp);

drop table if exist incident_data;
create table incident_data(incident_id uuid primary key, session_id varchar, details text, created_time timestamp);

drop table if exist incident_tags;
create table incident_tags(tag varchar, incident_id uuid, primary key (incident_id, tag)); 