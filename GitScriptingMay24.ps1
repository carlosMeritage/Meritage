PS H:\> cd C:\GitRepository

PS C:\GitRepository> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   File3.txt

no changes added to commit (use "git add" and/or "git commit -a")

PS C:\GitRepository> git stash
Saved working directory and index state WIP on master: cfeb4a7 this is the 3rd 
commit

PS C:\GitRepository> git status
On branch master
nothing to commit, working tree clean

PS C:\GitRepository> git log
commit cfeb4a7eb430efd751742094f39fca4e814a7893
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:58:09 2017 -0700

    this is the 3rd commit

commit 1b7bd351d5cd33cbabd63f2dc2866c9603f540af
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:30:35 2017 -0700

    this is the 2nd commit

commit 52989f13f53c90aeb2c6129a853e15c081a5620b
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:28:34 2017 -0700

    this is just a test commit

PS C:\GitRepository> git branch v2.0

PS C:\GitRepository> git checkout v2.0
git : Switched to branch 'v2.0'
At line:1 char:1
+ git checkout v2.0
+ ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Switched to branch 'v2.0':String) 
    [], RemoteException
    + FullyQualifiedErrorId : NativeCommandError
 

PS C:\GitRepository> git branch v2.0
git : fatal: A branch named 'v2.0' already exists.
At line:1 char:1
+ git branch v2.0
+ ~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (fatal: A branch...already exists.:String) [], Remote 
   Exception
    + FullyQualifiedErrorId : NativeCommandError
 

PS C:\GitRepository> git checkout v2.0
git : Already on 'v2.0'
At line:1 char:1
+ git checkout v2.0
+ ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Already on 'v2.0':String) [], RemoteException
    + FullyQualifiedErrorId : NativeCommandError
 

PS C:\GitRepository> git add *.*

PS C:\GitRepository> git commit -m "V2.0 changes"
[v2.0 0ee6387] V2.0 changes
 4 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 File4 branchV2.txt

PS C:\GitRepository> git commit -m "V2.0 additional changes"
On branch v2.0
Changes not staged for commit:
	modified:   File4 branchV2.txt

no changes added to commit

PS C:\GitRepository> git add *.*

PS C:\GitRepository> git commit -m "V2.0 additional changes"
[v2.0 c884e9d] V2.0 additional changes
 1 file changed, 6 insertions(+)

PS C:\GitRepository> git check
git : git: 'check' is not a git command. See 'git --help'.
At line:1 char:1
+ git check
+ ~~~~~~~~~
    + CategoryInfo          : NotSpecified: (git: 'check' is...e 'git --help'.:String) [], Remote 
   Exception
    + FullyQualifiedErrorId : NativeCommandError
 
Did you mean one of these?
    checkout
    check-attr
    cherry

PS C:\GitRepository> git --help
usage: git [--version] [--help] [-C <path>] [-c name=value]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]

These are common Git commands used in various situations:

start a working area (see also: git help tutorial)
   clone      Clone a repository into a new directory
   init       Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add        Add file contents to the index
   mv         Move or rename a file, a directory, or a symlink
   reset      Reset current HEAD to the specified state
   rm         Remove files from the working tree and from the index

examine the history and state (see also: git help revisions)
   bisect     Use binary search to find the commit that introduced a bug
   grep       Print lines matching a pattern
   log        Show commit logs
   show       Show various types of objects
   status     Show the working tree status

grow, mark and tweak your common history
   branch     List, create, or delete branches
   checkout   Switch branches or restore working tree files
   commit     Record changes to the repository
   diff       Show changes between commits, commit and working tree, etc
   merge      Join two or more development histories together
   rebase     Reapply commits on top of another base tip
   tag        Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch      Download objects and refs from another repository
   pull       Fetch from and integrate with another repository or a local branch
   push       Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.

PS C:\GitRepository> git checkout master
git : Switched to branch 'master'
At line:1 char:1
+ git checkout master
+ ~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Switched to branch 'master':String) [], RemoteExcept 
   ion
    + FullyQualifiedErrorId : NativeCommandError
 

PS C:\GitRepository> git checkout v2.0
git : Switched to branch 'v2.0'
At line:1 char:1
+ git checkout v2.0
+ ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Switched to branch 'v2.0':String) [], RemoteExceptio 
   n
    + FullyQualifiedErrorId : NativeCommandError
 

PS C:\GitRepository> git checkout master
git : Switched to branch 'master'
At line:1 char:1
+ git checkout master
+ ~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Switched to branch 'master':String) [], RemoteExcept 
   ion
    + FullyQualifiedErrorId : NativeCommandError
 

PS C:\GitRepository> git merge v2.0
Updating cfeb4a7..c884e9d
Fast-forward
 File1.txt          | 4 +++-
 File2.txt          | 5 ++++-
 File3.txt          | 5 +++++
 File4 branchV2.txt | 8 ++++++++
 4 files changed, 20 insertions(+), 2 deletions(-)
 create mode 100644 File4 branchV2.txt

PS C:\GitRepository> git log
commit c884e9dff2013e63e2bd0057b9cc1d5c77f93c73
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Wed May 24 08:12:56 2017 -0700

    V2.0 additional changes

commit 0ee638794a6d651ea0f98ae0476f03d6cdc4a9cf
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Wed May 24 08:10:18 2017 -0700

    V2.0 changes

commit cfeb4a7eb430efd751742094f39fca4e814a7893
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:58:09 2017 -0700

    this is the 3rd commit

commit 1b7bd351d5cd33cbabd63f2dc2866c9603f540af
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:30:35 2017 -0700

    this is the 2nd commit

commit 52989f13f53c90aeb2c6129a853e15c081a5620b
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:28:34 2017 -0700

    this is just a test commit

PS C:\GitRepository> git add *.*

PS C:\GitRepository> git commit -m "This includes the Git Script file"
[master 62e6705] This includes the Git Script file
 1 file changed, 220 insertions(+)
 create mode 100644 GitScriptingMay24.ps1

PS C:\GitRepository> git log
commit 62e6705df3a92efa9b7d96c2bab7fdf505d51bf0
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Wed May 24 08:27:06 2017 -0700

    This includes the Git Script file

commit c884e9dff2013e63e2bd0057b9cc1d5c77f93c73
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Wed May 24 08:12:56 2017 -0700

    V2.0 additional changes

commit 0ee638794a6d651ea0f98ae0476f03d6cdc4a9cf
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Wed May 24 08:10:18 2017 -0700

    V2.0 changes

commit cfeb4a7eb430efd751742094f39fca4e814a7893
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:58:09 2017 -0700

    this is the 3rd commit

commit 1b7bd351d5cd33cbabd63f2dc2866c9603f540af
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:30:35 2017 -0700

    this is the 2nd commit

commit 52989f13f53c90aeb2c6129a853e15c081a5620b
Author: Carlos Cordoba <carlos.cordoba@meritagehomes.com>
Date:   Tue May 23 15:28:34 2017 -0700

    this is just a test commit

PS C:\GitRepository> git remote add origin https://github.com/carlosMeritage/Meritage.git

PS C:\GitRepository> git push -u origin master
git : Logon failed, use ctrl+c to cancel basic credential prompt.
At line:1 char:1
+ git push -u origin master
+ ~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Logon failed, u...dential prompt.:String) 
    [], RemoteException
    + FullyQualifiedErrorId : NativeCommandError
 
bash: /dev/tty: No such device or address
error: failed to execute prompt script (exit code 1)
fatal: could not read Username for 'https://github.com/': No error

PS C:\GitRepository> git push -u origin master
git : Logon failed, use ctrl+c to cancel basic credential prompt.
At line:1 char:1
+ git push -u origin master
+ ~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (Logon failed, u...dential prompt.:String) 
    [], RemoteException
    + FullyQualifiedErrorId : NativeCommandError
 
bash: /dev/tty: No such device or address
error: failed to execute prompt script (exit code 1)
fatal: could not read Username for 'https://github.com/': No error

PS C:\GitRepository> git push -u origin master
Branch master set up to track remote branch master from origin.
git : To https://github.com/carlosMeritage/Meritage.git
At line:1 char:1
+ git push -u origin master
+ ~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (To https://gith...ge/Meritage.git:String) 
    [], RemoteException
    + FullyQualifiedErrorId : NativeCommandError
 
 * [new branch]      master -> master

PS C:\GitRepository> 