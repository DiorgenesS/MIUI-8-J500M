.class public Lcom/android/server/BBCManagerService;
.super Ljava/lang/Object;
.source "BBCManagerService.java"


# static fields
.field static final ACCESS_PERSONAL_APPS:Ljava/lang/String; = "accessPersonalApps"

.field static final PACKAGE_UID_INFO:Ljava/lang/String; = "packageUidInfo"

.field static final TAG:Ljava/lang/String; = "BBCManagerService"

.field static mBbcDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .local v3, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 224
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "h":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 226
    .local v2, "l":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    .line 229
    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 232
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "h":Ljava/lang/String;
    .end local v2    # "l":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 170
    const-string/jumbo v12, "package"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    .line 171
    .local v8, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v4, 0x40

    .line 172
    .local v4, "flags":I
    const/4 v7, 0x0

    .line 174
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v8, p0, v4, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 180
    if-nez v7, :cond_0

    .line 218
    :goto_0
    return-object v3

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "BBCManagerService"

    const-string v13, "Cannot find pkg info"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 184
    .local v11, "signatures":[Landroid/content/pm/Signature;
    if-nez v11, :cond_1

    .line 185
    const-string v12, "BBCManagerService"

    const-string v13, "Cannot find signatures"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_1
    const/4 v9, 0x0

    .line 191
    .local v9, "pubKey":Ljava/security/PublicKey;
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v11, v12

    invoke-virtual {v12}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 198
    :goto_1
    if-nez v9, :cond_2

    .line 199
    const-string v12, "BBCManagerService"

    const-string v13, "Cannot find public key"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v6

    .line 195
    .local v6, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 203
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    invoke-interface {v9}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 205
    .local v2, "endcodedPubKey":[B
    const/4 v3, 0x0

    .line 208
    .local v3, "finalResult":Ljava/lang/String;
    :try_start_2
    const-string v12, "SHA-256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 209
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 210
    .local v10, "sha256Result":[B
    invoke-static {v10}, Lcom/android/server/BBCManagerService;->byte2HexFormatted([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v3

    .line 217
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v10    # "sha256Result":[B
    :goto_2
    const-string v12, "BBCManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sha256 Result ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :catch_3
    move-exception v1

    .line 212
    .local v1, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v1    # "e1":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v6

    .line 214
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method public static handleExchangeDataBBC(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "ret":Landroid/os/Bundle;
    const-string v3, "action"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string v3, "BBCManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExchangeDataBBC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    const-string v3, "accessPersonalApps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-static {p2}, Lcom/android/server/BBCManagerService;->processAccessPersonalApps(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "caller_uid"    # I
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 96
    .local v3, "ret":Z
    :try_start_0
    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v6, "accessPersonalApps"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 98
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    if-nez p0, :cond_0

    .line 99
    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v6, "packageUidInfo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 101
    .local v4, "uids":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    .end local v4    # "uids":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 108
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "apps":Landroid/os/Bundle;
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    const/4 v3, 0x1

    .line 113
    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/BBCManagerService;->verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "*"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    :cond_3
    const/4 v3, 0x1

    .line 118
    :cond_4
    const-string v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAccessPersonalApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .end local v1    # "apps":Landroid/os/Bundle;
    :cond_5
    :goto_0
    return v3

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static processAccessPersonalApps(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const/4 v4, 0x0

    .line 34
    .local v4, "ret":Landroid/os/Bundle;
    const-string v6, "apps"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "apps":Landroid/os/Bundle;
    const-string/jumbo v6, "packageName"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "bbcApp":Ljava/lang/String;
    const-string/jumbo v6, "uid"

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 38
    .local v5, "uid":I
    if-eqz v2, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    if-lez v5, :cond_1

    .line 56
    const/4 v3, 0x0

    .line 58
    .local v3, "packageUidInfo":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v7, "packageUidInfo"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 59
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "packageUidInfo":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 60
    .restart local v3    # "packageUidInfo":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v7, "packageUidInfo"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v3    # "packageUidInfo":Landroid/os/Bundle;
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "ret":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 70
    .restart local v4    # "ret":Landroid/os/Bundle;
    const-string/jumbo v6, "result"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-object v4

    .line 45
    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    :cond_2
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .restart local v3    # "packageUidInfo":Landroid/os/Bundle;
    :cond_4
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v7, "packageUidInfo"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "packageUidInfo":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "packageUidInfo":Landroid/os/Bundle;
    goto :goto_2
.end method

.method private static verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 129
    const-string v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parameter ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "*"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    :cond_0
    const-string v6, "BBCManagerService"

    const-string/jumbo v7, "public key is null. All pkg is granted"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return v5

    .line 137
    :cond_1
    :try_start_0
    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 140
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-virtual {v2, p0, v7, v8}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 142
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x81

    .line 144
    .local v3, "systemAppMask":I
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_2

    .line 145
    const-string v7, "BBCManagerService"

    const-string v8, "System app. Do not need to verify public key. Return true"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "systemAppMask":I
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "BBCManagerService"

    const-string v8, "Exception has occured while verifying public key"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Lcom/android/server/BBCManagerService;->getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "target":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    :cond_3
    const-string v5, "BBCManagerService"

    const-string/jumbo v7, "target is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 157
    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 161
    const-string v6, "BBCManagerService"

    const-string/jumbo v7, "publicKey is verified"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_5
    const-string v5, "BBCManagerService"

    const-string/jumbo v7, "publicKey is not matched"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 166
    goto :goto_0
.end method
