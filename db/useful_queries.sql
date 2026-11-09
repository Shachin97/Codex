SELECT * FROM tickets;                                   -- everything

SELECT * FROM tickets WHERE status = 'Open';             -- filter to all 'open' tickets

SELECT * FROM tickets ORDER BY created_at DESC LIMIT 10; -- newest 10 tickets

SELECT priority, COUNT(*) FROM tickets GROUP BY priority; -- counts per priority

SELECT * FROM tickets WHERE category = 'VPN';             -- all VPN tickets

UPDATE tickets SET status = 'Resolved', updated_at = now() WHERE incident_number = 'INC0010013';
