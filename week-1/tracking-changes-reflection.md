How does tracking and adding changes make developers' lives easier?
It makes it easier to see what happened to either make your code work or not work. You can directly see what caused problems to arise. Once you see the problem you can either change a piece or even go back to the version you had before issues.
What is a commit?
A commit is you making a save file of whatever your working on. It allows you go have a place to fall back to if you have problems with your code.
What are the best practices for commit messages?
You want to write in the imperative so you that it is similiar to how we use git in our coding. You want people to see what your commit will do rather than explain to them what you did.
What does the HEAD^ argument mean?
It is used to get rid of any changes you've made that you haven't commited.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
First you need to either create or select the file that you are working on. Then do whatever work you want to do to the file. Once you are done you, need to add the file so it can be committed. You would use git add (file name here). Once it's ready to be committed you will do the commit comand and add your commit message. Once your commit message is entered, your work will then be committed.
Write a handy cheatsheet of the commands you need to commit your changes?
git add allows you to add the file that needs to be committed. git commit -m "your message here" or git commit -v that allows you to write in sublime for your commit message.
What is a pull request and how do you create and merge one?
A pull request is used to merge your code to the master branch. First you have to be working on a branch other then master that you've been working on your code to commit. Once ready you need to push the branch to GitHub using git push origin branch-name. Then you must go to your repository and click on the compare and pull request. Make sure the base is the master and the compare is the branch you sent your commit from. Fill out the title and description so people can understand that work that you've done. Then you will click the create pull request button. To merge you got to the conversation tab of the repository and click merge pull request.
Why are pull requests preferred when working with teams?
Pull requests allow people to review the commits so they can make sure that the code is right before adding it to the master code. This is good so people can make sure to help fix any unknown errors the person might have made in the commit.