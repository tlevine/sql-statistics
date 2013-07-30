SELECT
  SUM(
    (SELECT "close_today" - (SELECT AVG("close_today") FROM "t3c")) *
    (SELECT "close_today" - (SELECT AVG("close_today") FROM "t3c"))
  ) /
  COUNT(*)
FROM "t3c";
