.class public Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$1;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_INVALID:I = 0x0

.field public static final CHANNEL_IN_5POINT1:I = 0xfc

.field public static final CHANNEL_IN_BACK:I = 0x20

.field public static final CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final CHANNEL_IN_DEFAULT:I = 0x1

.field public static final CHANNEL_IN_FRONT:I = 0x10

.field public static final CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final CHANNEL_IN_LEFT:I = 0x4

.field public static final CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_PRESSURE:I = 0x400

.field public static final CHANNEL_IN_RIGHT:I = 0x8

.field public static final CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final CHANNEL_IN_X_AXIS:I = 0x800

.field public static final CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final CHANNEL_OUT_MONO:I = 0x4

.field public static final CHANNEL_OUT_QUAD:I = 0xcc

.field public static final CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final CHANNEL_OUT_STEREO:I = 0xc

.field public static final CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final ENCODING_AAC_HE_V1:I = 0xb

.field public static final ENCODING_AAC_HE_V2:I = 0xc

.field public static final ENCODING_AAC_LC:I = 0xa

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_AMRNB:I = 0x64

.field public static final ENCODING_AMRWB:I = 0x65

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_EVRC:I = 0x66

.field public static final ENCODING_EVRCB:I = 0x67

.field public static final ENCODING_EVRCNW:I = 0x69

.field public static final ENCODING_EVRCWB:I = 0x68

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_MP3:I = 0x9

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "ignoredArgument"    # I

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "channelIndexMask"    # I

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 595
    iput p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 596
    iput p3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 597
    iput p4, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 598
    const/16 v0, 0xf

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 602
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioFormat$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/media/AudioFormat$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 212
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 212
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 212
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 212
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/AudioFormat;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFormat;

    .prologue
    .line 212
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/AudioFormat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioFormat;
    .param p1, "x1"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p1
.end method

.method public static channelCountFromInChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 397
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .locals 1
    .param p0, "javaMask"    # I

    .prologue
    .line 406
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .locals 1
    .param p0, "nativeMask"    # I

    .prologue
    .line 416
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static filterPublicFormats([I)[I
    .locals 4
    .param p0, "formats"    # [I

    .prologue
    .line 559
    if-nez p0, :cond_0

    .line 560
    const/4 v3, 0x0

    .line 572
    :goto_0
    return-object v3

    .line 562
    :cond_0
    array-length v3, p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 563
    .local v1, "myCopy":[I
    const/4 v2, 0x0

    .line 564
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 565
    aget v3, v1, v0

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    if-eq v2, v0, :cond_1

    .line 567
    aget v3, v1, v0

    aput v3, v1, v2

    .line 569
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 564
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_3
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_0
.end method

.method public static getBytesPerSample(I)I
    .locals 3
    .param p0, "audioFormat"    # I

    .prologue
    .line 450
    sparse-switch p0, :sswitch_data_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :sswitch_0
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 455
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 457
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 460
    :sswitch_3
    const/16 v0, 0x20

    goto :goto_0

    .line 462
    :sswitch_4
    const/16 v0, 0x3d

    goto :goto_0

    .line 467
    :sswitch_5
    const/16 v0, 0x17

    goto :goto_0

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method public static inChannelMaskFromOutChannelMask(I)I
    .locals 2
    .param p0, "outMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    const/16 v0, 0x10

    .line 375
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isEncodingLinearPcm(I)Z
    .locals 3
    .param p0, "audioFormat"    # I

    .prologue
    .line 524
    sparse-switch p0, :sswitch_data_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :sswitch_0
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isPublicEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .prologue
    .line 507
    packed-switch p0, :pswitch_data_0

    .line 517
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 515
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .prologue
    .line 478
    sparse-switch p0, :sswitch_data_0

    .line 500
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 498
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getChannelCount()I
    .locals 3

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 684
    .local v1, "channelIndexCount":I
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 685
    .local v0, "channelCount":I
    if-nez v0, :cond_1

    .line 686
    move v0, v1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    if-eq v0, v1, :cond_0

    if-eqz v1, :cond_0

    .line 688
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChannelIndexMask()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    goto :goto_0
.end method

.method public getChannelMask()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 657
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    goto :goto_0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    goto :goto_0
.end method

.method public getPropertySetMask()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 644
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 913
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
