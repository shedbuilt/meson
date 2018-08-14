#!/bin/bash
# Build and Install
python3 setup.py build &&
python3 setup.py install --root="$SHED_FAKE_ROOT"
