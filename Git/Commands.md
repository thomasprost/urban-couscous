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
````

#### Merge

````
// "No Fast forward" option keeps commits history
git merge --no-ff :branchname
````