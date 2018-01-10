#!/bin/bash
python3 setup.py build || return 1
python3 setup.py install --root "$SHED_FAKEROOT" || return 1
