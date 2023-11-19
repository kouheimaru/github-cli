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
gh pr create --base master --head develop --title "ghコマンドで作ったPRのタイトル" --body "これをghコマンドで作成したPRの説明欄"
```

## プルリクをマージする


```

```