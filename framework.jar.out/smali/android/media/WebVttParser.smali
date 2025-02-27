.class Landroid/media/WebVttParser;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttParser$Phase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttParser"


# instance fields
.field private mBuffer:Ljava/lang/String;

.field private mCue:Landroid/media/TextTrackCue;

.field private mCueTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/media/WebVttCueListener;

.field private final mParseCueId:Landroid/media/WebVttParser$Phase;

.field private final mParseCueText:Landroid/media/WebVttParser$Phase;

.field private final mParseCueTime:Landroid/media/WebVttParser$Phase;

.field private final mParseHeader:Landroid/media/WebVttParser$Phase;

.field private final mParseStart:Landroid/media/WebVttParser$Phase;

.field private mPhase:Landroid/media/WebVttParser$Phase;

.field private final mSkipRest:Landroid/media/WebVttParser$Phase;


# direct methods
.method constructor <init>(Landroid/media/WebVttCueListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/WebVttCueListener;

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Landroid/media/WebVttParser$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$1;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    .line 708
    new-instance v0, Landroid/media/WebVttParser$2;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$2;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    .line 725
    new-instance v0, Landroid/media/WebVttParser$3;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$3;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    .line 825
    new-instance v0, Landroid/media/WebVttParser$4;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$4;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    .line 850
    new-instance v0, Landroid/media/WebVttParser$5;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$5;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    .line 953
    new-instance v0, Landroid/media/WebVttParser$6;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$6;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    .line 588
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 589
    const-string v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 590
    iput-object p1, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    .line 591
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 592
    return-void
.end method

.method static synthetic access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttParser;
    .param p1, "x1"    # Landroid/media/WebVttParser$Phase;

    .prologue
    .line 579
    iput-object p1, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/WebVttParser;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-direct/range {p0 .. p5}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;
    .locals 1
    .param p0, "x0"    # Landroid/media/WebVttParser;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;
    .locals 0
    .param p0, "x0"    # Landroid/media/WebVttParser;
    .param p1, "x1"    # Landroid/media/TextTrackCue;

    .prologue
    .line 579
    iput-object p1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object p1
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 980
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 975
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subMessage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method public static parseFloatPercentage(Ljava/lang/String;)F
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 597
    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "does not end in %"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 602
    const-string v2, ".*[^0-9.].*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "contains an invalid character"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 608
    .local v1, "value":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 609
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is out of range"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v1    # "value":F
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is not a number"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":F
    :cond_3
    return v1
.end method

.method public static parseIntPercentage(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 618
    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "does not end in %"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 623
    const-string v2, ".*[^0-9].*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "contains an invalid character"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 629
    .local v1, "value":I
    if-ltz v1, :cond_2

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 630
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is out of range"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is not a number"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":I
    :cond_3
    return v1
.end method

.method public static parseTimestampMs(Ljava/lang/String;)J
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 639
    const-string v5, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 640
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "has invalid format"

    invoke-direct {v5, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 643
    :cond_0
    const-string v5, "\\."

    const/4 v8, 0x2

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "parts":[Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 645
    .local v6, "value":J
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 646
    .local v1, "group":Ljava/lang/String;
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v6, v8, v10

    .line 645
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "group":Ljava/lang/String;
    :cond_1
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 10
    .param p0, "timeMs"    # J

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 652
    const-string v0, "%d:%02d:%02d.%03d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v4, 0x36ee80

    div-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/32 v4, 0xea60

    div-long v4, p0, v4

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    div-long v4, p0, v8

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    rem-long v4, p0, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eos()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 682
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 683
    const-string v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 685
    invoke-virtual {p0}, Landroid/media/WebVttParser;->yieldCue()V

    .line 686
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 687
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v2, 0x0

    .line 659
    .local v2, "trailingCR":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    const-string/jumbo v5, "\ufffd"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 662
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    const/4 v2, 0x1

    .line 664
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 667
    :cond_0
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v4, "[\r\n]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "lines":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 669
    iget-object v3, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 673
    if-eqz v2, :cond_2

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 675
    :cond_2
    return-void
.end method

.method public yieldCue()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 692
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 694
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    invoke-interface {v0, v1}, Landroid/media/WebVttCueListener;->onCueParsed(Landroid/media/TextTrackCue;)V

    .line 696
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 697
    return-void
.end method
