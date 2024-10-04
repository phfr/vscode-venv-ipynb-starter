# Jupyter Notebooks starter Repo

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/yourrepo.git
   cd yourrepo
   ```

2. Create a virtual environment:
   ```bash
   # On Windows
   python -m venv venv

   # On macOS/Linux
   python3 -m venv venv
   ```

3. Activate the virtual environment:
   ```bash
   # On Windows
   venv\Scripts\activate

   # On macOS/Linux
   source venv/bin/activate
   ```

4. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

5. **Configure nbdime**:
   To enhance the handling of Jupyter notebooks in Git, use `nbdime`:

   ```bash
   nbdime config-git --enable
   ```

6. **Enable pre-commit hooks**

   This is optional but forces some best practises.

   This makes sure the code is properly formatted (linting) before you commit.

   ```bash
   pre-commit install
   ````

7. Open the project in VS Code:
   ```bash
   code .
   ```

8. (Should not be required) Select the virtual environment in VS Code:
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS) and choose **Python: Select Interpreter**.
   - Select the `venv` you created.

9. Open the Jupyter notebooks and run them.

9. Optionally exit venv environment after finishing your work
```bash
deactivate
```

## Best Practises: 

### Updating the Requirements File

After installing any new packages while the virtual environment is activated, update the `requirements.txt` file to include these new dependencies:
```bash
pip freeze > requirements.txt
```
This command captures the current state of installed packages and saves it to `requirements.txt`, ensuring that others can replicate your environment.

### VSCode extensions

If you want to suggest extensions to other developers that might be helpful you can put them into `.vscode/extensions.xml`

## Info on File Structure

* `data/` – your data files
* `notebooks/` - jupyter notebooks go here
* `scripts/` - various scripts
* `.vscode/` - settings & suggested extensions
* `.gitattributes`
  * enable nbdime for nicer diffs
  * enable a git filter so the cell outputs are not committed (but kept locally)
* `.pre-commit-config.yaml` – run code formatting before commiting
