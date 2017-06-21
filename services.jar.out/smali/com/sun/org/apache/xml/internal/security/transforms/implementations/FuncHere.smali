.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHere;
.super Lcom/sun/org/apache/xpath/internal/functions/Function;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_1

    const-string v5, "ER_CONTEXT_HAS_NO_OWNERDOC"

    invoke-virtual {p0, p1, v5, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->error(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v4, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string/jumbo v1, "xpath.funcHere.documentsDiffer"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->mutableNodeset()Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    move-result-object v1

    invoke-interface {v4, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->detach()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    goto :goto_1

    :pswitch_3
    invoke-interface {v4, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method
