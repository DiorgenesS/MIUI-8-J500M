.class public Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemOverflowMenuButton"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeBackground:Landroid/view/ViewGroup;

.field private mBadgeText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

.field private mFirstAnimBadgeText:Landroid/view/animation/Animation;

.field private mPerformedBadgeAnimation:Z

.field private mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

.field private mUpdateAnimBadgeText:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1139
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1140
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1133
    iput-boolean v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    .line 1141
    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    .line 1143
    const/4 v1, 0x0

    .line 1144
    .local v1, "innerView":Landroid/view/View;
    # getter for: Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowText;

    .end local v1    # "innerView":Landroid/view/View;
    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 1149
    .restart local v1    # "innerView":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1153
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x10900fe

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    .line 1154
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    .line 1155
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->addView(Landroid/view/View;)V

    .line 1156
    return-void

    .line 1147
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowImage;

    .end local v1    # "innerView":Landroid/view/View;
    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .restart local v1    # "innerView":Landroid/view/View;
    goto :goto_0
.end method

.method static synthetic access$1302(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
    .param p1, "x1"    # Z

    .prologue
    .line 1127
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    return p1
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    return v0
.end method

.method semInvalidateBadge(II)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1186
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    if-lez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1193
    if-nez p1, :cond_3

    .line 1194
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1195
    iput-boolean v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    goto :goto_0

    .line 1190
    :cond_1
    const-string v0, "N"

    goto :goto_1

    .line 1191
    :cond_2
    const/16 v0, 0x8

    goto :goto_2

    .line 1199
    :cond_3
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    .line 1200
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    .line 1201
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeText:Landroid/view/animation/Animation;

    .line 1202
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$1;

    invoke-direct {v1, p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1221
    :cond_4
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 1222
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    .line 1223
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mContext:Landroid/content/Context;

    const v1, 0x10a009b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeText:Landroid/view/animation/Animation;

    .line 1224
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;

    invoke-direct {v1, p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;-><init>(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1243
    :cond_5
    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    .line 1244
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z

    if-eqz v0, :cond_6

    .line 1245
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1246
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeText:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1248
    :cond_6
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeBackground:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1249
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mUpdateAnimBadgeText:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1253
    :cond_7
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeBackground:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1254
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mFirstAnimBadgeText:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method semSetBadgeNumber(I)V
    .locals 7
    .param p1, "number"    # I

    .prologue
    const/16 v0, 0x63

    .line 1170
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1171
    if-le p1, v0, :cond_1

    .line 1173
    .local v0, "mBadgeNumber":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 1175
    .local v1, "mBadgeWidth":I
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1176
    .local v2, "mLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1178
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1180
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    if-lez p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1182
    .end local v0    # "mBadgeNumber":I
    .end local v1    # "mBadgeWidth":I
    .end local v2    # "mLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    :cond_1
    move v0, p1

    .line 1171
    goto :goto_0

    .line 1180
    .restart local v0    # "mBadgeNumber":I
    .restart local v1    # "mBadgeWidth":I
    .restart local v2    # "mLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method
