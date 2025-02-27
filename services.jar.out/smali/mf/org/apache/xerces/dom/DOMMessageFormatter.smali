.class public Lmf/org/apache/xerces/dom/DOMMessageFormatter;
.super Ljava/lang/Object;
.source "DOMMessageFormatter.java"


# static fields
.field public static final DOM_DOMAIN:Ljava/lang/String; = "http://www.w3.org/dom/DOMTR"

.field public static final SERIALIZER_DOMAIN:Ljava/lang/String; = "http://apache.org/xml/serializer"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"

.field private static domResourceBundle:Ljava/util/ResourceBundle;

.field private static locale:Ljava/util/Locale;

.field private static serResourceBundle:Ljava/util/ResourceBundle;

.field private static xmlResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    .line 39
    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    .line 40
    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    .line 41
    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    .line 45
    return-void
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 66
    .local v3, "resourceBundle":Ljava/util/ResourceBundle;
    if-nez v3, :cond_0

    .line 67
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->init()V

    .line 68
    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 69
    if-nez v3, :cond_0

    .line 70
    new-instance v5, Ljava/util/MissingResourceException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown domain"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 76
    .local v2, "msg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 78
    :try_start_1
    invoke-static {v2, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 92
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 93
    move-object v2, p1

    .line 94
    array-length v5, p2

    if-lez v5, :cond_2

    .line 95
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "str":Ljava/lang/StringBuffer;
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p2

    if-lt v1, v5, :cond_3

    .line 106
    .end local v1    # "i":I
    .end local v4    # "str":Ljava/lang/StringBuffer;
    :cond_2
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "FormatFailed"

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/MissingResourceException;
    const-string v5, "BadMessageKey"

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v5, Ljava/util/MissingResourceException;

    invoke-direct {v5, p1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 98
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local v1    # "i":I
    .restart local v4    # "str":Ljava/lang/StringBuffer;
    :cond_3
    if-lez v1, :cond_4

    .line 99
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_4
    aget-object v5, p2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "http://www.w3.org/dom/DOMTR"

    if-eq p0, v0, :cond_0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    .line 119
    :goto_0
    return-object v0

    .line 113
    :cond_1
    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eq p0, v0, :cond_2

    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "http://apache.org/xml/serializer"

    if-eq p0, v0, :cond_4

    const-string v0, "http://apache.org/xml/serializer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 119
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    .line 127
    .local v0, "_locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 131
    :cond_0
    const-string v1, "mf.org.apache.xerces.impl.msg.DOMMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    .line 133
    const-string v1, "mf.org.apache.xerces.impl.msg.XMLSerializerMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    .line 135
    const-string v1, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    .line 136
    return-void
.end method

.method public static setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p0, "dlocale"    # Ljava/util/Locale;

    .prologue
    .line 143
    sput-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    .line 144
    return-void
.end method
