.class public Lmf/org/apache/wml/dom/WMLInputElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLInputElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLInputElement;


# static fields
.field private static final serialVersionUID:J = 0x283559006c7fc31bL


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyOk()Z
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "emptyok"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "format"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "maxlength"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTabIndex()I
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "tabindex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setEmptyOk(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 91
    const-string/jumbo v0, "emptyok"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "format"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setMaxLength(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 59
    const-string/jumbo v0, "maxlength"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 35
    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public setTabIndex(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 67
    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
