.class public Lmf/org/apache/xml/resolver/helpers/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# instance fields
.field protected debug:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/helpers/Debug;->debug:I

    .line 41
    return-void
.end method


# virtual methods
.method public getDebug()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lmf/org/apache/xml/resolver/helpers/Debug;->debug:I

    return v0
.end method

.method public message(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 65
    iget v0, p0, Lmf/org/apache/xml/resolver/helpers/Debug;->debug:I

    if-lt v0, p1, :cond_0

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public message(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "spec"    # Ljava/lang/String;

    .prologue
    .line 83
    iget v0, p0, Lmf/org/apache/xml/resolver/helpers/Debug;->debug:I

    if-lt v0, p1, :cond_0

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "spec1"    # Ljava/lang/String;
    .param p4, "spec2"    # Ljava/lang/String;

    .prologue
    .line 103
    iget v0, p0, Lmf/org/apache/xml/resolver/helpers/Debug;->debug:I

    if-lt v0, p1, :cond_0

    .line 104
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setDebug(I)V
    .locals 0
    .param p1, "newDebug"    # I

    .prologue
    .line 45
    iput p1, p0, Lmf/org/apache/xml/resolver/helpers/Debug;->debug:I

    .line 46
    return-void
.end method
