#!/bin/bash
./IpInfo.sh | sed -n 's/\(IP Address\)/\1/p'