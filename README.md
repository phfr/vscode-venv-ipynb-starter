# Jupyter Notebooks starter Repo

VSCode, jupyter notebooks, venv virtual environments, git filter for not committing cell outputs, pre-commit hook for linting

## Setup Instructions
0. Fork the reposity

1. Clone the repository (adjust URI & path to your fork):
   ```bash
   git clone https://github.com/phfr/vscode-venv-ipynb-starter.git
   cd vscode-venv-ipynb-starter
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

   This is optional but suggested due to this enforcing some best practises.

   This makes sure the code is properly formatted (linting) before you commit.

   ```bash
   pre-commit install
   ````

   If your code gets formatted and this results in changes, the commit gets cancelled for you to review to changes.

   This is expected behaviour, and you need to stage the changed files again and commit.

   Alternatively there is a task defined to run the formatting manually: In VSCode  Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS) to open the Command Palette and enter `run task`, then choose it and press enter.

7. Enable git filter to disable committing of cell outputs
   ```bash
   git config filter.nbstripout.clean "nbstripout"
   ```

8. Open the project in VS Code:
   ```bash
   code .
   ```

   (In case you get a command not found, you can start VS Code, hit `Cmd + Shift + P`, enter `shell command` and select `Shell Command: Install 'code' command in PATH.`)

9. (Should not be required) Select the virtual environment in VS Code:
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS) and choose **Python: Select Interpreter**.
   - Select the `venv` you created.

10. Open the Jupyter notebooks and run them.

11. Optionally exit venv environment after finishing your work
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
* `scripts/` - place for various scripts
* `.vscode/` - settings, suggested extensions & task definition for linting
* `.gitattributes`
  * enable nbdime for nicer diffs
  * enable a git filter so the cell outputs are not committed (but kept locally)
* `.pre-commit-config.yaml` – run code formatting before commiting
