.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509CertificateResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _x509CertKeyElements:[Lorg/w3c/dom/Element;

.field _x509certObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509CertificateResolver:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.X509CertificateResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509CertificateResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509CertificateResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509certObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Can I resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string v1, "X509Data"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I can\'t"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "X509Certificate"

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-lez v1, :cond_4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Yes Sir, I can"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I can\'t"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-nez v2, :cond_3

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    array-length v2, v2

    new-array v2, v2, [Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509certObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509certObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509CertKeyElements:[Lorg/w3c/dom/Element;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509certObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->_x509certObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;->getX509Certificate()Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509CertificateResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "XMLSecurityException"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
