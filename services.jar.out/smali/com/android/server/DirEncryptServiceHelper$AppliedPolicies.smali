.class public final Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppliedPolicies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPoliciesApplied()Z
    .locals 5

    .prologue
    .line 380
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v0, "policy":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v1, "policy2":Ljava/io/File;
    const/4 v2, 0x0

    .line 384
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 386
    :goto_0
    return v2

    .line 384
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setPoliciesApplied()Z
    .locals 6

    .prologue
    .line 348
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v1, "policy":Ljava/io/File;
    const/4 v2, 0x1

    .line 351
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    const/4 v2, 0x1

    :goto_0
    move v3, v2

    .line 360
    :goto_1
    return v3

    .line 354
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 355
    const/16 v3, 0x1a4

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static setPoliciesRemoved()Z
    .locals 5

    .prologue
    .line 364
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v0, "policy":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v1, "policy2":Ljava/io/File;
    const/4 v2, 0x1

    .line 368
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 372
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 376
    :cond_1
    return v2
.end method
