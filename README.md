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


## プルリクをマージする


```
gh pr merge https://github.com/kouheimaru/github-cli/pull/1 --merge
```