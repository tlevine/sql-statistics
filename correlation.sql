CREATE VIEW IF NOT EXISTS components AS
SELECT
  SUM(
    ("close_today" - (SELECT AVG("close_today") FROM "t3c")) *
    ("open_today" - (SELECT AVG("open_today") FROM "t3c"))
  ) /
  COUNT(*) AS covariance,
  SUM(
    ("close_today" - (SELECT AVG("close_today") FROM "t3c")) *
    ("close_today" - (SELECT AVG("close_today") FROM "t3c"))
  ) /
  COUNT(*) AS variance_close,
  SUM(
    ("open_today" - (SELECT AVG("open_today") FROM "t3c")) *
    ("open_today" - (SELECT AVG("open_today") FROM "t3c"))
  ) /
  COUNT(*) AS variance_open
FROM "t3c";

SELECT
  (covariance * ABS("covariance")) /
  ("variance_close" * "variance_open")
FROM components;
