### Git

#### Clone and set origin name
````
git clone "repo" -o origin
````

#### Delete Branch

````
// Locally
git branch -D branchName
// On remote
git push origin :branchName
// Clean branches from remote that don't exist anymore
git remote prune origin (--dry-run to test it before actually removing)
````

#### Merge

````
// "No Fast forward" option keeps commits history
git merge --no-ff :branchname
````

#### See all remote branches
````
git branch -a
````

#### Undo git add before commit
````
git reset <file>
````

#### New local branch that tracks remote one
````
git checkout -b LocalName origin/remotebranchname
````

#### Change remote url
````
// see the remote url
git remote -v

// change the remote url
git remote set-url origin https://github.com/user/repo2.git

````