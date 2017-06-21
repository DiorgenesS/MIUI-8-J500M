.class public Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/IDisplaySolutionManager$Stub;
.source "DisplaySolutionManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplaySolutionManagerService"


# instance fields
.field private final COLOR_BLIND_OFF:Ljava/lang/String;

.field private final COLOR_BLIND_ON:Ljava/lang/String;

.field private final DEBUG:Z

.field private final HDR_EFFECT_OFF:Ljava/lang/String;

.field private final HDR_EFFECT_ON_1:Ljava/lang/String;

.field private final HDR_EFFECT_ON_2:Ljava/lang/String;

.field private final LDU_OFF:Ljava/lang/String;

.field private final LDU_ON_1:Ljava/lang/String;

.field private final LDU_ON_2:Ljava/lang/String;

.field private final LDU_ON_3:Ljava/lang/String;

.field private final LDU_ON_4:Ljava/lang/String;

.field private final LDU_ON_5:Ljava/lang/String;

.field private final REAL_HDR_OFF:Ljava/lang/String;

.field private final REAL_HDR_ON:Ljava/lang/String;

.field mColorBlind:Z

.field private final mContext:Landroid/content/Context;

.field mHDREffect:Z

.field mLDU:Z

.field private final mLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealHDR:Z

.field private mSettingValue:Ljava/lang/String;

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field private temp_COLOR_BLIND_ON:Ljava/lang/String;

.field private temp_HDR_EFFECT_ON:Ljava/lang/String;

.field private temp_LDU_ON:Ljava/lang/String;

.field private temp_REAL_HDR_ON:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager$Stub;-><init>()V

    .line 57
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->DEBUG:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 74
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    .line 75
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    .line 76
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    .line 77
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    .line 83
    const-string v0, "color_blind_on"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    .line 84
    const-string v0, "color_blind_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "real_hdr_on"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "real_hdr_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "ldu_on_1"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_1:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "ldu_on_2"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_2:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "ldu_on_3"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_3:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "ldu_on_4"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_4:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "ldu_on_5"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_5:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "ldu_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_OFF:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "hdr_effect_on_1"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->HDR_EFFECT_ON_1:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "hdr_effect_on_2"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->HDR_EFFECT_ON_2:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "hdr_effect_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->HDR_EFFECT_OFF:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 100
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 104
    return-void
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVGalleryEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVideoEnable:Z

    return v0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 125
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVGalleryEnable:Z

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 135
    .local v0, "mToken":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v3, "color_blind_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v3, "color_blind_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v3, "color_blind_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    .line 167
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    if-eqz v1, :cond_d

    .line 168
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mColorBlind"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fb70a3d    # 1.43f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 212
    :cond_2
    :goto_1
    monitor-exit v2

    .line 213
    return-void

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v3, "color_blind_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    goto :goto_0

    .line 212
    .end local v0    # "mToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 144
    .restart local v0    # "mToken":Landroid/os/IBinder;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "real_hdr_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "real_hdr_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "real_hdr_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_0

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "real_hdr_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_0

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "ldu_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_0

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_0

    .line 158
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_on_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_on_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_0

    .line 162
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_0

    .line 171
    :cond_d
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v1, :cond_e

    .line 172
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mRealHDR"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fb70a3d    # 1.43f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    .line 175
    :cond_e
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    if-eqz v1, :cond_13

    .line 176
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 177
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mLDU_1"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3f8e147b    # 1.11f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    .line 180
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 181
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mLDU_2"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3f947ae1    # 1.16f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    .line 184
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 185
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mLDU_3"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fa28f5c    # 1.27f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    .line 188
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 189
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mLDU_4"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fb0a3d7    # 1.38f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    .line 192
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mLDU_5"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fb70a3d    # 1.43f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    .line 197
    :cond_13
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    if-eqz v1, :cond_15

    .line 198
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_on_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 199
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fb70a3d    # 1.43f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 200
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mHDREffect_1"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_on_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3fb70a3d    # 1.43f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 204
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor mHDREffect_2"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 208
    :cond_15
    const-string v1, "DisplaySolutionManagerService"

    const-string v3, "BrightnessScaleFactor DEFAULT"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public setVideoModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 118
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVideoEnable:Z

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
