
SELECT count(*), count(distinct patient_id) FROM patients;

-- If both the count are similar then patient_id col might be the pk col.