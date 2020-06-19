#!/bin/python3
import os
import sys

print(sys.argv)
print("Don't mess with this, It changes /etc/hosts file.")

if len(sys.argv) > 1:
    os.system("cp /etc/hosts hosts.old")
    if "--add" in sys.argv and len(sys.argv) >= 4:
        box_ip = sys.argv[(sys.argv.index("--add")) + 1]
        box_name = sys.argv[(sys.argv.index("--add")) + 2]
        os.system(f"echo '{box_ip}  {box_name}  {box_name[:-4]}'")
        print("Don't mess with this, It changes /etc/hosts file.")
        confirm = input("Are you sure? Y/n: ").lower()
        if confirm == "y" or len(confirm) == 0:
            os.system(
                f"sudo echo '{box_ip}   {box_name}      {box_name[:-4]}' >> /etc/hosts")
    elif "--remove" in sys.argv:
        box_ip = sys.argv[(sys.argv.index("--remove")) + 1]
        print(box_ip)
        box_name = sys.argv[(sys.argv.index("--remove")) + 2]
        print(box_name)
        # Work in progress,

else:
    print("""
Use this format to add/remove boxes quickly from hosts
./Hackthebox --add <IP_OF_THE_BOX> <NAME_OF_THE_BOX_to_save>
./Hackthebox --remove <IP_OF_THE_BOX> <NAME_OF_THE_BOX_you_added>
e.g
./Hackthebox --add 10.24.19.1 testing.htb


        """)
