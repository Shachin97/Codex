CREATE TABLE tickets (
    incident_number  VARCHAR(12)  PRIMARY KEY,
    description      TEXT         NOT NULL,
    customer_name    VARCHAR(100) NOT NULL,
    priority         VARCHAR(10)  CHECK (priority IN ('Low','Medium','High','Critical')),
    status           VARCHAR(20)  DEFAULT 'Open'
                     CHECK (status IN ('Open','In Progress','Resolved','Closed')),
    assigned_to      VARCHAR(100),
    category         VARCHAR(50),
    resolution_notes TEXT,
    created_at       TIMESTAMPTZ  DEFAULT now(),
    updated_at       TIMESTAMPTZ  DEFAULT now(),
    closed_at        TIMESTAMPTZ
);



INSERT INTO tickets
  (incident_number, description, customer_name, priority, status, assigned_to,
   category, resolution_notes, created_at, updated_at, closed_at)
VALUES
('INC0010001', 'VPN will not connect from home', 'Jane Smith', 'High', 'Closed', 'Alex Rivera', 'VPN',
 'Deleted the old VPN profile, reinstalled the VPN client, and reconnected with fresh credentials.',
 '2026-08-03 09:15', '2026-08-03 10:05', '2026-08-03 10:05'),

('INC0010002', 'VPN disconnects every few minutes when on Wi-Fi', 'Marcus Lee', 'Medium', 'Closed', 'Alex Rivera', 'VPN',
 'Switched VPN protocol from UDP to TCP in client settings and updated the Wi-Fi adapter driver. Connection stable after change.',
 '2026-08-05 13:40', '2026-08-05 15:10', '2026-08-05 15:10'),

('INC0010003', 'VPN says authentication failed after I changed my password', 'Priya Patel', 'High', 'Closed', 'Dana Brooks', 'VPN',
 'Cached old password in the VPN client. Cleared saved credentials, signed out and back in with the new password.',
 '2026-08-10 08:30', '2026-08-10 09:00', '2026-08-10 09:00'),

('INC0010004', 'Cannot reset my password, reset email never arrives', 'Tom Nguyen', 'Medium', 'Closed', 'Dana Brooks', 'Account',
 'Reset email was going to the spam folder. Added the sender to safe list and resent the link. Password reset completed.',
 '2026-08-12 11:20', '2026-08-12 11:50', '2026-08-12 11:50'),

('INC0010005', 'Printer on the second floor shows offline', 'Olivia Garcia', 'Low', 'Closed', 'Sam Carter', 'Hardware',
 'Printer had lost its network connection. Restarted the printer and re-added it on the print server. Test page printed.',
 '2026-08-14 14:05', '2026-08-14 14:40', '2026-08-14 14:40'),

('INC0010006', 'Outlook is not syncing new emails', 'Chris Walker', 'Medium', 'Closed', 'Dana Brooks', 'Email',
 'Outlook was in offline mode. Switched to online mode, then rebuilt the mailbox profile to fix the sync issue.',
 '2026-08-17 09:10', '2026-08-17 10:30', '2026-08-17 10:30'),

('INC0010007', 'Wi-Fi keeps dropping in conference room B', 'Emma Davis', 'Medium', 'Closed', 'Sam Carter', 'Network',
 'Access point firmware was out of date. Updated firmware and moved the device to a less crowded channel.',
 '2026-08-19 10:00', '2026-08-20 09:15', '2026-08-20 09:15'),

('INC0010008', 'Cannot access the shared drive', 'Bob Lee', 'Medium', 'Closed', 'Alex Rivera', 'Network',
 'User was missing from the security group for the shared folder. Added the user to the group and had them log off and back on.',
 '2026-08-21 15:25', '2026-08-21 16:00', '2026-08-21 16:00'),

('INC0010009', 'Laptop is very slow after the latest Windows update', 'Noah Kim', 'Low', 'Closed', 'Sam Carter', 'Hardware',
 'Disk was nearly full. Cleared temp files and old update caches, disabled unneeded startup programs, and restarted.',
 '2026-08-24 12:45', '2026-08-24 14:20', '2026-08-24 14:20'),

('INC0010010', 'Account locked out after failed login attempts', 'Sofia Martinez', 'High', 'Closed', 'Dana Brooks', 'Account',
 'Account locked by security policy. Verified identity, unlocked the account in Active Directory, and advised on password manager use.',
 '2026-08-26 08:05', '2026-08-26 08:25', '2026-08-26 08:25'),

('INC0010011', 'No audio in Teams meetings', 'Liam Johnson', 'Medium', 'Closed', 'Sam Carter', 'Software',
 'Wrong audio device selected. Set the headset as default in Teams device settings and in Windows sound settings.',
 '2026-09-01 09:50', '2026-09-01 10:15', '2026-09-01 10:15'),

('INC0010012', 'Excel crashes when opening a large file', 'Ava Thompson', 'Low', 'Resolved', 'Alex Rivera', 'Software',
 'Ran Office repair and disabled a faulty add-in. Waiting on user to confirm the fix.',
 '2026-09-03 13:30', '2026-09-04 09:00', NULL),

('INC0010013', 'VPN says connection timed out', 'Ethan Brown', 'High', 'Open', NULL, 'VPN',
 NULL, '2026-10-20 08:45', '2026-10-20 08:45', NULL),

('INC0010014', 'Production server is unreachable', 'Mia Wilson', 'Critical', 'In Progress', 'Alex Rivera', 'Network',
 NULL, '2026-10-21 07:30', '2026-10-21 08:10', NULL),

('INC0010015', 'Need Adobe Acrobat installed on my computer', 'Lucas Anderson', 'Low', 'Open', NULL, 'Software',
 NULL, '2026-10-22 10:20', '2026-10-22 10:20', NULL),

('INC0010016', 'Email attachments will not open', 'Harper Clark', 'Medium', 'In Progress', 'Dana Brooks', 'Email',
 NULL, '2026-10-22 14:00', '2026-10-23 09:30', NULL),

('INC0010017', 'My monitor keeps flickering', 'Jack Hall', 'Low', 'Open', NULL, 'Hardware',
 NULL, '2026-10-23 11:15', '2026-10-23 11:15', NULL),

('INC0010018', 'Cannot log into the HR portal', 'Zoe Young', 'High', 'Open', NULL, 'Account',
 NULL, '2026-10-26 09:00', '2026-10-26 09:00', NULL),

('INC0010019', 'VPN is very slow and internal sites will not load', 'Daniel O''Brien', 'Medium', 'Open', NULL, 'VPN',
 NULL, '2026-10-26 13:10', '2026-10-26 13:10', NULL),

('INC0010020', 'Received a suspicious email asking for my password', 'José Hernández', 'High', 'In Progress', 'Sam Carter', 'Security',
 NULL, '2026-10-27 08:20', '2026-10-27 09:00', NULL);


CREATE INDEX IF NOT EXISTS idx_tickets_status   ON tickets (status);
CREATE INDEX IF NOT EXISTS idx_tickets_category ON tickets (category);





