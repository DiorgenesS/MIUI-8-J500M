.class Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildOp"
.end annotation


# instance fields
.field child:Lmf/org/apache/xerces/impl/xpath/regex/Op;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;-><init>(I)V

    .line 192
    return-void
.end method


# virtual methods
.method getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->child:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V
    .locals 0
    .param p1, "child"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .prologue
    .line 194
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->child:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 195
    return-void
.end method
