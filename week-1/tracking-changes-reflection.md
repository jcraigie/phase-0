##How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes developers' lives easier by allowing easy reversion to a known point if one of those tracked changes breaks a program.

##What is a commit?
A commit is a save to the branch being currently worked on that includes a message stating what changes or work was performed during that session.

##What are the best practices for commit messages?
A commit message should state in the present tense what changes that commit contains. Essentially a message could be prefaced by: “Adding this commit to the master program will...”

##What does the HEAD^ argument mean?
The head argument allows one to revert to earlier commits.

##What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are untracked files, tracked files and then commited files. Untracked files are most likely new files that you would then use “git add ***” on to add them to git to be commited at which time they become tracked and will be commited to the branch once git commit them.

##Write a handy cheatsheet of the commands you need to commit your changes?

Git status – checks the status of a file.

git checkout – allows work on a file from its previous commit.

git add – adds a file to the list of files to be added in the next commit.

git commit -m – commits all changes with a message regarding the work performed.

##What is a pull request and how do you create and merge one?
A pull request is a request for the branch you have been working on to be reviewed and merged with the master file.

Pull requests are created and merged by:
1. pushing your branch to Github.
2. Finding the branch in your repo and clicking the “Compare & pull request” button.
3. In the next screen confirm the base is listed as master and the comparison branch is the branch you wish to merge.
4. Fill in the title and description
5. Click the “Create pull request” button.
6. Click the “Merge pull request” button.
7. Click the “Confirm merge” button.
8. Delete the old branch.

##Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it allows a person other than the author to review code and possibly catch any mistakes with a fresh pair of eyes before being merged with the master file.