## Git Theory

### Configuracion Inicial

#### Setear nombre de usuario

git config --global user.name "'NombreUsuario'"

#### Setear Email de usuario

git config --global user.email "'user@example.com'"

#### Listado de configuraciones de GIT

git config --list

#### Establecer a VS Code como editor predeterminado

git config --global core.editor "code --wait"

#### Salidas mas coloridas ;)

git config --global color.ui

#### Auto Carriage Return Line field

git config --global core.autocrlf true

#### (Inicializar GIT)

git init

1. git config
   • Syntax: git config [--global | --system | --local] <key> [value]
   • Parameters:
   ○ --global: Sets the configuration for the current user across all repositories. This is stored in ~/.gitconfig. This is the most common level for user settings.
   ○ --system: Sets the configuration for all users on the system. This is stored in $(prefix)/etc/gitconfig. Requires administrative privileges.
   ○ --local (default): Sets the configuration for the current repository only. This is stored in .git/config within the repository.
   ○ <key>: The name of the configuration variable (e.g., user.name, core.editor).
   ○ [value] (optional): The value to set for the configuration variable. If omitted, git config will display the current value of the key.
   ○ --list: Lists all configuration variables at a specific level (or all levels if no level is specified).
   ○ --get <key>: Gets the value of a specific configuration key.
   ○ --unset <key>: Removes a specific configuration key.
   ○ --edit: Opens the configuration file in your default editor.
   • Description: Used to get, set, and manage Git configuration options. These options control various aspects of Git's behavior, from your identity to how Git handles line endings and diffs.
   • Examples:
   ○ Set user name (global):
   Bash

git config --global user.name "John Doe"
○ Set user email (global):
Bash

git config --global user.email "john.doe@example.com"
○ Set default text editor for Git messages (global):
Bash

git config --global core.editor "vim"

# Or for VS Code:

git config --global core.editor "code --wait"
○ Set default diff tool (global):
Bash

git config --global diff.tool "meld"
○ Enable colored Git output (global):
Bash

git config --global color.ui auto
○ Set default branch name for new repositories (global, Git 2.28+):
Bash

git config --global init.defaultBranch main
○ List all global configurations:
Bash

git config --global --list
○ List all local configurations for the current repository:
Bash

git config --local --list
○ Get the value of a specific key:
Bash

git config user.name
○ Unset a global configuration key:
Bash

git config --global --unset user.email
○ Open the global configuration file in your editor:
Bash

git config --global --edit
○ Configure a credential helper (store credentials in memory for a short period):
Bash

git config --global credential.helper cache

(Or for macOS, often osxkeychain and for Windows, wincred or manager)
Bash

git config --global credential.helper osxkeychain # macOS
git config --global credential.helper manager # Windows
○ Configure Git to ignore file mode changes (useful on Windows/macOS when collaborating with Linux users):
Bash

git config core.fileMode false

(This is often set at the local repository level.)
○ Set up aliases for common Git commands:
Bash

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

Now you can use git st instead of git status, git co instead of git checkout, etc.

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
• Place the .gitignore file in the root directory of your project.
• You can also have additional .gitignore files in subdirectories for more granular control.
• Always commit your .gitignore file early — to avoid adding unwanted files by mistake.
