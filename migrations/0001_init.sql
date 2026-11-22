-- DoctorIQ initial D1 schema and simulated seed data.
-- Shared database: omegaapi-demos. This app's namespace: DoctorIQ.
 CREATE TABLE IF NOT EXISTS config (app TEXT NOT NULL, key TEXT NOT NULL, value TEXT NOT NULL, PRIMARY KEY (app, key));
CREATE TABLE IF NOT EXISTS records (id INTEGER PRIMARY KEY AUTOINCREMENT, app TEXT NOT NULL, position INTEGER NOT NULL, cells TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS activity (id INTEGER PRIMARY KEY AUTOINCREMENT, app TEXT NOT NULL, text TEXT NOT NULL, created_at TEXT NOT NULL DEFAULT (datetime('now')));
CREATE INDEX IF NOT EXISTS idx_records_app ON records(app, position);
CREATE INDEX IF NOT EXISTS idx_activity_app ON activity(app, id);

DELETE FROM activity WHERE app = 'DoctorIQ';
DELETE FROM records WHERE app = 'DoctorIQ';
DELETE FROM config WHERE app = 'DoctorIQ';

INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'heroStat', '"6 doctors · 18 open slots"');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'heroNote', '"Demo snapshot: morning session is 72% full."');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'bars', '[["Morning","w90"],["Afternoon","w75"],["Evening","w60"]]');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'strip', '[["6 sample doctors","Invented names and specialties"],["No sign-up","Open the page and try it"],["Database-backed","Actions stored in the demo database"],["Free to host","Cloudflare free tier"]]');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'safetyNote', '"Every doctor, slot, and token below is invented. Nothing you click is sent to a clinic."');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'tableHead', '["Doctor","Specialty","Next slot","Queue","Status"]');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'rows', '[["Dr. A. Mehta","General","09:30","4 waiting","On time"],["Dr. R. Iyer","Dermatology","10:15","2 waiting","On time"],["Dr. S. Kulkarni","Pediatrics","11:00","6 waiting","Busy"],["Dr. N. Rao","Orthopedics","11:45","1 waiting","On time"],["Dr. P. Deshmukh","ENT","12:20","3 waiting","Break"],["Dr. K. Shah","General","14:10","0 waiting","Available"]]');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'workflow', '[["Pick a doctor","Choose a row from the simulated roster."],["Choose a slot","The demo shows a time, never a real calendar hold."],["See a demo token","A token number appears in your demo database."]]');
INSERT INTO config (app, key, value) VALUES ('DoctorIQ', 'actions', '[["Book next slot"," booked the next simulated slot."],["Call next token"," moved one queue token forward."],["Mark completed"," marked a simulated visit complete."],["Clear queue"," cleared the demo queue view."]]');

INSERT INTO records (app, position, cells) VALUES ('DoctorIQ', 1, '["Dr. A. Mehta","General","09:30","4 waiting","On time"]');
INSERT INTO records (app, position, cells) VALUES ('DoctorIQ', 2, '["Dr. R. Iyer","Dermatology","10:15","2 waiting","On time"]');
INSERT INTO records (app, position, cells) VALUES ('DoctorIQ', 3, '["Dr. S. Kulkarni","Pediatrics","11:00","6 waiting","Busy"]');
INSERT INTO records (app, position, cells) VALUES ('DoctorIQ', 4, '["Dr. N. Rao","Orthopedics","11:45","1 waiting","On time"]');
INSERT INTO records (app, position, cells) VALUES ('DoctorIQ', 5, '["Dr. P. Deshmukh","ENT","12:20","3 waiting","Break"]');
INSERT INTO records (app, position, cells) VALUES ('DoctorIQ', 6, '["Dr. K. Shah","General","14:10","0 waiting","Available"]');
