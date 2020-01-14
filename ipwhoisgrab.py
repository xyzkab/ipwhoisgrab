#!/usr/bin/env python

from ipwhois import IPWhois
from pprint import pprint
import sys

if len(sys.argv) - 1 < 1:
  sys.exit("We need target ip")

target_ip = sys.argv[1]

whois = IPWhois(target_ip)
result = whois.lookup_whois()
pprint(result)


