.class Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;
.super Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSAnyType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1175
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    .line 1176
    const-string v0, "anyType"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fName:Ljava/lang/String;

    .line 1177
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 1178
    iput-object p0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1179
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fDerivedBy:S

    .line 1180
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fContentType:S

    .line 1182
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1183
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 1184
    return-void
.end method


# virtual methods
.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 1259
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 3

    .prologue
    .line 1220
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 1221
    .local v1, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 1222
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    .line 1223
    .local v0, "attrGrp":Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1224
    return-object v0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 2

    .prologue
    .line 1228
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 1229
    .local v0, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 1230
    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 1263
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object v0
.end method

.method public getParticle()Lmf/org/apache/xerces/xs/XSParticle;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1236
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 1237
    .local v3, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iput-short v7, v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 1239
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 1240
    .local v2, "particleW":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput v5, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 1241
    const/4 v4, -0x1

    iput v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 1242
    const/4 v4, 0x2

    iput-short v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 1243
    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 1245
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 1246
    .local v0, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v4, 0x66

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 1247
    iput v6, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 1248
    new-array v4, v6, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1249
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v2, v4, v5

    .line 1251
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 1252
    .local v1, "particleG":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    iput-short v7, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 1253
    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 1255
    return-object v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method

.method public setContainsTypeID()V
    .locals 0

    .prologue
    .line 1205
    return-void
.end method

.method public setIsAbstractType()V
    .locals 0

    .prologue
    .line 1201
    return-void
.end method

.method public setIsAnonymous()V
    .locals 0

    .prologue
    .line 1209
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1197
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "baseType"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p4, "derivedBy"    # S
    .param p5, "schemaFinal"    # S
    .param p6, "block"    # S
    .param p7, "contentType"    # S
    .param p8, "isAbstract"    # Z
    .param p9, "attrGrp"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p10, "simpleType"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p11, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    .line 1193
    return-void
.end method
