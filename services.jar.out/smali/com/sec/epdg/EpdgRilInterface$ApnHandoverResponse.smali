.class public Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
.super Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnHandoverResponse"
.end annotation


# instance fields
.field private final mRat:I

.field private final mWifiOrMobile:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "rat"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;-><init>(I)V

    .line 70
    iput p2, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mRat:I

    .line 71
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mRat:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mWifiOrMobile:Z

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRat()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mRat:I

    return v0
.end method

.method public isWifiOrMobile()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->mWifiOrMobile:Z

    return v0
.end method
