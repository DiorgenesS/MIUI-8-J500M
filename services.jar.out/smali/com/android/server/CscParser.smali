.class public Lcom/android/server/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CscParser$1;,
        Lcom/android/server/CscParser$Holder;
    }
.end annotation


# static fields
.field public static final KEY_REGION:Ljava/lang/String; = "GeneralInfo.Region"

.field public static final KEY_SALESCODE:Ljava/lang/String; = "GeneralInfo.SalesCode"


# instance fields
.field private mDocument:Lorg/w3c/dom/Document;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CscParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/CscParser$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/CscParser;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCustomerInstance()Lcom/android/server/CscParser;
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/android/server/CscParser;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/CscParser$Holder;->sInstance:Lcom/android/server/CscParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-object v5, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v4

    .line 130
    :cond_1
    :goto_0
    return-object v0

    .line 118
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 119
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 120
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 122
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 123
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 124
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    move-object v0, v4

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 86
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    const/4 v2, 0x0

    .line 174
    :goto_0
    return-object v2

    .line 166
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 167
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v1, "stringValue":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 169
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 174
    .end local v0    # "idx":I
    .end local v1    # "stringValue":Ljava/lang/StringBuffer;
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 48
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    const-string v4, "CscParser"

    const-string v5, "File didn\'t exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return v3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "CscParser"

    const-string v5, "ParserConfigurationException is occured"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    const/4 v3, 0x1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Lorg/xml/sax/SAXException;
    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAXException is occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v4, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v3

    .line 110
    :cond_1
    :goto_0
    return-object v0

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 99
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "token":Ljava/lang/String;
    if-nez v0, :cond_3

    move-object v0, v3

    .line 104
    goto :goto_0

    .line 107
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/server/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 108
    goto :goto_1
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 134
    iget-object v7, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v6

    .line 139
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 140
    .local v4, "list":Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 141
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 142
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 143
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 144
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 145
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    :try_start_1
    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 156
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "list":Lorg/w3c/dom/Element;
    .end local v5    # "n":I
    :catch_1
    move-exception v2

    .line 157
    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v4    # "list":Lorg/w3c/dom/Element;
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0
.end method
