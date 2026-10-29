import os
import shutil

print("==============================")
print("   PYTHON RESOURCE CHECK      ")
print("==============================")

# 1. Get current login user using environmental variables
user = os.environ.get('USER', 'unknown')
print(f"Current User: {user}")

# 2. Check Disk Space smartly using the shutil library
total, used, free = shutil.disk_usage("/")
print(f"Disk Total: {total // (2**30)} GB")
print(f"Disk Used : {used // (2**30)} GB")
print(f"Disk Free : {free // (2**30)} GB")

print("==============================")
