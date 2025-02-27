.class public Lmf/org/apache/xerces/dom/ElementImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "ElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Element;
.implements Lmf/org/w3c/dom/ElementTraversal;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field static final serialVersionUID:J = 0x33965660e8283866L


# instance fields
.field protected attributes:Lmf/org/apache/xerces/dom/AttributeMap;

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 87
    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData(Z)V

    .line 89
    return-void
.end method

.method private getFirstElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 5
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v2, 0x0

    .line 1289
    move-object v1, p1

    .line 1290
    .local v1, "top":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez p1, :cond_1

    .line 1309
    :cond_0
    :goto_1
    return-object v2

    .line 1291
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v2, p1

    .line 1292
    check-cast v2, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 1294
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1295
    .local v0, "next":Lmf/org/w3c/dom/Node;
    :cond_3
    if-eqz v0, :cond_5

    .line 1307
    :cond_4
    move-object p1, v0

    goto :goto_0

    .line 1296
    :cond_5
    if-eq v1, p1, :cond_4

    .line 1299
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1300
    if-nez v0, :cond_3

    .line 1301
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 1302
    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_3

    goto :goto_1
.end method

.method private getLastElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 5
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v2, 0x0

    .line 1315
    move-object v1, p1

    .line 1316
    .local v1, "top":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez p1, :cond_1

    .line 1335
    :cond_0
    :goto_1
    return-object v2

    .line 1317
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v2, p1

    .line 1318
    check-cast v2, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 1320
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1321
    .local v0, "next":Lmf/org/w3c/dom/Node;
    :cond_3
    if-eqz v0, :cond_5

    .line 1333
    :cond_4
    move-object p1, v0

    goto :goto_0

    .line 1322
    :cond_5
    if-eq v1, p1, :cond_4

    .line 1325
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1326
    if-nez v0, :cond_3

    .line 1327
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 1328
    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_3

    goto :goto_1
.end method

.method private getNextLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1340
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1344
    .local v0, "next":Lmf/org/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 1345
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1346
    .local v1, "parent":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1354
    .end local v1    # "parent":Lmf/org/w3c/dom/Node;
    :cond_0
    return-object v0

    .line 1347
    .restart local v1    # "parent":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1348
    if-nez v0, :cond_0

    .line 1351
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getPreviousLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1359
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1363
    .local v1, "prev":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 1364
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1365
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1373
    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    :cond_0
    return-object v1

    .line 1366
    .restart local v0    # "parent":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1367
    if-nez v1, :cond_0

    .line 1370
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 173
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 175
    .local v0, "newnode":Lmf/org/apache/xerces/dom/ElementImpl;
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttributeMap;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 178
    :cond_0
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 276
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_1

    .line 277
    const-string v1, ""

    .line 280
    :goto_0
    return-object v1

    .line 279
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 280
    .local v0, "attr":Lmf/org/w3c/dom/Attr;
    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 595
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 599
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_1

    .line 600
    const-string v1, ""

    .line 604
    :goto_0
    return-object v1

    .line 603
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 604
    .local v0, "attr":Lmf/org/w3c/dom/Attr;
    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 297
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_1

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    goto :goto_0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 759
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_1

    .line 760
    const/4 v0, 0x0

    .line 762
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    goto :goto_0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 157
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 160
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 195
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v7, :cond_4

    .line 196
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getXMLBaseAttribute()Lmf/org/w3c/dom/Attr;

    move-result-object v2

    .line 197
    .local v2, "attrNode":Lmf/org/w3c/dom/Attr;
    if-eqz v2, :cond_4

    .line 198
    invoke-interface {v2}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 201
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    const/4 v7, 0x1

    invoke-direct {v1, v5, v7}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 203
    .local v1, "_uri":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    .end local v1    # "_uri":Lmf/org/apache/xerces/util/URI;
    .end local v2    # "attrNode":Lmf/org/w3c/dom/Attr;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 208
    .restart local v1    # "_uri":Lmf/org/apache/xerces/util/URI;
    .restart local v2    # "attrNode":Lmf/org/w3c/dom/Attr;
    .restart local v5    # "uri":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 209
    .local v4, "parentBaseURI":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 211
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "_parentBaseURI":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 213
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .end local v0    # "_parentBaseURI":Lmf/org/apache/xerces/util/URI;
    .end local v4    # "parentBaseURI":Ljava/lang/String;
    :cond_3
    move-object v4, v6

    .line 208
    goto :goto_1

    .line 215
    .restart local v4    # "parentBaseURI":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "ex":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    goto :goto_0

    .line 223
    .end local v1    # "_uri":Lmf/org/apache/xerces/util/URI;
    .end local v3    # "ex":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v4    # "parentBaseURI":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 224
    .restart local v3    # "ex":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    goto :goto_0

    .line 236
    .end local v2    # "attrNode":Lmf/org/w3c/dom/Attr;
    .end local v3    # "ex":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public final getChildElementCount()I
    .locals 2

    .prologue
    .line 1189
    const/4 v1, 0x0

    .line 1190
    .local v1, "count":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstElementChild()Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 1191
    .local v0, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    if-nez v0, :cond_0

    .line 1195
    return v1

    .line 1192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1193
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .end local v0    # "child":Lmf/org/w3c/dom/Element;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextElementSibling()Lmf/org/w3c/dom/Element;

    move-result-object v0

    .restart local v0    # "child":Lmf/org/w3c/dom/Element;
    goto :goto_0
.end method

.method protected getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1166
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 1167
    .local v0, "doctype":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    if-nez v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-object v2

    .line 1171
    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1172
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1171
    check-cast v1, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    .line 1173
    .local v1, "eldef":Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
    if-eqz v1, :cond_0

    .line 1176
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    goto :goto_0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 896
    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFirstElementChild()Lmf/org/w3c/dom/Element;
    .locals 3

    .prologue
    .line 1203
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1204
    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 1217
    const/4 v1, 0x0

    .end local v1    # "n":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v1

    .line 1205
    .restart local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1215
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 1207
    :sswitch_0
    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 1209
    :sswitch_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 1210
    .local v0, "e":Lmf/org/w3c/dom/Element;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1211
    goto :goto_1

    .line 1205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getLastElementChild()Lmf/org/w3c/dom/Element;
    .locals 3

    .prologue
    .line 1225
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1226
    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 1239
    const/4 v1, 0x0

    .end local v1    # "n":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v1

    .line 1227
    .restart local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1237
    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 1229
    :sswitch_0
    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 1231
    :sswitch_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getLastElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 1232
    .local v0, "e":Lmf/org/w3c/dom/Element;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1233
    goto :goto_1

    .line 1227
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getNextElementSibling()Lmf/org/w3c/dom/Element;
    .locals 3

    .prologue
    .line 1247
    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1248
    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 1261
    const/4 v1, 0x0

    .end local v1    # "n":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v1

    .line 1249
    .restart local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1259
    :cond_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 1251
    :sswitch_0
    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 1253
    :sswitch_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 1254
    .local v0, "e":Lmf/org/w3c/dom/Element;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1255
    goto :goto_1

    .line 1249
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 143
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public final getPreviousElementSibling()Lmf/org/w3c/dom/Element;
    .locals 3

    .prologue
    .line 1269
    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getPreviousLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1270
    .local v1, "n":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v1, :cond_0

    .line 1283
    const/4 v1, 0x0

    .end local v1    # "n":Lmf/org/w3c/dom/Node;
    :goto_1
    return-object v1

    .line 1271
    .restart local v1    # "n":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1281
    :cond_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getPreviousLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 1273
    :sswitch_0
    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    .line 1275
    :sswitch_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getLastElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 1276
    .local v0, "e":Lmf/org/w3c/dom/Element;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1277
    goto :goto_1

    .line 1271
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 1087
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 1090
    :cond_0
    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 335
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getXMLBaseAttribute()Lmf/org/w3c/dom/Attr;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const-string v1, "xml:base"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0
.end method

.method protected getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 842
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 845
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_1

    .line 846
    const/4 v0, -0x1

    .line 848
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 859
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 10
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v8, 0x0

    .line 905
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    .line 936
    .end local p1    # "arg":Lmf/org/w3c/dom/Node;
    :goto_0
    return v7

    .line 908
    .restart local p1    # "arg":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v0

    .local v0, "hasAttrs":Z
    move-object v7, p1

    .line 909
    check-cast v7, Lmf/org/w3c/dom/Element;

    invoke-interface {v7}, Lmf/org/w3c/dom/Element;->hasAttributes()Z

    move-result v7

    if-eq v0, v7, :cond_1

    move v7, v8

    .line 910
    goto :goto_0

    .line 912
    :cond_1
    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 914
    .local v3, "map1":Lmf/org/w3c/dom/NamedNodeMap;
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "arg":Lmf/org/w3c/dom/Node;
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 915
    .local v4, "map2":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 916
    .local v2, "len":I
    invoke-interface {v4}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-eq v2, v7, :cond_2

    move v7, v8

    .line 917
    goto :goto_0

    .line 919
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_4

    .line 936
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "map1":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v4    # "map2":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 920
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "map1":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v4    # "map2":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_4
    invoke-interface {v3, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 921
    .local v5, "n1":Lmf/org/w3c/dom/Node;
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 922
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 923
    .local v6, "n2":Lmf/org/w3c/dom/Node;
    if-eqz v6, :cond_5

    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v5    # "n1":Lmf/org/w3c/dom/Node;
    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_5
    move v7, v8

    .line 924
    goto :goto_0

    .line 928
    .end local v6    # "n2":Lmf/org/w3c/dom/Node;
    .restart local v5    # "n1":Lmf/org/w3c/dom/Node;
    :cond_6
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 929
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    .line 928
    invoke-interface {v4, v7, v9}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    .line 930
    .restart local v6    # "n2":Lmf/org/w3c/dom/Node;
    if-eqz v6, :cond_7

    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v5    # "n1":Lmf/org/w3c/dom/Node;
    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    move v7, v8

    .line 931
    goto :goto_0

    .line 919
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 2
    .param p1, "el"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    .line 1135
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 1138
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_1

    .line 1140
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 1142
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    iget-object v1, p1, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/AttributeMap;)V

    .line 1144
    :cond_2
    return-void
.end method

.method public normalize()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 354
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isNormalized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    .line 361
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .local v2, "kid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_1
    if-nez v2, :cond_3

    .line 394
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v4, :cond_2

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 406
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/ElementImpl;->isNormalized(Z)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v3, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 369
    .local v3, "next":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v7, :cond_7

    .line 372
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v7, :cond_5

    move-object v4, v2

    .line 374
    check-cast v4, Lmf/org/w3c/dom/Text;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 376
    move-object v3, v2

    .line 361
    :cond_4
    :goto_3
    move-object v2, v3

    goto :goto_1

    .line 381
    :cond_5
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 382
    :cond_6
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    .line 388
    :cond_7
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_4

    .line 389
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    goto :goto_3

    .line 398
    .end local v3    # "next":Lmf/org/apache/xerces/dom/ChildNode;
    .restart local v1    # "i":I
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 399
    .local v0, "attr":Lmf/org/w3c/dom/Node;
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->normalize()V

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected reconcileDefaultAttributes()V
    .locals 2

    .prologue
    .line 1156
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v1, :cond_0

    .line 1157
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    .line 1158
    .local v0, "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->reconcileDefaults(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 1160
    .end local v0    # "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 431
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 435
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_2

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->safeRemoveNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 731
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 735
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_2

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .locals 4
    .param p1, "oldAttr"    # Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 468
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 472
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_2

    .line 473
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_FOUND_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 476
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->removeItem(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Attr;

    return-object v1
.end method

.method rename(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 101
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_2

    .line 102
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 103
    .local v0, "colon1":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 106
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 107
    const-string v3, "NAMESPACE_ERR"

    .line 105
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 111
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v2

    invoke-static {p1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 114
    const-string v3, "INVALID_CHARACTER_ERR"

    .line 112
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 119
    .end local v0    # "colon1":I
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    .line 121
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 502
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 506
    const-string v3, "NO_MODIFICATION_ALLOWED_ERR"

    .line 504
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 511
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 515
    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    .line 516
    .local v1, "newAttr":Lmf/org/w3c/dom/Attr;
    if-nez v1, :cond_3

    .line 517
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    .line 519
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v2, :cond_2

    .line 520
    new-instance v2, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v2, p0, v4}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 523
    :cond_2
    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 530
    :goto_0
    return-void

    .line 527
    :cond_3
    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 651
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v5, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    const-string v5, "http://www.w3.org/dom/DOMTR"

    .line 655
    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    .line 653
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 658
    const/4 v6, 0x7

    .line 657
    invoke-direct {v5, v6, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 661
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 662
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 664
    :cond_1
    const/16 v5, 0x3a

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 666
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 667
    const/4 v4, 0x0

    .line 668
    .local v4, "prefix":Ljava/lang/String;
    move-object v1, p2

    .line 674
    .local v1, "localName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    .line 675
    .local v3, "newAttr":Lmf/org/w3c/dom/Attr;
    if-nez v3, :cond_4

    .line 678
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lmf/org/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    .line 681
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v5, :cond_2

    .line 682
    new-instance v5, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v5, p0, v7}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v5, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 684
    :cond_2
    invoke-interface {v3, p3}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    .line 685
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 706
    .end local v1    # "localName":Ljava/lang/String;
    :goto_1
    return-void

    .line 671
    .end local v3    # "newAttr":Lmf/org/w3c/dom/Attr;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 672
    .restart local v4    # "prefix":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "localName":Ljava/lang/String;
    goto :goto_0

    .line 688
    .restart local v3    # "newAttr":Lmf/org/w3c/dom/Attr;
    :cond_4
    instance-of v5, v3, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-eqz v5, :cond_6

    move-object v5, v3

    .line 690
    check-cast v5, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-eqz v4, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "localName":Ljava/lang/String;
    :cond_5
    iput-object v1, v5, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    .line 703
    :goto_2
    invoke-interface {v3, p3}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1

    .line 699
    .restart local v1    # "localName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p1, p2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    .line 700
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method

.method public setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .locals 4
    .param p1, "newAttr"    # Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 549
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 553
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2

    .line 554
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 557
    const/4 v2, 0x7

    .line 556
    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 561
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq v1, v2, :cond_2

    .line 562
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 567
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_3

    .line 568
    new-instance v1, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v1, p0, v3}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 571
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Attr;

    return-object v1
.end method

.method public setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .locals 4
    .param p1, "newAttr"    # Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 800
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2

    .line 801
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 804
    const/4 v2, 0x7

    .line 803
    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 807
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq v1, v2, :cond_2

    .line 808
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 813
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_3

    .line 814
    new-instance v1, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v1, p0, v3}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 817
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Attr;

    return-object v1
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "makeId"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 972
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 975
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    .line 977
    .local v0, "at":Lmf/org/w3c/dom/Attr;
    if-nez v0, :cond_1

    .line 979
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 980
    const-string v3, "NOT_FOUND_ERR"

    .line 978
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 984
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    .line 985
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 986
    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 987
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 988
    const/4 v3, 0x7

    .line 987
    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 992
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 993
    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NOT_FOUND_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .end local v1    # "msg":Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 998
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 999
    if-nez p2, :cond_4

    .line 1000
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 1003
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "makeId"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1012
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 1015
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    .line 1017
    .local v0, "at":Lmf/org/w3c/dom/Attr;
    if-nez v0, :cond_1

    .line 1019
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 1020
    const-string v3, "NOT_FOUND_ERR"

    .line 1018
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1024
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    .line 1025
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1026
    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1027
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 1028
    const/4 v3, 0x7

    .line 1027
    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1032
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 1033
    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NOT_FOUND_ERR"

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .end local v1    # "msg":Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 1037
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 1038
    if-nez p3, :cond_4

    .line 1039
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 1044
    :goto_0
    return-void

    .line 1042
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V
    .locals 4
    .param p1, "at"    # Lmf/org/w3c/dom/Attr;
    .param p2, "makeId"    # Z

    .prologue
    const/4 v3, 0x0

    .line 943
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 946
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2

    .line 947
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 950
    const/4 v2, 0x7

    .line 949
    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 954
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 955
    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_FOUND_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .line 959
    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 960
    if-nez p2, :cond_3

    .line 961
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1
    .param p1, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 253
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 2
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    .line 1102
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    .line 1103
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->setReadOnly(ZZ)V

    .line 1106
    :cond_0
    return-void
.end method

.method protected setXercesAttributeNode(Lmf/org/w3c/dom/Attr;)I
    .locals 2
    .param p1, "attr"    # Lmf/org/w3c/dom/Attr;

    .prologue
    .line 826
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    .line 830
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_1

    .line 831
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 833
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->addItem(Lmf/org/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method protected setupDefaultAttributes()V
    .locals 2

    .prologue
    .line 1148
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    .line 1149
    .local v0, "defaults":Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    if-eqz v0, :cond_0

    .line 1150
    new-instance v1, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v1, p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    .line 1152
    :cond_0
    return-void
.end method

.method protected synchronizeData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1118
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData(Z)V

    .line 1121
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    .line 1122
    .local v0, "orig":Z
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    .line 1125
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->setupDefaultAttributes()V

    .line 1128
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    .line 1130
    return-void
.end method
