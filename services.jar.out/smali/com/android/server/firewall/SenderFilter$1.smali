.class final Lcom/android/server/firewall/SenderFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string/jumbo v1, "type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "typeString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "type attribute must be specified for <sender>"

    invoke-direct {v1, v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :cond_0
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    # getter for: Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$000()Lcom/android/server/firewall/Filter;

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 69
    :cond_1
    const-string/jumbo v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    # getter for: Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$100()Lcom/android/server/firewall/Filter;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v1, "system|signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    # getter for: Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$200()Lcom/android/server/firewall/Filter;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_3
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    # getter for: Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$300()Lcom/android/server/firewall/Filter;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type attribute for <sender>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method
