#!/bin/bash

# Activate the Python 3.11 virtual environment
source venv/bin/activate

echo "✅ Virtual environment activated (Python 3.11)"
echo "🔗 Virtual environment path: $(which python)"
echo ""
echo "📦 Key package versions:"

python -c "
import sys
import mlflow
import pandas as pd
import numpy as np
import pyarrow as pa

print(f'   Python: {sys.version.split()[0]}')
print(f'   MLflow: {mlflow.__version__}')
print(f'   pandas: {pd.__version__}')
print(f'   numpy: {np.__version__}')
print(f'   PyArrow: {pa.__version__}')
"

echo ""
echo "🚀 You're now ready to work on your MLOps project!"
echo "💡 To start Jupyter: jupyter notebook"
echo "📋 To check project imports:"
echo "   python -c \"from mlProject.constants import *; from mlProject.utils.common import read_yaml, create_directories; print('Project imports working!')\"" 
