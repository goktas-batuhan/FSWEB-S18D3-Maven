CREATE TABLE IF NOT EXISTS doctor (
    id BIGSERIAL PRIMARY KEY,
    name CHARACTER VARYING,
    surname CHARACTER VARYING,
    proficiency CHARACTER VARYING
);

CREATE TABLE IF NOT EXISTS nurse (
    id BIGSERIAL PRIMARY KEY,
    name CHARACTER VARYING,
    surname CHARACTER VARYING,
    proficiency CHARACTER VARYING
);

CREATE TABLE IF NOT EXISTS patient (
    id BIGSERIAL PRIMARY KEY,
    name CHARACTER VARYING,
    surname CHARACTER VARYING,
    email CHARACTER VARYING,
    complaint TEXT
);

CREATE TABLE IF NOT EXISTS surgery (
    id BIGSERIAL PRIMARY KEY,
    nurse_id BIGINT REFERENCES nurse(id),
    patient_id BIGINT REFERENCES patient(id),
    doctor_id BIGINT REFERENCES doctor(id)
);

CREATE TABLE IF NOT EXISTS operation (
    id BIGSERIAL PRIMARY KEY,
    patient_id BIGINT REFERENCES patient(id),
    doctor_id BIGINT REFERENCES doctor(id)
);
