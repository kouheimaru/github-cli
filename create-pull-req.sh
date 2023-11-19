URL=$(gh pr create --base main --head develop --title "ghコマンドで作ったPRのタイトル" --body "これをghコマンドで作成したPRの説明欄" --repo https://github.com/kouheimaru/github-cli | grep "https://github.com/kouheimaru")
echo "urlを取得"
echo $URL