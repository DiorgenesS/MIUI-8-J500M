.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field fileNameFilter:Ljava/io/FilenameFilter;

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 564
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    .line 286
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 288
    return-void
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/WallpaperManager$Globals;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/WallpaperManager$Globals;Z)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Z

    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getCompressedVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pkm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    .end local p1    # "file":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 393
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "WallpaperService not running"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v20, 0x0

    .line 475
    :goto_0
    return-object v20

    .line 398
    :cond_0
    :try_start_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v11, "params":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v11}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 400
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_7

    .line 401
    const-string/jumbo v20, "width"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 402
    .local v19, "width":I
    const-string/jumbo v20, "height"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 405
    .local v8, "height":I
    :try_start_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 406
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    .line 408
    .local v3, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/app/IWallpaperManager;->getWallpaperName()Ljava/lang/String;

    move-result-object v18

    .line 409
    .local v18, "wallpaperName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 410
    .local v14, "resId":I
    const/4 v13, 0x0

    .line 411
    .local v13, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    const-string/jumbo v20, "res:"

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 412
    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 414
    .local v15, "resName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 415
    .local v12, "pkg":Ljava/lang/String;
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 416
    .local v5, "colon":I
    if-lez v5, :cond_1

    .line 417
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 420
    :cond_1
    const/4 v9, 0x0

    .line 421
    .local v9, "ident":Ljava/lang/String;
    const/16 v20, 0x2f

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 422
    .local v16, "slash":I
    if-lez v16, :cond_2

    .line 423
    add-int/lit8 v20, v16, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 426
    :cond_2
    const/16 v17, 0x0

    .line 427
    .local v17, "type":Ljava/lang/String;
    if-lez v5, :cond_3

    if-lez v16, :cond_3

    sub-int v20, v16, v5

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 428
    add-int/lit8 v20, v5, 0x1

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 431
    :cond_3
    if-eqz v12, :cond_4

    if-eqz v9, :cond_4

    if-eqz v17, :cond_4

    .line 433
    const/16 v20, 0x4

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 434
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 435
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .line 444
    .end local v4    # "c":Landroid/content/Context;
    .end local v5    # "colon":I
    .end local v9    # "ident":Ljava/lang/String;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_4
    :goto_1
    if-lez v14, :cond_5

    .line 445
    :try_start_3
    invoke-static {v13, v14, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 448
    :cond_5
    if-nez v3, :cond_6

    .line 449
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 455
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v3, v1, v8}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v20

    .line 462
    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 463
    :catch_0
    move-exception v6

    .line 465
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v21, v0

    const-string v22, "IOException"

    invoke-interface/range {v21 .. v22}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 472
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "height":I
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "params":Landroid/os/Bundle;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "resId":I
    .end local v18    # "wallpaperName":Ljava/lang/String;
    .end local v19    # "width":I
    :catch_1
    move-exception v6

    .line 473
    .local v6, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "getCurrentWallpaperLocked:"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 436
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "colon":I
    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "height":I
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "params":Landroid/os/Bundle;
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "r":Landroid/content/res/Resources;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v18    # "wallpaperName":Ljava/lang/String;
    .restart local v19    # "width":I
    :catch_2
    move-exception v6

    .line 437
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package name "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not found"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 456
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "wallpaperName":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 457
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Can\'t decode file"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v20, v0

    const-string v21, "OutOfMemoryError"

    invoke-interface/range {v20 .. v21}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 462
    :try_start_8
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 463
    :catch_4
    move-exception v6

    .line 465
    .local v6, "e":Ljava/io/IOException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v20, v0

    const-string v21, "IOException"

    invoke-interface/range {v20 .. v21}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 438
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "colon":I
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "r":Landroid/content/res/Resources;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v18    # "wallpaperName":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 439
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_a
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Resource not found: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 461
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "wallpaperName":Ljava/lang/String;
    :catchall_0
    move-exception v20

    .line 462
    :try_start_b
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 467
    :goto_4
    :try_start_c
    throw v20
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 452
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "r":Landroid/content/res/Resources;
    .restart local v14    # "resId":I
    .restart local v18    # "wallpaperName":Ljava/lang/String;
    :cond_6
    :try_start_d
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getWallpaperData from Res:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 463
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "resId":I
    .end local v18    # "wallpaperName":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 465
    .local v6, "e":Ljava/io/IOException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v21, v0

    const-string v22, "IOException"

    invoke-interface/range {v21 .. v22}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V

    goto :goto_4

    .line 470
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "height":I
    .end local v19    # "width":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "wallpaper fd is null"

    invoke-interface/range {v20 .. v21}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_3
.end method

.method private getDefaultWallpaperFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWallpaperFile(Z)Ljava/io/File;
    .locals 30
    .param p1, "needCSCList"    # Z

    .prologue
    .line 576
    const/16 v17, 0x0

    .line 577
    .local v17, "omcFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 578
    .local v3, "cscFile":Ljava/io/File;
    const-string/jumbo v25, "persist.sys.omc_respath"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 579
    .local v18, "omcResourcPath":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 580
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/wallpaper/drawable/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 581
    .local v20, "omcWallpaperDirPath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v19, "omcWallpaperDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v21

    .line 583
    .local v21, "omcWallpapers":[Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 584
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_0

    .line 585
    aget-object v10, v21, v13

    .line 586
    .local v10, "fileName":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v24, "wallpaperFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_b

    .line 588
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "OMC default wallpaper return:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    move-object/from16 v17, v24

    .line 596
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v19    # "omcWallpaperDir":Ljava/io/File;
    .end local v20    # "omcWallpaperDirPath":Ljava/lang/String;
    .end local v21    # "omcWallpapers":[Ljava/lang/String;
    .end local v24    # "wallpaperFile":Ljava/io/File;
    :cond_0
    const-string/jumbo v25, "ro.config.wallpaper"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 597
    .local v22, "path":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 598
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 600
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "PROP_WALLPAPER default wallpaper return:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object v3, v9

    .line 605
    .end local v9    # "file":Ljava/io/File;
    :cond_1
    if-nez v3, :cond_2

    .line 606
    const-string v8, "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

    .line 607
    .local v8, "customWpFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v7, "custWpFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_2

    .line 609
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Chameleon default wallpaper return:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object v3, v7

    .line 616
    .end local v7    # "custWpFile":Ljava/io/File;
    .end local v8    # "customWpFilePath":Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 617
    const-string v15, "/system/csc_contents/"

    .line 618
    .local v15, "multiCscWallpaperDirPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v14, "multiCscWallpaperDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v16

    .line 620
    .local v16, "multiCscWallpapers":[Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 621
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_3

    .line 622
    aget-object v10, v16, v13

    .line 623
    .restart local v10    # "fileName":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .restart local v24    # "wallpaperFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_c

    .line 625
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Multi CSC wallpaper return:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    move-object/from16 v3, v24

    .line 634
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "multiCscWallpaperDir":Ljava/io/File;
    .end local v15    # "multiCscWallpaperDirPath":Ljava/lang/String;
    .end local v16    # "multiCscWallpapers":[Ljava/lang/String;
    .end local v24    # "wallpaperFile":Ljava/io/File;
    :cond_3
    if-nez v3, :cond_5

    .line 635
    const-string v5, "/system/wallpaper/default_wallpaper/"

    .line 636
    .local v5, "cscWallpaperDirPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v4, "cscWallpaperDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->fileNameFilter:Ljava/io/FilenameFilter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "cscWallpapers":[Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 639
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 641
    .local v2, "UserID":I
    if-eqz v2, :cond_4

    const/16 v25, 0x64

    move/from16 v0, v25

    if-ge v2, v0, :cond_4

    array-length v0, v6

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 642
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v11, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "/system/wallpaper/default_wallpaper/default_wallpaper_10.png"

    aput-object v26, v11, v25

    const/16 v25, 0x1

    const-string v26, "/system/wallpaper/default_wallpaper/default_wallpaper_10.jpg"

    aput-object v26, v11, v25

    .line 645
    .local v11, "guestFilePath":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_4

    .line 646
    new-instance v12, Ljava/io/File;

    aget-object v25, v11, v13

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v12, "guestWpFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_d

    .line 648
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "guest default wallpaper return:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object v3, v12

    .line 654
    .end local v11    # "guestFilePath":[Ljava/lang/String;
    .end local v12    # "guestWpFile":Ljava/io/File;
    .end local v13    # "i":I
    :cond_4
    if-nez v3, :cond_5

    .line 656
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_5

    .line 657
    aget-object v10, v6, v13

    .line 658
    .restart local v10    # "fileName":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .restart local v24    # "wallpaperFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_e

    .line 660
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CSC default wallpaper return:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v3, v24

    .line 668
    .end local v2    # "UserID":I
    .end local v4    # "cscWallpaperDir":Ljava/io/File;
    .end local v5    # "cscWallpaperDirPath":Ljava/lang/String;
    .end local v6    # "cscWallpapers":[Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v24    # "wallpaperFile":Ljava/io/File;
    :cond_5
    const/16 v23, 0x0

    .line 669
    .local v23, "returnFile":Ljava/io/File;
    if-eqz p1, :cond_6

    .line 670
    sget-object v25, Landroid/app/WallpaperManager;->mCSCDefaultWallpaperlist:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 671
    :cond_6
    if-eqz v17, :cond_8

    .line 672
    if-eqz p1, :cond_7

    .line 673
    sget-object v25, Landroid/app/WallpaperManager;->mCSCDefaultWallpaperlist:Ljava/util/ArrayList;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Landroid/app/WallpaperManager;->FILE_PREFIX:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "?locType=omc"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_7
    move-object/from16 v23, v17

    .line 676
    :cond_8
    if-eqz v3, :cond_a

    .line 677
    if-eqz p1, :cond_9

    .line 678
    sget-object v25, Landroid/app/WallpaperManager;->mCSCDefaultWallpaperlist:Ljava/util/ArrayList;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Landroid/app/WallpaperManager;->FILE_PREFIX:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "?locType=csc"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_9
    if-nez v23, :cond_a

    .line 680
    move-object/from16 v23, v3

    .line 683
    :cond_a
    return-object v23

    .line 584
    .end local v22    # "path":Ljava/lang/String;
    .end local v23    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v19    # "omcWallpaperDir":Ljava/io/File;
    .restart local v20    # "omcWallpaperDirPath":Ljava/lang/String;
    .restart local v21    # "omcWallpapers":[Ljava/lang/String;
    .restart local v24    # "wallpaperFile":Ljava/io/File;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 621
    .end local v19    # "omcWallpaperDir":Ljava/io/File;
    .end local v20    # "omcWallpaperDirPath":Ljava/lang/String;
    .end local v21    # "omcWallpapers":[Ljava/lang/String;
    .restart local v14    # "multiCscWallpaperDir":Ljava/io/File;
    .restart local v15    # "multiCscWallpaperDirPath":Ljava/lang/String;
    .restart local v16    # "multiCscWallpapers":[Ljava/lang/String;
    .restart local v22    # "path":Ljava/lang/String;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 645
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v14    # "multiCscWallpaperDir":Ljava/io/File;
    .end local v15    # "multiCscWallpaperDirPath":Ljava/lang/String;
    .end local v16    # "multiCscWallpapers":[Ljava/lang/String;
    .end local v24    # "wallpaperFile":Ljava/io/File;
    .restart local v2    # "UserID":I
    .restart local v4    # "cscWallpaperDir":Ljava/io/File;
    .restart local v5    # "cscWallpaperDirPath":Ljava/lang/String;
    .restart local v6    # "cscWallpapers":[Ljava/lang/String;
    .restart local v11    # "guestFilePath":[Ljava/lang/String;
    .restart local v12    # "guestWpFile":Ljava/io/File;
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 656
    .end local v11    # "guestFilePath":[Ljava/lang/String;
    .end local v12    # "guestWpFile":Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v24    # "wallpaperFile":Ljava/io/File;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 490
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "getDefaultWallpaperLocked"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v4, 0x0

    .line 493
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v7

    .line 494
    .local v7, "width":I
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v3

    .line 524
    .local v3, "height":I
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperFile()Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 525
    .local v1, "defaultWallpaper":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 527
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v4, v5

    .line 534
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-nez v4, :cond_2

    .line 535
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    # invokes: Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I
    invoke-static {p1}, Landroid/app/WallpaperManager;->access$100(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 543
    :goto_1
    if-eqz v4, :cond_1

    .line 545
    :try_start_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 546
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    invoke-static {v4, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v7, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 552
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 561
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "defaultWallpaper":Ljava/io/File;
    .end local v3    # "height":I
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "width":I
    :goto_2
    return-object v8

    .line 528
    .restart local v1    # "defaultWallpaper":Ljava/io/File;
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :catch_0
    move-exception v2

    .line 529
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "getDefaultWallpaperLocked error:"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 558
    .end local v1    # "defaultWallpaper":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "height":I
    .end local v7    # "width":I
    :catch_1
    move-exception v8

    :cond_1
    :goto_3
    move-object v8, v9

    .line 561
    goto :goto_2

    .line 538
    .restart local v1    # "defaultWallpaper":Ljava/io/File;
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "android.wallpaper.settings_systemui_transparency"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 539
    :catch_2
    move-exception v2

    .line 540
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 548
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_8
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Can\'t decode stream"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 552
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 553
    :catch_4
    move-exception v8

    goto :goto_3

    .line 551
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    .line 552
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 555
    :goto_4
    :try_start_b
    throw v8
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 553
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v10

    goto :goto_4
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    .line 354
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 356
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaperLockedForMultiSim(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    const/4 v8, 0x0

    .line 363
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5, p2}, Landroid/app/IWallpaperManager;->getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 365
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 366
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 367
    .local v6, "width":I
    const-string/jumbo v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 370
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 371
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 378
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 387
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v7

    .line 374
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 387
    goto :goto_0

    .line 377
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 378
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 381
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 384
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 379
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 299
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    const/4 v1, 0x0

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 306
    :try_start_1
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 307
    :try_start_2
    monitor-exit p0

    .line 348
    :goto_0
    return-object v1

    .line 309
    :catch_0
    move-exception v1

    .line 314
    :cond_0
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekWallpaperBitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 321
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const-string/jumbo v2, "no wallpaper -> default displayed single sim"

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->writeResetLog(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    :cond_2
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    :try_start_5
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    :goto_2
    :try_start_6
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 334
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 337
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 338
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 340
    :cond_4
    if-eqz p2, :cond_6

    .line 341
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 342
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 343
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 345
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 348
    :cond_6
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 323
    :catch_2
    move-exception v1

    goto :goto_1
.end method
