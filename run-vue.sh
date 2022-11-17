#!/bin/bash
sleep 10

cd scoreboard-vue/scoreboard-api/
npm run serve &

xdg-open 'http://localhost:8081'