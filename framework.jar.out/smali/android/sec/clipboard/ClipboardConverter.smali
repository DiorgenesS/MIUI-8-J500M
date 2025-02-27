.class public Landroid/sec/clipboard/ClipboardConverter;
.super Ljava/lang/Object;
.source "ClipboardConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardConverter$1;,
        Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Landroid/sec/clipboard/ClipboardConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ClipboardConverter"

    sput-object v0, Landroid/sec/clipboard/ClipboardConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private getFormatID(Landroid/content/ClipData;)I
    .locals 10
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    const/4 v9, 0x1

    .line 123
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 124
    .local v0, "count":I
    const/4 v1, 0x0

    .line 125
    .local v1, "formatID":I
    const/4 v5, 0x0

    .line 126
    .local v5, "text_count":I
    const/4 v2, 0x0

    .line 127
    .local v2, "html_count":I
    const/4 v6, 0x0

    .line 128
    .local v6, "uri_count":I
    const/4 v7, 0x0

    .line 129
    .local v7, "uri_image_count":I
    const/4 v4, 0x0

    .line 131
    .local v4, "intent_count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 132
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 135
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 138
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 141
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/ClipboardConverter;->isImagefile(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 144
    add-int/lit8 v7, v7, 0x1

    .line 131
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_4
    if-ne v0, v9, :cond_a

    .line 150
    if-ne v2, v9, :cond_6

    .line 151
    const/4 v1, 0x4

    .line 168
    :cond_5
    :goto_1
    return v1

    .line 152
    :cond_6
    if-ne v5, v9, :cond_7

    .line 153
    const/4 v1, 0x2

    goto :goto_1

    .line 154
    :cond_7
    if-ne v7, v9, :cond_8

    .line 155
    const/4 v1, 0x3

    goto :goto_1

    .line 156
    :cond_8
    if-ne v4, v9, :cond_9

    .line 157
    const/4 v1, 0x6

    goto :goto_1

    .line 158
    :cond_9
    if-ne v6, v9, :cond_5

    .line 159
    const/4 v1, 0x5

    goto :goto_1

    .line 162
    :cond_a
    if-le v6, v9, :cond_b

    if-le v0, v6, :cond_b

    .line 163
    const/16 v1, 0x8

    goto :goto_1

    .line 165
    :cond_b
    const/4 v1, 0x7

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    sget-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Landroid/sec/clipboard/ClipboardConverter;

    invoke-direct {v0}, Landroid/sec/clipboard/ClipboardConverter;-><init>()V

    sput-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    .line 204
    :cond_0
    sget-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    return-object v0
.end method

.method private getUriList(Landroid/content/ClipData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 112
    .local v0, "count":I
    const/4 v2, 0x0

    .line 113
    .local v2, "uri_count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return-object v3
.end method

.method private isImagefile(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;-><init>(Landroid/sec/clipboard/ClipboardConverter$1;)V

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    .line 176
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 13
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    const/4 v11, 0x0

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    if-nez v10, :cond_1

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 42
    :cond_1
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getFormatID(Landroid/content/ClipData;)I

    move-result v3

    .line 43
    .local v3, "formatID":I
    const/4 v2, 0x0

    .line 45
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch v3, :pswitch_data_0

    .line 103
    sget-object v10, Landroid/sec/clipboard/ClipboardConverter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :pswitch_0
    new-instance v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 48
    .local v7, "textdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 49
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    .line 51
    :cond_2
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setClipdata(Landroid/content/ClipData;)V

    .line 52
    move-object v2, v7

    .line 53
    goto :goto_0

    .line 55
    .end local v7    # "textdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_1
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 56
    .local v1, "bitmapData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 57
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setBitmapPath(Ljava/lang/String;)Z

    .line 59
    :cond_3
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setClipdata(Landroid/content/ClipData;)V

    .line 60
    move-object v2, v1

    .line 61
    goto :goto_0

    .line 63
    .end local v1    # "bitmapData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .line 64
    .local v0, "Htmldata":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 65
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtml(Ljava/lang/CharSequence;)Z

    .line 67
    :cond_4
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setClipdata(Landroid/content/ClipData;)V

    .line 68
    move-object v2, v0

    .line 69
    goto/16 :goto_0

    .line 71
    .end local v0    # "Htmldata":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_3
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 72
    .local v8, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 73
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setUri(Landroid/net/Uri;)Z

    .line 75
    :cond_5
    invoke-virtual {v8, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setClipdata(Landroid/content/ClipData;)V

    .line 76
    move-object v2, v8

    .line 77
    goto/16 :goto_0

    .line 79
    .end local v8    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 80
    .local v4, "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 81
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setIntent(Landroid/content/Intent;)Z

    .line 83
    :cond_6
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setClipdata(Landroid/content/ClipData;)V

    .line 84
    move-object v2, v4

    .line 85
    goto/16 :goto_0

    .line 87
    .end local v4    # "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :pswitch_5
    new-instance v9, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    invoke-direct {v9}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;-><init>()V

    .line 88
    .local v9, "uriList":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getUriList(Landroid/content/ClipData;)Ljava/util/ArrayList;

    move-result-object v5

    .line 89
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v5, :cond_7

    .line 90
    invoke-virtual {v9, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriList(Ljava/util/ArrayList;)Z

    .line 92
    :cond_7
    invoke-virtual {v9, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setClipdata(Landroid/content/ClipData;)V

    .line 93
    move-object v2, v9

    .line 94
    goto/16 :goto_0

    .line 96
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "uriList":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    :pswitch_6
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    invoke-direct {v6}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;-><init>()V

    .line 97
    .local v6, "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    if-eqz p1, :cond_8

    .line 98
    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->setClipdata(Landroid/content/ClipData;)V

    .line 100
    :cond_8
    move-object v2, v6

    .line 101
    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public ClipboardDataToClipData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/content/ClipData;
    .locals 1
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "clipData":Landroid/content/ClipData;
    return-object v0
.end method
