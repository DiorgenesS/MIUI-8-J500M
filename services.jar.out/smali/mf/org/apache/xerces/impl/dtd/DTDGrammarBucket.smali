.class public Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;
.super Ljava/lang/Object;
.source "DTDGrammarBucket.java"


# instance fields
.field protected fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected final fGrammars:Ljava/util/Hashtable;

.field protected fIsStandalone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    .line 90
    return-void
.end method

.method getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    return-object v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .end local p1    # "desc":Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    return-object v0
.end method

.method getStandalone()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return v0
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 2
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .prologue
    .line 77
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .line 78
    .local v0, "desc":Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 0
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .prologue
    .line 105
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 106
    return-void
.end method

.method setStandalone(Z)V
    .locals 0
    .param p1, "standalone"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    .line 97
    return-void
.end method
