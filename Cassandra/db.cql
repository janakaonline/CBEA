create table users( user_id uuid primary key, device_id varchar, access_key varchar, status boolean);

create table sessions (session_id varchar primary key, user_id uuid, start_time timestamp, end_time timestamp);

create table gps_data (gps_data_id uuid primary key, session_id varchar, gps_long float, gps_lang float, rec_time timestamp);

create table file_data(file_id uuid primary key, session_id varchar, file_name varchar, file_path varchar, created_time timestamp);

create table incident_data(incident_id uuid primary key, session_id varchar, details text, created_time);

create table incident_tags(tag varchar, incident_id uuid, primary_key (incident_id, tag)); 