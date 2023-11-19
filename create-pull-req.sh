# develop -> masterに「Fix bug」というタイトルでプルリクエストを作成する
gh pr create --base master --head develop --title "Fix bug" --body ""

# -B, --base branch The branch into which you want your code merged
# -H, --head branch The branch that contains commits for your pull request (default: current branch)
# -t, --title string Title for the pull request
# -b, --body string Body for the pull request
# gh pr create | GitHub CLI