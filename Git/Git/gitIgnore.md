📘 .gitignore Guide

The .gitignore file tells Git which files or directories to ignore (not track) in a repository.
This is useful for excluding temporary files, sensitive information, or build artifacts.

📝 General Syntax Rules
Syntax Description Example

# Comment line (ignored by Git). # Ignore log files

filename Ignores a specific file. secret.txt
_.ext Ignores all files with a specific extension. _.log (ignores all .log files)
dirname/ Ignores a directory and its contents. node_modules/
**/pattern Ignores files in all subdirectories. **/temp.txt
!pattern Negates a pattern (keeps files even if ignored by a previous rule). !important.log
/pattern Matches only files in the root directory. /config.json
pattern/ Matches only directories (not files). build/
⚙️ Examples

1. Ignore specific files

# Ignore a single file

secret.txt

2. Ignore all files of a type

# Ignore all .log files

\*.log

3. Ignore a directory

# Ignore the entire node_modules folder

node_modules/

4. Ignore by path

# Only ignore config.json in the root, not in subfolders

/config.json

5. Negation (unignore)

# Ignore all .log files except important.log

\*.log
!important.log

6. Wildcards

# Ignore all files ending with .tmp in any folder

\*_/_.tmp

🔍 Useful Predefined Examples
Node.js project
node_modules/
.env
\*.log
dist/

Python project
**pycache**/
\*.pyc
.env

Java project
target/
_.class
_.log

✅ Important Notes

Changes to .gitignore affect only untracked files. If a file is already tracked, Git will still track changes. To stop tracking it:

git rm --cached filename

Always commit your .gitignore file so the whole team uses the same ignore rules.

\\ 📘 .gitignore File — Commands, Syntax, and Examples //

📘 .gitignore File — Commands, Syntax, and Examples

The .gitignore file tells Git which files or directories to ignore — meaning they will not be tracked or committed to the repository.
It’s especially useful for excluding build files, logs, environment configurations, or system-specific files.

🧩 1. Basic Syntax Rules
Rule / Pattern Description Example

# comment Lines starting with # are comments. # Ignore all log files

filename Ignores a specific file in the repository root. config.json
directory/ Ignores an entire directory. node_modules/
_.extension Ignores all files with a given extension. _.log ignores all .log files
!pattern Negates a pattern — includes a file that was ignored by a previous rule. !important.log
/pattern Matches files or directories only in the repository root. /build ignores build/ in the root, not subfolders
**/pattern Matches files or folders recursively at any level. **/temp/ ignores all temp folders
pattern/ Ignores directories matching that name anywhere. cache/ ignores all cache directories
🛠️ 2. Useful Wildcards
Symbol Meaning Example Effect

- Matches zero or more characters (excluding /). _.log Ignores all .log files
  ? Matches exactly one character. config?.json Matches config1.json, configA.json
  ** Matches directories recursively. **/backup/ Ignores all backup folders
  ! Negates an ignore pattern. !main.py Keeps main.py even if _.py is ignored
  📁 3. Common Examples
  🔹 Ignore build artifacts

# Ignore build and dist folders

/build/
/dist/

🔹 Ignore system files

# macOS

.DS_Store

# Windows

Thumbs.db

🔹 Ignore logs and temporary files

# Logs

_.log
logs/
_.tmp

🔹 Ignore environment and secret files
.env
.env.local
_.key
_.pem

🔹 Ignore dependency folders

# Node.js

node_modules/

# Python

**pycache**/
\*.pyc

🔹 Ignore IDE or editor files

# Visual Studio Code

.vscode/

# JetBrains

.idea/

⚙️ 4. Global .gitignore (User-Wide Configuration)

You can create a global ignore file that applies to all repositories on your system.

➤ Command to set up:
git config --global core.excludesfile ~/.gitignore_global

Then edit ~/.gitignore_global to include common patterns, e.g.:

# Global ignore rules

.DS_Store
Thumbs.db
\*.log

🧪 5. Check Ignored Files
Command Description Example
git status --ignored Shows ignored and untracked files. git status --ignored
git check-ignore -v <file> Shows which rule caused a file to be ignored. git check-ignore -v myfile.log
💡 6. Tips

Place the .gitignore file in the root directory of your project.

You can also have additional .gitignore files in subdirectories for more granular control.

Always commit your .gitignore file early — to avoid adding unwanted files by mistake.
