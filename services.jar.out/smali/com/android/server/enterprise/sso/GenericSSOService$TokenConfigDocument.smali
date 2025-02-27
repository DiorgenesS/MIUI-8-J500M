.class Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field deviceCert:Lorg/w3c/dom/Node;

.field tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field userCert:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 4399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4377
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 4382
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    .line 4386
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    .line 4390
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    .line 4400
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 4401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    .line 4402
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V

    .line 4403
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4376
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4376
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4376
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4376
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceCertificate()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 4446
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 4454
    if-eqz p1, :cond_0

    .line 4455
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 4456
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserCertificate()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 4450
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private update()V
    .locals 3

    .prologue
    .line 4410
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->updateToken()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4418
    :cond_0
    :goto_0
    return-void

    .line 4411
    :catch_0
    move-exception v0

    .line 4412
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4413
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4414
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4415
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4416
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateToken()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4421
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 4422
    .local v2, "root":Lorg/w3c/dom/Node;
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 4423
    iput-object v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    .line 4424
    iput-object v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    .line 4425
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 4426
    .local v4, "tokenNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 4427
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 4428
    .local v3, "token":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "apptoken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4430
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "packagename"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 4433
    .local v0, "appPkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4426
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4434
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "devicecertificate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4437
    iput-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    goto :goto_1

    .line 4438
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "usercertificate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4440
    iput-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    goto :goto_1

    .line 4443
    .end local v3    # "token":Lorg/w3c/dom/Node;
    :cond_3
    return-void
.end method
