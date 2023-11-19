## ghコマンドのインストール
https://cli.github.com/

## 初期設定

```
gh --version
```


指示に従って認証の設定する

```
gh auth login
? What account do you want to log into? GitHub.com
? What is your preferred protocol for Git operations? HTTPS
? Authenticate Git with your GitHub credentials? Yes
? How would you like to authenticate GitHub CLI? Login with a web browser
```


## リポジトリ一覧を取得

```
gh repo list
```

## 現在の作業中リポジトリのブラウザを開く

```
gh browse
```

## プルリクの作成

```
gh pr create --base main --head develop --title "ghコマンドで作ったPRのタイトル" --body "これをghコマンドで作成したPRの説明欄" --repo https://github.com/kouheimaru/github-cli
```

--web
直前の状態でPRをブラウザで確認できる
*PR作成は不要で、差分だけ見たい場合に使う

cliのレスポンス

```
Warning: 1 uncommitted change
  
Creating pull request for develop into main in kouheimaru/github-cli

https://github.com/kouheimaru/github-cli/pull/1
```

```
URL=$(gh pr create --base main --head develop --title "ghコマンドで作ったPRのタイトル" --body "これをghコマンドで作成したPRの説明欄" --repo https://github.com/kouheimaru/github-cli | grep "https://github.com/kouheimaru")
echo $URL
```


## プルリクをマージする


```
gh pr merge https://github.com/kouheimaru/github-cli/pull/1 --merge
```

```
commit 53bae1c7d221e9f080901aa004516c5cdc00ab71 (HEAD -> main, origin/main)
Merge: eff02d2 5373141
Author: 
Date:   Sun Nov 19 20:45:33 2023 +0900

    Merge pull request #2 from kouheimaru/develop

    [2回目]ghコマンドで作ったPRのタイトル

commit 5373141f9246fb85ed20151b8b93723eb13a1f08 (origin/develop, develop)
Author: 
Date:   Sun Nov 19 20:42:07 2023 +0900

    fix 2回目のコミット

commit eff02d252b6b68e6c5b327fe61d45876d9b35e21
Merge: 3571636 72d94a1
Author: 
Date:   Sun Nov 19 20:41:19 2023 +0900

    Merge pull request #1 from kouheimaru/develop

    ghコマンドで作ったPRのタイトル
```