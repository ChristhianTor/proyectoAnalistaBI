CREATE TABLE players (
  player_id TEXT PRIMARY KEY,
  name       TEXT,
  country    TEXT,
  registration_date TEXT
);

CREATE TABLE deposits (
  deposit_id TEXT PRIMARY KEY,
  player_id  TEXT,
  amount     REAL,
  deposit_date TEXT,
  FOREIGN KEY(player_id) REFERENCES players(player_id)
);

CREATE TABLE traffic_sources (
  player_id TEXT,
  trafficker TEXT,
  cost_per_acquisition REAL,
  registration_date TEXT,
  FOREIGN KEY(player_id) REFERENCES players(player_id)
);

CREATE TABLE internal_records (
  month      TEXT,
  ftd_count  INTEGER,
  cpa_count  INTEGER
);
