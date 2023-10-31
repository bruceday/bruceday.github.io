# -*- coding: utf-8 -*-

import base64

f = open('figure1.png', 'rb')
ls_f = base64.b64encode(f.read())
f.close()
print(ls_f)
