.class public Lcom/samsung/android/graphics/RegionDecoder;
.super Ljava/lang/Object;
.source "RegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionDecoder"

.field private static final USE_MULTICORE:Z = true


# instance fields
.field private mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mNativeLock:Ljava/lang/Object;

.field private final mNativeLock_decode:Ljava/lang/Object;

.field private mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

.field private mRecycled:Z

.field private secmmrd:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    const-string v1, "MMCodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "RegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;[BIIZZ)V
    .locals 4
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "isShareabl"    # Z
    .param p6, "isPreview"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    .line 52
    iput-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 53
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/graphics/RegionDecoder;->nativerdinstance(Ljava/lang/String;[BIIZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 55
    iget-wide v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/RegionDecoder;->configMultiCore(J)I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    .line 58
    return-void
.end method

.method private static native RequestCancelDecode(J)I
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    return-void
.end method

.method private static native configLTN(J)I
.end method

.method private static native configMultiCore(J)I
.end method

.method private static convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 350
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .line 352
    .local v3, "result":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 353
    int-to-byte v0, v3

    .line 354
    .local v0, "b":B
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 355
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .line 356
    goto :goto_0

    .line 357
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static native nativeDecodeRegion(JIIIIILandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeRegionBB(JIIIIILjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativerdinstance(Ljava/lang/String;[BIIZZ)J
.end method

.method private static native nativerecycle(J)I
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/samsung/android/graphics/RegionDecoder;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v8, 0x0

    .line 189
    if-nez p0, :cond_1

    move-object v0, v8

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/RegionDecoder;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/graphics/RegionDecoder;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/RegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    .line 196
    .local v0, "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    iget-wide v2, v0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v1, :cond_0

    move-object v0, v8

    .line 207
    goto :goto_0

    .line 200
    :catch_0
    move-exception v7

    .line 201
    .local v7, "e":Ljava/io/IOException;
    const-string v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 211
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 212
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 214
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/samsung/android/graphics/RegionDecoder;
    .locals 9
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v8, 0x0

    .line 143
    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/RegionDecoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/RegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    .line 144
    .local v0, "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    iget-wide v2, v0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 145
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_1

    .line 162
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_0
    :goto_1
    return-object v0

    .line 148
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :catch_0
    move-exception v7

    .line 149
    .local v7, "e":Ljava/io/IOException;
    const-string v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 159
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 160
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 162
    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_1
    move-object v0, v8

    .line 155
    goto :goto_1
.end method

.method public static newInstance([BIIZ)Lcom/samsung/android/graphics/RegionDecoder;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z

    .prologue
    const/4 v8, 0x0

    .line 236
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 237
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 241
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/RegionDecoder;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/RegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    .line 242
    .local v0, "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    iget-wide v2, v0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 243
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_3

    .line 260
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_2
    :goto_1
    return-object v0

    .line 246
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :catch_0
    move-exception v7

    .line 247
    .local v7, "e":Ljava/io/IOException;
    const-string v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 257
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 258
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 260
    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_3
    move-object v0, v8

    .line 253
    goto :goto_1
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {p2}, Lcom/samsung/android/graphics/Decoder;->getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 75
    .local v8, "tile_width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 76
    .local v9, "tile_height":I
    iget v6, p2, Lcom/samsung/android/graphics/Decoder$Options;->inSampleSize:I

    .line 77
    .local v6, "samplesize":I
    if-nez v6, :cond_1

    .line 78
    const/4 v6, 0x1

    .line 80
    :cond_1
    add-int v0, v8, v6

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v6

    .line 81
    add-int v0, v9, v6

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v6

    .line 82
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 84
    :cond_2
    const-string v0, "RegionDecoder"

    const-string v1, "inBitmap Erraneous\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 88
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-wide v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/graphics/RegionDecoder;->nativeDecodeRegion(JIIIIILandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v11

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .end local v6    # "samplesize":I
    .end local v8    # "tile_width":I
    .end local v9    # "tile_height":I
    :catch_0
    move-exception v10

    .line 93
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "RegionDecoder"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/RegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/RegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    monitor-exit v1

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->nativeGetHeight(J)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/RegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    monitor-exit v1

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->nativeGetWidth(J)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 6

    .prologue
    .line 294
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 297
    iget-wide v4, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v4, v5}, Lcom/samsung/android/graphics/RegionDecoder;->nativerecycle(J)I

    .line 298
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    .line 301
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 302
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public requestCancelDecode()V
    .locals 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 314
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->RequestCancelDecode(J)I

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/RegionDecoder;->recycle()V

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useRowDecode()I
    .locals 6

    .prologue
    .line 326
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 328
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->configLTN(J)I

    move-result v0

    monitor-exit v1

    .line 331
    :goto_0
    return v0

    .line 330
    :cond_0
    monitor-exit v1

    .line 331
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
