#!/bin/bash

kill -s HUP 1
echo `date` | tee --append /status.log
