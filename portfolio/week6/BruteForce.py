#!/usr/bin/python3
from string import ascii_lowercase
from itertools import product
from hashlib import sha256

#allowed characters in the password
charset = ascii_lowercase  # abcdefghijklmnopqrstuvwxyz
#Maximum Characters in the password
maxrange = 5
def solve_hash(hash):
    for i in range(maxrange+1):
        for attempt in product(charset, repeat=i):
            current_password = ''.join(attempt)
            hashpassword = sha256(current_password.rstrip().encode('utf-8')).hexdigest()
            print("Trying " + hashpassword  + "   " + current_password)
            if hashpassword == hash:
                return ( "Password has been cracked! It was" "  " + current_password )
  #Calling Function              
print(solve_hash('8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52'))
