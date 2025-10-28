1. Get the Latest Changes
   First, make sure your local copy of the repository is up-to-date. Navigate to your project's directory in your terminal and fetch all the latest changes from the remote. This doesn't apply any changes to your local branches, it just updates your local knowledge of the remote repository's state.
   Bash

git fetch origin

Next, check out the branch you want to merge into. For example, if you want to merge a feature branch called feature-A into your main branch, you'd switch to main:
Bash

git checkout main

2. Merge the Branches
   Now you can merge the feature-A branch into your main branch. This command brings all the changes from feature-A and integrates them into your current branch, main.
   Bash

git merge feature-A

If there are no conflicts, Git will automatically create a new merge commit. If there are merge conflicts, you'll need to resolve them manually in your code editor. Git will tell you which files have conflicts. After resolving them, you'll need to stage the changes and create a new merge commit.
Bash

git add .

git commit -m "Merge feature-A into main"

3. Push to GitHub
   Once the merge is complete and any conflicts are resolved, push your updated main branch to the remote repository on GitHub. This makes the merged changes available to everyone else working on the project.
   Bash

git push origin main

Complete Example
Let's say you have a main branch and a new feature branch called new-design. Here's the sequence of commands to merge new-design into main and push the result to GitHub: 1. Fetch remote changes: git fetch origin 2. Switch to the target branch: git checkout main 3. Merge the feature branch: git merge new-design 4. Push the merged branch to GitHub: git push origin main
