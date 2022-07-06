#!/bin/bash

jupyter nbconvert --to notebook --ExecutePreprocessor.timeout=1800 --execute Question_1.ipynb
