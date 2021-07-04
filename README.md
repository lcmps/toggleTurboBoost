# toggleTurboBoost
a simple shell script to toggle Intel Turbo Boost state

### Usage
./turbo-boost.sh off
OR
./turbo-boost.sh on

### Crontab
@reboot ./turbo-boost.sh off > /dev/null 2>&1
