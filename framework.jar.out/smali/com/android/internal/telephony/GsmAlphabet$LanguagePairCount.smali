.class Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguagePairCount"
.end annotation


# instance fields
.field final languageCode:I

.field final septetCounts:[I

.field final unencodableCounts:[I


# direct methods
.method constructor <init>(I)V
    .locals 7
    .param p1, "code"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput p1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .line 1139
    # getter for: Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->access$000()I

    move-result v1

    .line 1140
    .local v1, "maxSingleShiftCode":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .line 1141
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .line 1144
    const/4 v0, 0x1

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "tableOffset":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 1145
    # getter for: Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->access$100()[I

    move-result-object v3

    aget v3, v3, v2

    if-ne v3, v0, :cond_0

    .line 1146
    add-int/lit8 v2, v2, 0x1

    .line 1144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v4, v3, v0

    goto :goto_1

    .line 1154
    :cond_1
    if-ne p1, v5, :cond_3

    if-lt v1, v5, :cond_3

    .line 1155
    iget-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v4, v3, v5

    .line 1159
    :cond_2
    :goto_2
    return-void

    .line 1156
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    if-lt v1, v6, :cond_2

    .line 1157
    iget-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v4, v3, v6

    goto :goto_2
.end method
