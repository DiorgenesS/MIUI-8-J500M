.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeSubtypeListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final mImeName:Ljava/lang/CharSequence;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mIsSystemLanguage:Z

.field public final mIsSystemLocale:Z

.field public final mSubtypeId:I

.field public final mSubtypeName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "imeName"    # Ljava/lang/CharSequence;
    .param p2, "subtypeName"    # Ljava/lang/CharSequence;
    .param p3, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "subtypeId"    # I
    .param p5, "subtypeLocale"    # Ljava/lang/String;
    .param p6, "systemLocale"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 64
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 65
    iput-object p3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 66
    iput p4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 67
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iput-boolean v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 72
    iget-boolean v4, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-eqz v4, :cond_1

    .line 73
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "systemLanguage":Ljava/lang/String;
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 93
    .end local p0    # "locale":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "locale":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;)I
    .locals 4
    .param p1, "other"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 99
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v2, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-eqz v2, :cond_5

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_5
    iget-boolean v2, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-nez v2, :cond_0

    .line 117
    iget-boolean v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v2, :cond_6

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_6
    iget-boolean v2, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v0, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareTo(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p1, p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    instance-of v3, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 150
    .local v0, "that":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    iget v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    iget v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 154
    goto :goto_0

    .end local v0    # "that":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_3
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeSubtypeListItem{mImeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubtypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsSystemLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsSystemLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
