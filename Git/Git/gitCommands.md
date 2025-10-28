1. git init
   • Syntax: git init [directory]
   • Parameters:
   ○ [directory] (optional): Specifies the directory where the new empty Git repository will be created. If omitted, the current directory is used.
   • Description: Initializes a new, empty Git repository. This creates a .git directory in the specified or current directory, which contains all the necessary files for the repository.
   • Example:
   Bash

git init my_project
cd my_project
git init # Initializes a repo in the current directory

2. git clone
   • Syntax: git clone <repository> [directory]
   • Parameters:
   ○ <repository> (required): The URL or path to the remote repository you want to clone.
   ○ [directory] (optional): The name of the new directory to clone into. If omitted, a directory with the same name as the repository will be created.
   • Description: Creates a copy of an existing Git repository. It downloads all the files and the entire history of the project from the remote repository.
   • Example:
   Bash

git clone https://github.com/octocat/Spoon-Knife.git
git clone git@github.com:your_username/your_repo.git my_local_repo

3. git add
   • Syntax: git add <pathspec>... or git add .
   • Parameters:
   ○ <pathspec>...: Specifies the files or directories to add to the staging area. You can list multiple files/directories separated by spaces.
   ○ .: Adds all changes (new files, modified files, deleted files) in the current directory and its subdirectories to the staging area.
   ○ -u or --update: Stages modifications and deletions, but not new files.
   ○ -A or --all: Stages all changes (including new files, modifications, and deletions). Equivalent to git add . in the root of the repository.
   • Description: Adds changes from the working directory to the staging area (index). This prepares your changes to be included in the next commit.
   • Example:
   Bash

git add index.html style.css
git add images/
git add .

4. git commit
   • Syntax: git commit [-m <message>] or git commit
   • Parameters:
   ○ -m <message>: Specifies the commit message directly on the command line. This is the most common way to add a message.
   ○ -a or --all: Automatically stages all modified and deleted files that are already tracked by Git. It does not stage new (untracked) files.
   ○ --amend: Allows you to change the last commit. This will open your editor to modify the commit message, and you can also add/remove staged changes before the commit.
   • Description: Records the staged changes into the repository history as a new commit. Each commit has a unique ID, a message, and points to the previous commit(s).
   • Example:
   Bash

git commit -m "Initial commit of the project"
git add .
git commit -m "Add header and footer"
git commit --amend -m "Fix typo in header (amended commit)"

5. git status
   • Syntax: git status
   • Parameters:
   ○ -s or --short: Gives the output in a short, machine-readable format.
   ○ -u or --untracked-files=<mode>: Shows untracked files. mode can be no, normal, or all.
   • Description: Shows the status of your working directory and staging area. It tells you which files are untracked, modified, and staged for the next commit.
   • Example:
   Bash

git status
git status -s

6. git log
   • Syntax: git log [options]
   • Parameters:
   ○ --oneline: Displays each commit on a single line.
   ○ --graph: Draws an ASCII art representation of the branch history.
   ○ --decorate: Shows branch and tag names next to the commit they point to.
   ○ --all: Shows all branches (local and remote).
   ○ -n <count>: Limits the number of commits to display.
   ○ --author="<name>": Filters commits by author.
   ○ --grep="<pattern>": Filters commits by commit message content.
   • Description: Displays the commit history of the current branch or specified references.
   • Example:
   Bash

git log
git log --oneline --graph --decorate
git log -n 5
git log --author="John Doe"

7. git diff
   • Syntax: git diff [options] [<commit>] [<path>]
   • Parameters:
   ○ (No parameters): Shows unstaged changes in the working directory.
   ○ --staged or --cached: Shows changes in the staging area that are not yet committed.
   ○ <commit1> <commit2>: Shows the difference between two specific commits.
   ○ <branch1> <branch2>: Shows the difference between the tips of two branches.
   ○ <path>: Limits the diff to a specific file or directory.
   • Description: Shows changes between commits, commit and working tree, etc. It's used to see what has changed.
   • Example:
   Bash

git diff # Shows unstaged changes
git diff --staged # Shows staged changes
git diff HEAD~1 HEAD # Shows changes between the last two commits
git diff feature_branch main
git diff index.html

8. git branch
   • Syntax: git branch [name] or git branch [options]
   • Parameters:
   ○ (No parameters): Lists all local branches.
   ○ <name>: Creates a new branch with the specified name.
   ○ -d <name>: Deletes the specified branch (only if it's merged).
   ○ -D <name>: Force-deletes the specified branch (even if not merged).
   ○ -r: Lists remote-tracking branches.
   ○ -a: Lists both local and remote-tracking branches.
   • Description: Manages branches. You can list, create, and delete branches.
   • Example:
   Bash

git branch # List local branches
git branch new_feature # Create a new branch
git branch -d old_branch # Delete a merged branch
git branch -a # List all branches (local and remote)

9. git checkout
   • Syntax: git checkout <branch> or git checkout -b <new_branch> or git checkout <commit> <file>
   • Parameters:
   ○ <branch>: Switches to the specified branch.
   ○ -b <new_branch>: Creates a new branch and immediately switches to it.
   ○ <commit> <file>: Restores a specific file to its state at a given commit.
   ○ -- <file>: Discards unstaged changes in a specific file.
   • Description: Used to switch branches or restore working tree files.
   • Example:
   Bash

git checkout develop # Switch to the 'develop' branch
git checkout -b feature/login # Create and switch to 'feature/login'
git checkout HEAD~1 index.html # Revert index.html to its state one commit ago
git checkout -- main.js # Discard unstaged changes in main.js

Note: In newer Git versions (2.23+), git switch and git restore are recommended for branch switching and restoring files respectively, for clearer separation of concerns.

10. git switch (Recommended for Git 2.23+)
    • Syntax: git switch <branch> or git switch -c <new_branch>
    • Parameters:
    ○ <branch>: Switches to the specified branch.
    ○ -c <new_branch>: Creates a new branch and immediately switches to it.
    ○ --create <new_branch>: Same as -c.
    • Description: Switches branches. It's a clearer, safer alternative to git checkout for branch operations.
    • Example:
    Bash

git switch main
git switch -c hotfix/bug_123

11. git restore (Recommended for Git 2.23+)
    • Syntax: git restore <pathspec>... or git restore --staged <pathspec>...
    • Parameters:
    ○ <pathspec>...: Restores the specified files or directories in the working tree to their state in the current commit (or index if --source is used).
    ○ --staged: Unstages files (restores them to their state in the HEAD commit), keeping modifications in the working directory.
    ○ --source=<tree-ish>: Restore from a specific commit or branch instead of HEAD.
    • Description: Restores working tree files. It's a clearer, safer alternative to git checkout for file restoration.
    • Example:
    Bash

git restore index.html # Discard unstaged changes in index.html
git restore --staged style.css # Unstage style.css
git restore --source=HEAD~1 app.js # Restore app.js to its state one commit ago

12. git merge
    • Syntax: git merge <branch>
    • Parameters:
    ○ <branch>: The branch to merge into the current branch.
    ○ --no-ff: Creates a merge commit even if a fast-forward merge is possible. This preserves the branch history.
    ○ --abort: Aborts the current merge conflict resolution and reconstructs the pre-merge state.
    • Description: Joins two or more development histories together. It integrates changes from a specified branch into the current branch.
    • Example:
    Bash

git checkout main
git merge feature/new_design
git merge --no-ff hotfix/critical_bug

13. git pull
    • Syntax: git pull [remote] [branch]
    • Parameters:
    ○ [remote] (optional): The name of the remote repository (e.g., origin).
    ○ [branch] (optional): The name of the remote branch to pull from.
    • Description: Fetches changes from a remote repository and integrates them into the current branch. It's essentially a git fetch followed by a git merge.
    • Example:
    Bash

git pull origin main
git pull # Pulls from the configured upstream branch

14. git push
    • Syntax: git push [remote] [branch]
    • Parameters:
    ○ [remote] (optional): The name of the remote repository (e.g., origin).
    ○ [branch] (optional): The name of the local branch to push to the remote. If omitted and an upstream is set, it pushes the current branch.
    ○ -u or --set-upstream: Sets the upstream branch for the current local branch. This means you can then just use git push without specifying remote and branch.
    ○ --force: Forces the push, overwriting history on the remote. Use with extreme caution!
    ○ --tags: Pushes all local tags to the remote.
    • Description: Uploads local branch commits to the remote repository.
    • Example:
    Bash

git push origin main
git push -u origin feature/new_feature # Push and set upstream
git push # After setting upstream

15. git remote
    • Syntax: git remote [options] [name] [url]
    • Parameters:
    ○ (No parameters): Lists existing remotes.
    ○ -v or --verbose: Shows the URLs of the remotes as well.
    ○ add <name> <url>: Adds a new remote repository.
    ○ rm <name>: Removes a remote repository.
    ○ rename <old_name> <new_name>: Renames a remote.
    • Description: Manages the set of tracked repositories ("remotes").
    • Example:
    Bash

git remote # List remotes
git remote -v # List remotes with URLs
git remote add origin https://github.com/your_username/your_repo.git
git remote rm old_remote

16. git fetch
    • Syntax: git fetch [remote] [branch]
    • Parameters:
    ○ [remote] (optional): The name of the remote repository.
    ○ [branch] (optional): The name of the remote branch to fetch.
    ○ --all: Fetches all remotes.
    • Description: Downloads objects and refs from another repository. It retrieves changes from a remote repository but does not merge them into your current branch.
    • Example:
    Bash

git fetch origin
git fetch origin main
git fetch --all

17. git reset
    • Syntax: git reset [--soft | --mixed | --hard] <commit> or git reset <pathspec>...
    • Parameters:
    ○ <commit>: The commit to reset to.
    ○ --soft: Moves HEAD to the specified commit, but keeps the working directory and staging area unchanged.
    ○ --mixed (default): Moves HEAD to the specified commit, resets the staging area to match the commit, but keeps the working directory unchanged.
    ○ --hard: Moves HEAD to the specified commit, and resets both the staging area and the working directory to match the commit. This will discard all uncommitted changes!
    ○ <pathspec>...: Unstages specific files from the staging area.
    • Description: Resets the current HEAD to the specified state. It can be used to unstage files, undo commits, or reset the working directory.
    • Example:
    Bash

git reset HEAD~1 # Unstage the last commit (changes remain in working dir)
git reset --hard HEAD~1 # Discard the last commit and all its changes
git reset index.html # Unstage index.html

18. git rebase
    • Syntax: git rebase [base] or git rebase -i [base]
    • Parameters:
    ○ [base]: The commit or branch to rebase onto.
    ○ -i or --interactive: Starts an interactive rebase session, allowing you to reorder, squash, edit, or drop commits.
    ○ --abort: Aborts the current rebase operation.
    ○ --continue: Continues the rebase operation after resolving conflicts.
    • Description: Rewrites a series of commits onto a new base. It's often used to keep a linear project history, especially when working with feature branches.
    • Example:
    Bash

git checkout feature_branch
git rebase main # Rebase feature_branch onto main
git rebase -i HEAD~3 # Interactively rebase the last 3 commits

19. git tag
    • Syntax: git tag [name] or git tag -a <name> -m <message>
    • Parameters:
    ○ (No parameters): Lists all existing tags.
    ○ <name>: Creates a lightweight (unannotated) tag.
    ○ -a <name>: Creates an annotated tag (recommended for releases).
    ○ -m <message>: Specifies the message for an annotated tag.
    ○ -d <name>: Deletes a local tag.
    ○ --list <pattern>: Lists tags matching a pattern.
    • Description: Marks specific points in the history as important. Often used for release versions (e.g., v1.0, v2.0).
    • Example:
    Bash

git tag v1.0
git tag -a v2.0 -m "Release version 2.0"
git tag # List tags
git tag -d v1.0 # Delete local tag v1.0

20. git stash
    • Syntax: git stash [save] [message] or git stash [apply | pop | list | drop]
    • Parameters:
    ○ save [message]: Stashes your current changes with an optional message.
    ○ list: Lists all stashes.
    ○ apply [stash@{n}]: Applies a stash (by default, the latest) but keeps it in the stash list.
    ○ pop [stash@{n}]: Applies a stash and removes it from the stash list.
    ○ drop [stash@{n}]: Removes a specific stash from the stash list.
    ○ clear: Removes all stashes.
    • Description: Temporarily saves changes that you don't want to commit immediately, allowing you to switch branches or perform other operations and then reapply the changes later.
    • Example:
    Bash

git stash save "Work in progress on feature X"
git stash list
git stash pop
git stash apply stash@{1}
git stash drop stash@{0}
