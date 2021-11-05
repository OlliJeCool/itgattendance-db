CREATE TABLE IF NOT EXISTS "Users"(
    "Id" serial PRIMARY KEY,
    "Name" varchar NOT NULL,
    "Number" varchar NOT NULL,
    "LateArrivals" int NULL,
    "LockerNumber" int NOT NULL
);

CREATE TABLE IF NOT EXISTS "Arrival"(
    "Id" serial PRIMARY KEY,
    "UserId" int NOT NULL,
    "DateTime" timestamp DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "NotArrived"(
    "Id" serial PRIMARY KEY,
    "UserId" int NOT NULL,
    "DateTime" DATE NOT NULL
);


ALTER TABLE "Arrival"
ADD FOREIGN KEY ("UserId") REFERENCES "Users"("Id");

ALTER TABLE "NotArrived"
ADD FOREIGN KEY ("UserId") REFERENCES "Users"("Id");