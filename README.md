# Secret Strava challenges fetcher

Simple bash script that checks for new Stava challenges. Since challenges are available not only via slug (e.g. https://www.strava.com/challenges/HOKA-ONE-ONE-Run-Valencia) but also via unique id (https://www.strava.com/challenges/1594) we're able to look for "secret challenges" (not all are visible in all regions but you can join any!).

After successfully feching challenge data - next id is stored locally in `next_id`. Thanks to that next run won't go through already fetched URLs.

Usage (make file executable first!): 
```
./strava.sh 
```

Example output:
```
./strava.sh 
Checking challenges from ID 1600 to 1620
https://www.strava.com/challenges/1600 - Strava Brasil Team Ride Challenge
https://www.strava.com/challenges/1601 - Strava Brasil Team Uphill Run Challenge
https://www.strava.com/challenges/1602 - Strava Brasil Team Uphill Ride Challenge
https://www.strava.com/challenges/1603 - Strava Brasil Team Track Run Challenge
```

---
**NOTE**

I'm not affiliated or effected with [Strava](https://github.com/strava). I just thought I can share simple solution I have been looking for months :-)

---

## License
MIT
