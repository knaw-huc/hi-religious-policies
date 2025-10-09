#!/usr/bin/env bash
set -x
if [ -d /app/repo/hi-religious-policies/.git ]; then
    cd /app/repo/hi-religious-policies
    git pull
else
    git clone https://github.com/knaw-huc/hi-religious-policies.git /app/repo/hi-religious-policies
fi
cp -r /app/repo/hi-religious-policies/html /app/repo/html

