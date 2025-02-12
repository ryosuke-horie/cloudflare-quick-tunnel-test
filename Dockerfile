FROM golang:1.23

# 作業ディレクトリを /app に設定
WORKDIR /app

# Go モジュールの依存情報をコピーしてダウンロード
COPY app/go.mod ./
RUN go mod download

# ソースコード一式をコピーしてビルド
COPY app/*.go ./
RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
