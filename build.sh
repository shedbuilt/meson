#!/bin/bash
# Build and Install
python3 setup.py build &&
python3 setup.py install --root "$SHED_FAKE_ROOT" &&
# Rearrange man pages
mv -v "${SHED_FAKE_ROOT}/usr/lib/python3.6/site-packages/${SHED_PKG_NAME}-${SHED_PKG_VERSION}-py3.6.egg/share/man/man1"/*.1 \
      "${SHED_FAKE_ROOT}/usr/share/man/man1" &&
rm -r "${SHED_FAKE_ROOT}/usr/lib/python3.6/site-packages/${SHED_PKG_NAME}-${SHED_PKG_VERSION}-py3.6.egg/share"
