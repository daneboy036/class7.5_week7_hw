# Additional Notes

- Add a .gitignore file so that your terraform state and other sensitive files aren't pushed to your git repo
- When you're ready to push your changes run

```bash
git status
git add .
git commit -m 'Homework'
git push origin main
```

- In a work environment you'd create a branch and do a pull request instead of pushing directly to main or working on the main branch
- All terraform commands must be run from within the folder that has your terraform files
- The VPC above is pretty basic. See the terraform docs for information on more arguments you can pass when creating the vpc
- A GitHub repository is a container for your code. It allows you to version your code and stores it in a central location
- A VPC is a virtual private cloud and can be considered a private network in the cloud
