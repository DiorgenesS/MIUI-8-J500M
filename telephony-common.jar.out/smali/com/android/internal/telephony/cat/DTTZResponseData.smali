.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 248
    return-void
.end method

.method private byteToBCD(I)B
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 300
    if-ltz p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value has to be between 0 and 99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private getTZOffSetByte(J)B
    .locals 9
    .param p1, "offSetVal"    # J

    .prologue
    const/4 v3, 0x1

    .line 310
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    move v2, v3

    .line 318
    .local v2, "isNegative":Z
    :goto_0
    const-wide/32 v6, 0xdbba0

    div-long v4, p1, v6

    .line 319
    .local v4, "tzOffset":J
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    :cond_0
    int-to-long v6, v3

    mul-long/2addr v4, v6

    .line 320
    long-to-int v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v0

    .line 322
    .local v0, "bcdVal":B
    if-eqz v2, :cond_2

    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    move v1, v0

    .end local v0    # "bcdVal":B
    .local v1, "bcdVal":B
    :goto_1
    return v0

    .line 310
    .end local v1    # "bcdVal":B
    .end local v2    # "isNegative":Z
    .end local v4    # "tzOffset":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "bcdVal":B
    .restart local v2    # "isNegative":Z
    .restart local v4    # "tzOffset":J
    :cond_2
    move v1, v0

    .line 322
    .end local v0    # "bcdVal":B
    .restart local v1    # "bcdVal":B
    goto :goto_1
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v13, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x7

    .line 252
    if-nez p1, :cond_1

    .line 297
    :cond_0
    return-void

    .line 257
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    or-int/lit16 v5, v9, 0x80

    .line 258
    .local v5, "tag":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 260
    const/16 v9, 0x8

    new-array v2, v9, [B

    .line 262
    .local v2, "data":[B
    const/4 v9, 0x0

    aput-byte v12, v2, v9

    .line 264
    iget-object v9, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    if-nez v9, :cond_2

    .line 265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 268
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x64

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v9

    aput-byte v9, v2, v10

    .line 271
    iget-object v9, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v9

    aput-byte v9, v2, v11

    .line 274
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v10

    aput-byte v10, v2, v9

    .line 277
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v10

    aput-byte v10, v2, v9

    .line 280
    iget-object v9, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v9

    aput-byte v9, v2, v13

    .line 283
    const/4 v9, 0x6

    iget-object v10, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v10

    aput-byte v10, v2, v9

    .line 285
    const-string v9, "persist.sys.timezone"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "tz":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 287
    const/4 v9, -0x1

    aput-byte v9, v2, v12

    .line 294
    :goto_0
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 295
    .local v1, "b":B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 290
    .local v7, "zone":Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    add-int v8, v9, v10

    .line 291
    .local v8, "zoneOffset":I
    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    move-result v9

    aput-byte v9, v2, v12

    goto :goto_0
.end method
