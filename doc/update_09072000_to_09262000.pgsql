alter table accounts     rename con               to account_id;
alter table accounts     rename loginid           to account_lid;
alter table accounts     rename passwd            to account_pwd;
alter table accounts     rename firstname         to account_firstname;
alter table accounts     rename lastname          to account_lastname;
alter table accounts     rename permissions       to account_permissions;
alter table accounts     rename groups            to account_groups;
alter table accounts     rename lastlogin         to account_lastlogin;
alter table accounts     rename lastloginfrom     to account_lastloginfrom;
alter table accounts     rename lastpasswd_change to account_lastpwd_change;
alter table accounts     rename status            to account_status;
alter table applications add    app_order         int;
alter table applications add    app_tables        varchar(255);
alter table preferences  rename owner             to preference_owner;
alter table preferences  rename name              to preference_name;
alter table preferences  rename value             to preference_value;
alter table preferences  add    preference_appname varchar(50) default '';
alter table sessions     rename sessionid         to session_id;
alter table sessions     rename loginid           session_lid;
alter table sessions     rename passwd            session_pwd;
alter table sessions     rename ip                session_ip;
alter table sessions     rename logintime         session_logintime;
alter table sessions     rename dla               session_dla;

update applications set app_order=1,app_tables=NULL where app_name='admin';
update applications set app_order=2,app_tables=NULL where app_name='tts';
update applications set app_order=3,app_tables=NULL where app_name='inv';
update applications set app_order=4,app_tables=NULL where app_name='chat';
update applications set app_order=5,app_tables='news_sites,news_headlines,users_headlines' where app_name='headlines';
update applications set app_order=6,app_tables=NULL where app_name='filemanager';
update applications set app_order=7,app_tables='addressbook' where app_name='addressbook';
update applications set app_order=8,app_tables='todo' where app_name='todo';
update applications set app_order=9,app_tables='webcal_entry,webcal_entry_users,webcal_entry_groups,webcal_repeats' where app_name='calendar';
update applications set app_order=10,app_tables=NULL where app_name='email';
update applications set app_order=11,app_tables='newsgroups,users_newsgroups' where app_name='nntp';
update applications set app_order=0,app_tables=NULL where app_name='cron_apps';

CREATE TABLE config (
  config_name     varchar(25),
  config_value    varchar(100),
  UNIQUE (config_name)
);

insert into config (config_name, config_value) values ('default_tplset', 'default');
insert into config (config_name, config_value) values ('temp_dir', '/path/to/tmp');
insert into config (config_name, config_value) values ('files_dir', '/path/to/dir/phpgroupware/files');
insert into config (config_name, config_value) values ('encryptkey', 'change this phrase 2 something else');
insert into config (config_name, config_value) values ('site_title', 'phpGroupWare');
insert into config (config_name, config_value) values ('hostname', 'local.machine.name');
insert into config (config_name, config_value) values ('webserver_url', '/phpgroupware');
insert into config (config_name, config_value) values ('auth_type', 'sql');
insert into config (config_name, config_value) values ('ldap_host', 'localhost');
insert into config (config_name, config_value) values ('ldap_context', 'o=phpGroupWare');
insert into config (config_name, config_value) values ('usecookies', 'True');
insert into config (config_name, config_value) values ('mail_server', 'localhost');
insert into config (config_name, config_value) values ('mail_server_type', 'imap');
insert into config (config_name, config_value) values ('imap_server_type', 'Cyrus');
insert into config (config_name, config_value) values ('mail_suffix', 'yourdomain.com');         
insert into config (config_name, config_value) values ('mail_login_type', 'standard');
insert into config (config_name, config_value) values ('smtp_server', 'localhost');
insert into config (config_name, config_value) values ('smtp_port', '25');
insert into config (config_name, config_value) values ('nntp_server', 'yournewsserver.com');
insert into config (config_name, config_value) values ('nntp_port', '119');
insert into config (config_name, config_value) values ('nntp_sender', 'complaints@yourserver.com');
insert into config (config_name, config_value) values ('nntp_organization', 'phpGroupWare');
insert into config (config_name, config_value) values ('nntp_admin', 'admin@yourserver.com');
insert into config (config_name, config_value) values ('nntp_login_username', '');
insert into config (config_name, config_value) values ('nntp_login_password', '');
insert into config (config_name, config_value) values ('charset', 'iso-8859-1');
insert into config (config_name, config_value) values ('default_ftp_server', 'localhost');
insert into config (config_name, config_value) values ('httpproxy_server', '');
insert into config (config_name, config_value) values ('httpproxy_port', '');
insert into config (config_name, config_value) values ('showpoweredbyon', 'bottom');
insert into config (config_name, config_value) values ('checkfornewversion', 'False');

