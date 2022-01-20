-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;
DROP TABLE IF EXISTS feed;

-- CREATE TABLES

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  first_name TEXT,
  last_name TEXT,
  location TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  filename TEXT,
  posted_at TEXT
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  post_id TEXT
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  post_id
  comment TEXT
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  followed_user_id TEXT,
  follower_user_id TEXT
);

CREATE TABLE feed (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  followed_user_id TEXT,
  post_id TEXT
);