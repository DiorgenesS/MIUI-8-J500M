.class public Lmf/javax/xml/xpath/XPathExpressionException;
.super Lmf/javax/xml/xpath/XPathException;
.source "XPathExpressionException.java"


# static fields
.field private static final serialVersionUID:J = -0x197e9ec3778880e4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathException;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathException;-><init>(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method
