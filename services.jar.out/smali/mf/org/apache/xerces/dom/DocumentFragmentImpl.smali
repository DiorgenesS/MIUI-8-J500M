.class public Lmf/org/apache/xerces/dom/DocumentFragmentImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "DocumentFragmentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DocumentFragment;


# static fields
.field static final serialVersionUID:J = -0x696c02ff5db4e68aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "#document-fragment"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xb

    return v0
.end method

.method public normalize()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 113
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->isNormalized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->synchronizeChildren()V

    .line 121
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .local v0, "kid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_1
    if-nez v0, :cond_2

    .line 150
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->isNormalized(Z)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 129
    .local v1, "next":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_3

    .line 132
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_4

    move-object v2, v0

    .line 134
    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 136
    move-object v1, v0

    .line 147
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    .line 121
    move-object v0, v1

    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 142
    :cond_5
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method
