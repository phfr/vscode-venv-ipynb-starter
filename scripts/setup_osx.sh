#!/bin/sh
python3 -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
nbdime config-git --enable
pre-commit install
git config filter.nbstripout.clean "nbstripout"
