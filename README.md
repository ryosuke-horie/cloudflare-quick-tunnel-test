# cloudflare-quick-tunnel-test

## 実装内容

- Nginxを経由してNextjsとGolangを起動
- NginxをCloudflareで公開することで外部からのアクセスを許可

## 簡易URLで公開する手順

```bash
cd web && npm i && npm run build
cd ..
docker compose up -d
chmod +x get_tunnel_url.sh 
./get_tunnel_url.
```

- https://genres-rebates-hosts-away.trycloudflare.com
    - のようなURLが割り当てされていることを確認。
    - ブラウザで外部からアクセスできることを確認。
    - `docker compose down`を実行したらアクセスできなくなることを確認

## 参考元

[簡単に自宅サーバーを公開！Cloudflare Quick TunnelsとDocker Composeでポート開放不要](https://qiita.com/dekoboko/items/5c209f4a524242d8a996)