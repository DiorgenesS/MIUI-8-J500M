.class Lcom/android/server/wm/CustomStartingWindowManager;
.super Ljava/lang/Object;
.source "CustomStartingWindowData.java"


# static fields
.field private static final KEYGUARDPREVIEW_DIRNAME:Ljava/lang/String; = "keyguardpreview"

.field private static final REVERSESTARTINGWINDOW_DIRNAME:Ljava/lang/String; = "reversestartingwindow"

.field private static final STARTINGWINDOW_DIRNAME:Ljava/lang/String; = "startingwindow"

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowManager"

.field public static final TYPE_KEYGUARD_PREVIEW:I = 0x3

.field public static final TYPE_REVERSE_STARTING_WINDOW:I = 0x2

.field public static final TYPE_STARTING_WINDOW:I = 0x1

.field private static final mCustomImageSystemPath:Ljava/io/File;

.field private static final mKeyguardPreviewPath:Ljava/io/File;

.field private static final mReverseStartingWindowPath:Ljava/io/File;

.field private static final mStartingWindowPath:Ljava/io/File;


# instance fields
.field private final TAG_RESID:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardPreviewResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseStartingWindowResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingWindowResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "startingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "reversestartingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    .line 252
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "keyguardpreview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    .line 253
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/custom_image"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string/jumbo v0, "resId"

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->TAG_RESID:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    .line 260
    const-string v0, "CustomStartingWindowManager"

    const-string v1, "CustomStartingWindow Constructed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mContext:Landroid/content/Context;

    .line 262
    invoke-direct {p0}, Lcom/android/server/wm/CustomStartingWindowManager;->restoreAllFromXml()V

    .line 264
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-string v0, "CustomStartingWindowManager"

    const-string v1, "CustomStartingWindow custom image dir created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 268
    :cond_0
    return-void
.end method

.method private removeXml(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "file":Ljava/io/File;
    packed-switch p2, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 377
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    .restart local v0    # "file":Ljava/io/File;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 381
    :pswitch_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1

    .line 385
    :pswitch_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 386
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private restoreAllFromXml()V
    .locals 14

    .prologue
    .line 466
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 467
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 470
    :cond_0
    iget-object v11, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 471
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window restoreAllFromXml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 473
    .local v10, "tmpStartingWindowFiles":[Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object v0, v10

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 476
    .local v2, "file":Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    const/4 v11, 0x1

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/CustomStartingWindowManager;->restoreFromXml(Ljava/io/File;I)V

    .line 475
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CustomStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 489
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 490
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 493
    :cond_2
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow reverse starting window restoreAllFromXml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 495
    .local v9, "tempReverseStartingWindowFiles":[Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow reverse starting window file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object v0, v9

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 497
    .restart local v2    # "file":Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 500
    .restart local v3    # "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 501
    .restart local v6    # "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    const/4 v11, 0x2

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/CustomStartingWindowManager;->restoreFromXml(Ljava/io/File;I)V

    .line 496
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 502
    :catch_1
    move-exception v1

    .line 503
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CustomStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 510
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 511
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 514
    :cond_4
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow keyguard preview restoreAllFromXml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v11, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 516
    .local v8, "tempKeyguardPreviewFiles":[Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow keyguard preview file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object v0, v8

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v2, v0, v4

    .line 518
    .restart local v2    # "file":Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 521
    .restart local v3    # "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 522
    .restart local v6    # "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 528
    const/4 v11, 0x3

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/CustomStartingWindowManager;->restoreFromXml(Ljava/io/File;I)V

    .line 517
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 523
    :catch_2
    move-exception v1

    .line 524
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CustomStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 530
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    return-void
.end method

.method private restoreFromXml(Ljava/io/File;I)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # I

    .prologue
    .line 533
    const/4 v7, 0x0

    .line 534
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 535
    .local v0, "deleteFile":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "fileName":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0x2e

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 540
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 541
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 543
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "event":I
    const/4 v9, 0x1

    if-eq v2, v9, :cond_7

    const/4 v9, 0x3

    if-eq v2, v9, :cond_7

    .line 544
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "name":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v2, v9, :cond_0

    .line 546
    const-string/jumbo v9, "resId"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 547
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 548
    const/4 v9, 0x4

    if-ne v2, v9, :cond_3

    .line 549
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v6, v9, p2}, Lcom/android/server/wm/CustomStartingWindowManager;->addCustomLayoutResId(Ljava/lang/String;II)V

    .line 550
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow restored for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    .end local v2    # "event":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 561
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow Failing file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 562
    const/4 v0, 0x1

    .line 564
    if-eqz v7, :cond_1

    .line 566
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 570
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 574
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 552
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow there is no resId for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 564
    .end local v2    # "event":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v7, :cond_4

    .line 566
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 570
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_5
    throw v9

    .line 555
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_6
    :try_start_6
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow Unknown xml event="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 564
    .end local v5    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_8

    .line 566
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 570
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 567
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v9

    goto :goto_7

    .end local v2    # "event":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v9

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_6

    .line 564
    :catchall_1
    move-exception v9

    goto :goto_5

    .line 560
    :catch_4
    move-exception v1

    goto/16 :goto_2

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_9
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private saveToXml(I)Ljava/io/StringWriter;
    .locals 4
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 358
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 359
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 361
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 363
    const-string/jumbo v2, "resId"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    const-string/jumbo v2, "resId"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 368
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 370
    return-object v0
.end method

.method private writeAll()V
    .locals 5

    .prologue
    .line 452
    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    .local v3, "startingWindowPackageName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/CustomStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_0

    .line 456
    .end local v3    # "startingWindowPackageName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 457
    .local v2, "reverseStartingWindowPackageName":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/server/wm/CustomStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_1

    .line 460
    .end local v2    # "reverseStartingWindowPackageName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    .local v1, "keyguardPreviewPackageName":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/CustomStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_2

    .line 463
    .end local v1    # "keyguardPreviewPackageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private writeXml(Ljava/lang/String;I)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 399
    const/4 v4, 0x0

    .line 400
    .local v4, "pathFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 402
    .local v5, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 404
    :pswitch_0
    sget-object v4, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    .line 405
    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    .line 422
    :goto_1
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 423
    const/4 v3, 0x0

    .line 424
    .local v3, "file":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 426
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 427
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 428
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/CustomStartingWindowManager;->saveToXml(I)Ljava/io/StringWriter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 429
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 430
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 431
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow file wrote normally."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 432
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 433
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 436
    :cond_1
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileOutputStream;
    :pswitch_1
    sget-object v4, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    .line 410
    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    .line 411
    goto/16 :goto_1

    .line 414
    :pswitch_2
    sget-object v4, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    .line 415
    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    .line 416
    goto/16 :goto_1

    .line 437
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "file":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 438
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    if-eqz v3, :cond_2

    .line 439
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 441
    :cond_2
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 443
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_4
    if-eqz v3, :cond_3

    .line 444
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 446
    :cond_3
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow cannot write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_4

    .line 437
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_3

    .line 432
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCustomLayoutResId(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "type"    # I

    .prologue
    .line 271
    packed-switch p3, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/CustomStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartingWindowLayoutResId(Lcom/android/server/wm/CustomStartingWindowData;I)I
    .locals 6
    .param p1, "data"    # Lcom/android/server/wm/CustomStartingWindowData;
    .param p2, "rot"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 291
    if-eqz p1, :cond_6

    .line 292
    iget-object v2, p1, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v3

    .line 293
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, "resId":I
    if-eq p2, v5, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 296
    :cond_0
    iget v2, p1, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v2, :cond_3

    .line 297
    iget v1, p1, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    .line 298
    const-string v2, "CustomStartingWindowManager"

    const-string v4, "CustomStartingWindow reverse layout will show"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    :cond_1
    :goto_0
    if-lez v1, :cond_4

    .line 326
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_2
    :goto_1
    return v1

    .line 303
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v1    # "resId":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/CustomStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :cond_4
    iget v1, p1, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 314
    if-lez v1, :cond_5

    .line 315
    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 320
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 321
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/CustomStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_6
    move v1, v3

    .line 326
    goto :goto_1
.end method

.method public removeCustomLayoutResId(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 337
    packed-switch p2, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/CustomStartingWindowManager;->removeXml(Ljava/lang/String;I)V

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCustomImage(Landroid/content/pm/ActivityInfo;ILjava/io/FileDescriptor;I)Z
    .locals 20
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "taskUserId"    # I
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "rotation"    # I

    .prologue
    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 579
    .local v2, "before":J
    const/high16 v16, 0x100000

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 580
    .local v4, "buf":[B
    const/4 v10, 0x0

    .line 581
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 582
    .local v14, "metaData":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 583
    .local v5, "customImage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 584
    .local v6, "customImageQualifier":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 585
    const-string v16, "com.samsung.android.startingwindow.IMAGE_PATH"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 586
    const-string v16, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 589
    :cond_0
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 590
    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow custom image not support app"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v16, 0x0

    .line 646
    :cond_1
    :goto_0
    return v16

    .line 595
    :cond_2
    sget-object v16, Lcom/android/server/wm/CustomStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_3

    .line 596
    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow mkdir for getFD. but it\'s weird"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v16, Lcom/android/server/wm/CustomStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 600
    :cond_3
    new-instance v8, Ljava/io/File;

    sget-object v16, Lcom/android/server/wm/CustomStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 601
    .local v8, "file":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 602
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    move/from16 v0, p4

    invoke-static {v6, v9, v0}, Lcom/android/server/wm/CustomStartingWindowData;->getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v8

    .line 604
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    if-nez p3, :cond_6

    .line 605
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 606
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 607
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_4

    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow custom image remove"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_4
    :goto_1
    const/16 v16, 0x1

    goto :goto_0

    .line 609
    :cond_5
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_4

    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow custom image remove called. but there is no file."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_6
    const/4 v12, 0x0

    .line 616
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_7

    .line 617
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 618
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 620
    :cond_7
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    .line 622
    .local v15, "size":I
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_8

    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow file size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    div-int/lit16 v0, v15, 0x400

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "KB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_8
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v13, v4, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 633
    if-eqz v11, :cond_9

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 634
    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 641
    :cond_a
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_f

    .line 642
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow setImage done normally "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_2
    const/16 v16, 0x1

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 635
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 636
    .local v7, "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v16, 0x0

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 625
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "size":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 626
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 627
    const/16 v16, 0x0

    .line 633
    if-eqz v10, :cond_b

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 634
    :cond_b
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 635
    :catch_2
    move-exception v7

    .line 636
    .local v7, "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 628
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 629
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 630
    const/16 v16, 0x0

    .line 633
    if-eqz v10, :cond_c

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 634
    :cond_c
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 635
    :catch_4
    move-exception v7

    .line 636
    .local v7, "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 632
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 633
    :goto_5
    if-eqz v10, :cond_d

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 634
    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 637
    :cond_e
    throw v16

    .line 635
    :catch_5
    move-exception v7

    .line 636
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 644
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :cond_f
    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow setImage done normally"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 632
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "size":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :catchall_2
    move-exception v16

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 628
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "size":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :catch_7
    move-exception v7

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 625
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "size":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :catch_9
    move-exception v7

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method
