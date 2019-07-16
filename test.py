# import sys
# import requests

# print(sys.version)

# o = requests.get("http://www.baidu.com")
# print(o.status_code)
# ```
# 题目：有四个数字：1、2、3、4，能组成多少个互不相同且无重复数字的三位数？各是多少？
# ```
# for a in range(1, 5):
#     for b in range(1, 5):
#         for c in range(1, 5):
#             if a != b and b != c and a != c:
#                 print(a, b, c)
#             pass
#     pass

import time

format = "%Y-%m-%d %H:%M:%S"
local = time.localtime(time.time())

print(time.strftime(format, local))
