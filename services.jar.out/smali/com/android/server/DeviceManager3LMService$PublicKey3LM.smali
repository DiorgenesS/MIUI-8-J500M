.class public Lcom/android/server/DeviceManager3LMService$PublicKey3LM;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PublicKey3LM"
.end annotation


# instance fields
.field private final m3LMPublicKey:[B

.field private final mAFPublicKey:[B

.field private final mContext:Landroid/content/Context;

.field private final mDCMPublicKey:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 2376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    .line 2378
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2381
    .local v6, "resources":Landroid/content/res/Resources;
    const-string v7, "1"

    const-string/jumbo v8, "ro.3lm.production"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2382
    const v7, 0x1040aa0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, "cert":Ljava/lang/String;
    const v7, 0x1040747

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2388
    .local v1, "certAF":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    .line 2389
    .local v3, "key":Ljava/security/PublicKey;
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->m3LMPublicKey:[B

    .line 2390
    invoke-static {v1, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v4

    .line 2391
    .local v4, "keyAF":Ljava/security/PublicKey;
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mAFPublicKey:[B

    .line 2394
    const v7, 0x1040752

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2395
    .local v2, "certDCM":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v5

    .line 2396
    .local v5, "keyDCM":Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mDCMPublicKey:[B

    .line 2398
    return-void

    .line 2385
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "certAF":Ljava/lang/String;
    .end local v2    # "certDCM":Ljava/lang/String;
    .end local v3    # "key":Ljava/security/PublicKey;
    .end local v4    # "keyAF":Ljava/security/PublicKey;
    .end local v5    # "keyDCM":Ljava/security/PublicKey;
    :cond_0
    const v7, 0x1040aa1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2386
    .restart local v0    # "cert":Ljava/lang/String;
    const v7, 0x1040748

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "certAF":Ljava/lang/String;
    goto :goto_0
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .locals 1
    .param p1, "blob"    # [B

    .prologue
    .line 2402
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public comparePublicKey([BZ)Z
    .locals 1
    .param p1, "blob"    # [B
    .param p2, "allowDcm"    # Z

    .prologue
    .line 2421
    const/4 v0, 0x0

    return v0
.end method
