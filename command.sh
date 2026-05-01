npx create-react-app my-app
cd my-app
git init
git add .
git commit -m "Initial commit"
gh repo create my-react-app --public --source=. --remote=origin --push
git checkout -b update_logo
curl -o src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
git add .
git commit -m "Updated logo and link"
git push origin update_logo
gh pr create --base main --head update_logo --title "Update logo" --body "Updated logo and link"
gh pr merge --merge

REPO_URL https://github.com/harshudawant30-sudo/my-react-app