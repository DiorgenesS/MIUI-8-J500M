.class public Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
.super Ljava/lang/Thread;
.source "EnterpriseSocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final CONTENT_LENGTH_HEADER_PREFIX:Ljava/lang/String; = "Content-Length: "

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field public static final EMPTY_CONTENT_LENGTH:I = -0x1

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "EnterpriseSocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private authHeader:Ljava/lang/String;

.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 1
    .param p1, "from"    # Ljava/net/Socket;
    .param p2, "to"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Ljava/net/Socket;
    .param p2, "to"    # Ljava/net/Socket;
    .param p3, "authHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    .line 89
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    .line 90
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->start()V

    .line 92
    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 4
    .param p0, "first"    # Ljava/net/Socket;
    .param p1, "second"    # Ljava/net/Socket;
    .param p2, "authHeader"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p2, :cond_0

    const-string v3, "Proxy-Authorization: Basic "

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    const/4 p2, 0x0

    .line 196
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    .line 197
    .local v1, "sc1":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v2, p1, p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .local v2, "sc2":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    .end local v1    # "sc1":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    .end local v2    # "sc2":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    :goto_1
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "sc1":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    .restart local v2    # "sc2":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 204
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private static getContentLength(Ljava/lang/String;)I
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v1, "Content-Length: "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    const-string v1, "Content-Length: "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 184
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "EnterpriseSocketConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "EnterpriseSocketConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private performCommunication()V
    .locals 6

    .prologue
    .line 108
    const/16 v3, 0x200

    new-array v0, v3, [B

    .line 112
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 113
    .local v2, "r":I
    if-gez v2, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 119
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 123
    .end local v2    # "r":I
    :goto_1
    return-void

    .line 116
    .restart local v2    # "r":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v2    # "r":I
    :catch_0
    move-exception v1

    .line 121
    .local v1, "io":Ljava/io/IOException;
    const-string v3, "EnterpriseSocketConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while performing communication "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private performCommunicationWithHeader(Ljava/lang/String;)V
    .locals 9
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 134
    .local v4, "line":Ljava/lang/String;
    const/4 v2, -0x1

    .line 135
    .local v2, "contentLength":I
    const/4 v5, 0x0

    .local v5, "useContentLength":Z
    move-object v1, v0

    .line 138
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v5, :cond_0

    .line 139
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    const/4 v7, 0x1

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v4

    .line 144
    :goto_1
    const/4 v5, 0x0

    .line 146
    if-nez v4, :cond_1

    .line 166
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 167
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    move-object v0, v1

    .line 171
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 141
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    const/4 v5, 0x1

    move-object v0, v1

    .line 164
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-static {v6, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 151
    :cond_2
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    const/4 v2, -0x1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto :goto_3

    .line 160
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 161
    :try_start_4
    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->getContentLength(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    move-object v0, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 168
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 169
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .local v3, "io":Ljava/io/IOException;
    :goto_4
    const-string v6, "EnterpriseSocketConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while performing communication with header "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    .end local v3    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_4

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    move-object v0, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunicationWithHeader(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunication()V

    goto :goto_0
.end method
