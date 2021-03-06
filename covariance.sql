SELECT
  SUM(
    ("close_today" - (SELECT AVG("close_today") FROM "t3c")) *
    ("open_today" - (SELECT AVG("open_today") FROM "t3c"))
  ) /
  COUNT(*)
FROM "t3c";
