# Roll For Initiative
Inspired by [this](https://twitter.com/bubblewire/status/1261316606900068352) tweet by [bubblewire](https://twitter.com/bubblewire),
this tiny script will generate two numbers between 1 and 20, and write the lesser of the two to your "initiative" file.

It's the lesser of two rolls because we're rolling at a disadvantage due to quarantine.

## Crontab
The script alone just creates the random number in the file. To make it happen every hour, add it to your `crontab`:
```
0 * * * * ~/initiative.sh
```
