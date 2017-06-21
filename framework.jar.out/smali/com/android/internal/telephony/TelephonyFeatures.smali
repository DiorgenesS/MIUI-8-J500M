.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field static final NTCTYPE_COUNTRY:I = 0x3

.field static final NTCTYPE_MAINOPERATOR:I = 0x0

.field static final NTCTYPE_OPERATORTYPE:I = 0x2

.field static final NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final NTC_FEATURE_ALLOW_OTASP_EXTENDED_DIGITS:I = 0x4

.field public static final NTC_FEATURE_CDMA_ROAMING_MODE:I = 0x9

.field public static final NTC_FEATURE_CHANGE_PDN_BY_ROAMSTATUS:I = 0x6

.field public static final NTC_FEATURE_CHECK_SID_FOR_PLMN:I = 0xa

.field public static final NTC_FEATURE_COMBINED_SIGNAL:I = 0x1

.field public static final NTC_FEATURE_CONNECTION_FOR_GOOGLEIMS:I = 0xf

.field public static final NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x7

.field public static final NTC_FEATURE_DISPLAY_CLI_USING_REC:I = 0xd

.field public static final NTC_FEATURE_ERI_ON_AP:I = 0xc

.field public static final NTC_FEATURE_ERI_ON_CP:I = 0xb

.field public static final NTC_FEATURE_FAKE_OPERATOR_NUMERIC:I = 0x8

.field public static final NTC_FEATURE_MAX:I = 0x12

.field public static final NTC_FEATURE_REMOVE_ECB_EXIT:I = 0x2

.field public static final NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS:I = 0xe

.field public static final NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x5

.field public static final NTC_FEATURE_USE_CSC_ERI:I = 0x11

.field public static final NTC_FEATURE_USE_GOOGLEIMS:I = 0x10

.field public static final NTC_FEATURE_VZW_GLOBAL_DIALING:I = 0x3

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SHIP_BUILD:Z

.field private static mConfigVolteRedialPolicy:Ljava/lang/String;

.field private static mCountry:Ljava/lang/String;

.field private static mCrossMappingSupported:Z

.field private static mImsStubEnabled:Z

.field private static mMainOperator:Ljava/lang/String;

.field public static final mMultiSimConfig:Ljava/lang/String;

.field private static mOperatorType:Ljava/lang/String;

.field public static final mProductModelName:Ljava/lang/String;

.field private static mSubOperator:Ljava/lang/String;

.field public static final mUsedLegacyIms:Z

.field private static mUsedNetworkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    const-string/jumbo v0, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    .line 47
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mProductModelName:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "persist.ril.ims.legacy.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    .line 50
    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    .line 56
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    .line 58
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    .line 60
    const-string v0, "EUR"

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigVolteRedialPolicy"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "persist.radio.enable.stubDebug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mImsStubEnabled:Z

    .line 63
    sput-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCrossMappingSupported:Z

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InitializeNetworkTypeCapability(I)Ljava/lang/String;
    .locals 4
    .param p0, "ntcType"    # I

    .prologue
    .line 128
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const-string v2, "EUR"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 132
    const-string v2, "GSM"

    .line 144
    :goto_0
    return-object v2

    .line 134
    :cond_0
    const-string v2, "EUR"

    goto :goto_0

    .line 136
    :cond_1
    const-string v2, "---"

    goto :goto_0

    .line 139
    :cond_2
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "ntcValue":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 141
    const-string v2, "---"

    goto :goto_0

    .line 144
    :cond_3
    aget-object v2, v1, p0

    goto :goto_0
.end method

.method public static TerminalbasedCWForCallreject(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 418
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "21403"

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 423
    goto :goto_0
.end method

.method public static alwaysTerminalbasedCW(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 394
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 398
    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "CHM"

    aput-object v4, v3, v1

    const-string v4, "CHC"

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {p0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, "iccType":I
    if-le v0, v2, :cond_0

    .line 405
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "46000"

    aput-object v4, v3, v1

    const-string v4, "46002"

    aput-object v4, v3, v2

    const-string v4, "46007"

    aput-object v4, v3, v5

    invoke-static {p0, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 406
    goto :goto_0
.end method

.method public static displaySpnRulePlmnAtAbout(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 325
    const-string v2, "CHN"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HKG"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TPE"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "52501"

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public static forceSetEpdgNetName()Z
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUR"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getImsStubEnabled()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mImsStubEnabled:Z

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMainOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getMultiSimConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string v0, ""

    .line 302
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNtcFeature(I)Z
    .locals 6
    .param p0, "ntcFeature"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    packed-switch p0, :pswitch_data_0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown NTC feature: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->loge(Ljava/lang/String;)V

    :cond_0
    :pswitch_0
    move v2, v3

    .line 245
    :cond_1
    :goto_0
    return v2

    .line 168
    :pswitch_1
    const-string/jumbo v4, "ro.config.combined_signal"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    .local v0, "combinedSignal":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    .line 171
    .local v1, "isVoiceCapable":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "USC"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 176
    .end local v0    # "combinedSignal":Z
    .end local v1    # "isVoiceCapable":Z
    :pswitch_2
    const-string v4, "SPR"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 181
    :pswitch_3
    const-string v4, "VZW"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 186
    :pswitch_4
    const-string v4, "USC"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 191
    :pswitch_5
    const-string v4, "SPR"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 198
    :pswitch_6
    const-string v4, "SPR"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 203
    :pswitch_7
    const-string v4, "SPR"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 208
    :pswitch_8
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 213
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 218
    :pswitch_a
    const-string v4, "VZW"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 223
    :pswitch_b
    const-string v4, "SPR"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "USC"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 230
    :pswitch_c
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getOperatorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsedNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "UNKNOWN"

    .line 288
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVoltePolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "UNKNOWN"

    .line 281
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isCrossMappingSupported()Z
    .locals 1

    .prologue
    .line 273
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCrossMappingSupported:Z

    return v0
.end method

.method public static varargs isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 7
    .param p0, "phoneId"    # I
    .param p1, "Numeric"    # [Ljava/lang/String;

    .prologue
    .line 306
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "iccOperatorNumeric":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 310
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    const/4 v5, 0x1

    .line 315
    .end local v4    # "x":Ljava/lang/String;
    :goto_1
    return v5

    .line 309
    .restart local v4    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v4    # "x":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static varargs isMainOperatorSpecific([Ljava/lang/String;)Z
    .locals 5
    .param p0, "Operator"    # [Ljava/lang/String;

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 264
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    const/4 v4, 0x1

    .line 268
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 263
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isUsaCdmaModel()Z
    .locals 2

    .prologue
    .line 249
    const-string v0, "USA"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CDM"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLB"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsaGlobalModel()Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "USA"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GLB"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 451
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method public static needToRunLteRoaming(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v1

    const-string v4, "KTT"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "LGT"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "KOO"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 375
    :cond_1
    const-string/jumbo v3, "ril.simtype"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "simType":Ljava/lang/String;
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "KTT"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "LGT"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 380
    goto :goto_0

    .line 381
    :cond_5
    const-string v3, "KOO"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 383
    goto :goto_0
.end method

.method public static needWaterproofSimTrayMsg()Z
    .locals 2

    .prologue
    .line 430
    const-string v0, "SAMSUNG-SM-G891A"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SM-G930U"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SM-N930V"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reInitialize()V
    .locals 8

    .prologue
    .line 105
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    .line 106
    .local v2, "oldMainOperator":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    .line 107
    .local v4, "oldSubOperator":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    .line 108
    .local v3, "oldOperatorType":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    .line 109
    .local v1, "oldCountry":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 110
    .local v5, "oldUsedNetworkType":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 112
    .local v0, "oldConfigVolteRedialPolicy":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    .line 113
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    .line 114
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    .line 115
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    .line 116
    const-string v6, "EUR"

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigVolteRedialPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - MainOperator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - SubOperator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - OperatorType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - Country: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - UsedNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - ConfigVolteRedialPolicy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static setFakeRoamingOrHome()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v2, v0

    const-string v3, "KTT"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "LGT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "KOO"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static showEpdgNetNameWhenEpdgRegiAndCSOos()Z
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUR"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showOnlyPlmnWhenSpnPlmnSame()Z
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
