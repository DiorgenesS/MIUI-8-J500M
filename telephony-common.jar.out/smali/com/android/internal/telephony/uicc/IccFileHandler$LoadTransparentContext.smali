.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTransparentContext"
.end annotation


# instance fields
.field mBinSize:I

.field mCountPhases:I

.field mEfid:I

.field mLoadAll:Z

.field mOnLoaded:Landroid/os/Message;

.field mPhaseNum:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "phaseNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    .line 192
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    .line 195
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    .line 199
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 200
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    .line 201
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    .line 202
    return-void
.end method
