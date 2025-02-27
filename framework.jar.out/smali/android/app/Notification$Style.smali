.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mSummaryText:Ljava/lang/CharSequence;

.field protected mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3982
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3987
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4076
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 4077
    const-string v0, "android.summaryText"

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4079
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 4080
    const-string v0, "android.title.big"

    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4082
    :cond_1
    const-string v0, "android.template"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    return-void
.end method

.method protected applyTopPadding(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    .line 4066
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1300(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mHasThreeLines:Z
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;)Z

    move-result v1

    iget-object v4, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/app/Notification$Builder;->access$1300(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v1, v4}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v3

    .line 4069
    .local v3, "topPadding":I
    const v1, 0x1020445

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 4070
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 4142
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 4143
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4103
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateTickerView(Landroid/app/Notification;)V

    .line 4104
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    .line 4105
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    .line 4106
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    .line 4107
    return-object p1
.end method

.method protected checkBuilder()V
    .locals 2

    .prologue
    .line 4017
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 4018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4020
    :cond_0
    return-void
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "layoutId"    # I

    .prologue
    const v9, 0x1020445

    const v8, 0x102043a

    const v7, 0x1020083

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 4023
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 4026
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$900(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4027
    .local v1, "oldBuilderContentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 4028
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4031
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    invoke-static {v3, p1}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4033
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/app/Notification$Builder;->access$902(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4035
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4036
    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4042
    :goto_0
    iget-boolean v3, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4045
    .local v2, "overflowText":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_3

    .line 4046
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->access$1200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4047
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4048
    const v3, 0x1020447

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4056
    :goto_2
    return-object v0

    .line 4038
    .end local v2    # "overflowText":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 4042
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 4051
    .restart local v2    # "overflowText":Ljava/lang/CharSequence;
    :cond_3
    const-string v3, ""

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4052
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4053
    const v3, 0x1020447

    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 4152
    const/4 v0, 0x1

    return v0
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3996
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 3997
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4003
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4004
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 4005
    return-void
.end method

.method protected populateBigContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4128
    return-void
.end method

.method protected populateContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4123
    return-void
.end method

.method protected populateHeadsUpContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4133
    return-void
.end method

.method protected populateTickerView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4119
    return-void
.end method

.method public purgeResources()V
    .locals 0

    .prologue
    .line 4113
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4089
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4090
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4091
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 4093
    :cond_0
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4094
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 4096
    :cond_1
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4008
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 4009
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 4010
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 4011
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 4014
    :cond_0
    return-void
.end method
