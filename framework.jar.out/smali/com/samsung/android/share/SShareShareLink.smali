.class public Lcom/samsung/android/share/SShareShareLink;
.super Ljava/lang/Object;
.source "SShareShareLink.java"


# static fields
.field public static final ACTION_REQ_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

.field private static final DEBUG:Z = false

.field private static final INTENT_ACTION_SHARELINK_SEND:Ljava/lang/String; = "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

.field private static final INTENT_ACTION_SHARELINK_TIP:Ljava/lang/String; = "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

.field public static final REQUEST_CODE_SIGNUP_REQ_AUTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SShareShareLink"

.field private static mEasySignUpCertificated:Z

.field private static mSSharingRecentContactExisted:Z

.field private static mShareLinkEnabled:Z


# instance fields
.field private final REMOTE_SHARE_SERVICE_ID:I

.field private defaultTextSize:I

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mIntent:Landroid/content/Intent;

.field private mOrigIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    .line 38
    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mSSharingRecentContactExisted:Z

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p5, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/share/SShareShareLink;->REMOTE_SHARE_SERVICE_ID:I

    .line 52
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 55
    iput-object p4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    .line 56
    iput-object p5, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkEasySignUpCertificated()V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkShareLinkEnabled()V

    .line 60
    return-void
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    .line 187
    const-string v0, "SShareShareLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .prologue
    .line 211
    const v1, 0x3f99999a    # 1.2f

    .line 212
    .local v1, "maxScale":F
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 214
    .local v0, "currentFontScale":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 215
    int-to-float v3, p2

    div-float v2, v3, v0

    .line 216
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    .end local v2    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private checkSSharingRecentContactExisted()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/SimpleSharingManager;->isRecentContactExisted(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mSSharingRecentContactExisted:Z

    .line 192
    const-string v0, "SShareShareLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentContactExisted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareShareLink;->mSSharingRecentContactExisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method private checkShareLinkEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 196
    sget-boolean v1, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .line 199
    .local v0, "retVal":I
    const-string v1, "SShareShareLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eq v0, v4, :cond_0

    .line 201
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    .line 208
    .end local v0    # "retVal":I
    :goto_0
    return-void

    .line 203
    .restart local v0    # "retVal":I
    :cond_0
    sput-boolean v4, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    goto :goto_0

    .line 206
    .end local v0    # "retVal":I
    :cond_1
    sput-boolean v4, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public getShareLinkIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 125
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 126
    .local v3, "targetIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    .line 129
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .line 137
    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 138
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isShareLinkEnabled()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return v0
.end method

.method public setShareLinkView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 66
    iget-object v5, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const v6, 0x102049c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "mShareLinkView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 68
    new-instance v5, Lcom/samsung/android/share/SShareShareLink$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/share/SShareShareLink$1;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const v6, 0x102049e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "mShareLinkTipBtn":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 78
    new-instance v5, Lcom/samsung/android/share/SShareShareLink$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/share/SShareShareLink$2;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v5, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.hovering_ui"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "hoverLevel":I
    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    .line 87
    invoke-virtual {v2, v7}, Landroid/view/View;->setHoverPopupType(I)V

    .line 88
    invoke-virtual {v2, v7}, Landroid/view/View;->setLongClickable(Z)V

    .line 92
    .end local v1    # "hoverLevel":I
    :cond_1
    if-eqz v3, :cond_3

    .line 93
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, "titleText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050248

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    .line 95
    if-eqz v4, :cond_2

    .line 96
    iget v5, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 99
    :cond_2
    const v5, 0x1020015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "descText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    .line 101
    if-eqz v0, :cond_3

    .line 102
    iget v5, p0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 105
    .end local v0    # "descText":Landroid/widget/TextView;
    .end local v4    # "titleText":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method public shareLinkItemClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareShareLink;->isEasySignUpCertificated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareShareLink;->getShareLinkIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 169
    :goto_1
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "SShareShareLink"

    const-string/jumbo v4, "shareLinkItemClick : startActivity failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const-string v3, "fromOOBE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v3, "agreeMarketing"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v3, "AuthRequestFrom"

    const-string/jumbo v4, "shareVia"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 165
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SShareShareLink"

    const-string v4, "Easy signUp agent is not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shareLinkTipClick()V
    .locals 4

    .prologue
    .line 175
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SShareShareLink"

    const-string/jumbo v3, "shareLinkTipClick : startActivity failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
