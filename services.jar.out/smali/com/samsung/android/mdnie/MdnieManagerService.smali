.class public Lcom/samsung/android/mdnie/MdnieManagerService;
.super Lcom/samsung/android/mdnie/IMdnieManager$Stub;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/MdnieManagerService$1;,
        Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;,
        Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MdnieManagerService"


# instance fields
.field private final DEBUG:Z

.field private final NIGHT_MODE_MAX_INDEX:I

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurtainModeIsRunning:Z

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeDiabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mNightMode:Z

.field private mNightModeIndex:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mReadingScreenMode:I

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mVisionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;-><init>()V

    .line 72
    const-string/jumbo v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->DEBUG:Z

    .line 77
    iput-object v6, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 79
    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 80
    const-string/jumbo v2, "screen_mode_setting"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 82
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    .line 83
    const-string v2, "/sys/class/mdnie_1/mdnie_1/accessibility"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    .line 84
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    .line 85
    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    .line 87
    const-string v2, "/sys/class/mdnie/mdnie/negative"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    .line 88
    const-string v2, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    .line 89
    const-string v2, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    .line 90
    const-string v2, "/sys/class/mdnie/mdnie/night_mode"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    .line 92
    const/16 v2, 0xb

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieCustomized:Z

    .line 102
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mNightMode:Z

    .line 103
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mNightModeIndex:I

    .line 109
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    .line 110
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    .line 111
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    .line 112
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenCurtainEnabled:Z

    .line 113
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mNegativeColorEnabled:Z

    .line 114
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mColorBlindEnabled:Z

    .line 115
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    .line 116
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingModeEnabled:Z

    .line 117
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEbookScenarioEnabled:Z

    .line 118
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mBrowserScenarioEnabled:Z

    .line 120
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 122
    iput-object v6, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 516
    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    .line 126
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    .line 128
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 130
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    .line 133
    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingScreenMode:I

    .line 139
    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 150
    iput v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_automatic_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    .line 159
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_5

    .line 161
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    .line 168
    :goto_2
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    .line 170
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    .line 171
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    .line 172
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    .line 174
    iget v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->setScreenMode(I)Z

    .line 175
    iget v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->setContentMode(I)Z

    .line 177
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 179
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_0

    .line 180
    new-instance v2, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {v2, p1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 181
    :cond_0
    return-void

    .line 151
    :cond_1
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 152
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_0

    .line 153
    :cond_2
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 154
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_0

    .line 156
    :cond_3
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_0

    :cond_4
    move v2, v4

    .line 158
    goto :goto_1

    .line 165
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/mdnie/MdnieManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/mdnie/MdnieManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingScreenMode:I

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v2, 0x0

    .line 326
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 333
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 344
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 337
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 338
    :catch_2
    move-exception v1

    .line 339
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 348
    const/4 v2, 0x0

    .line 352
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 359
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 370
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 363
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 364
    :catch_2
    move-exception v1

    .line 365
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .locals 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 408
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 428
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 455
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    .line 424
    goto :goto_0

    .line 429
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 432
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    .line 436
    goto :goto_0

    .line 433
    :catch_2
    move-exception v1

    .line 434
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .locals 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 463
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 486
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 513
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    .line 482
    goto :goto_0

    .line 487
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 490
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    .line 494
    goto :goto_0

    .line 491
    :catch_2
    move-exception v1

    .line 492
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 487
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .locals 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 375
    const/4 v3, 0x0

    .line 376
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 378
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 391
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 401
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    .line 387
    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 395
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    .line 399
    goto :goto_0

    .line 396
    :catch_2
    move-exception v1

    .line 397
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getContentMode()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getScreenMode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public setAmoledACL(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_1

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const/4 p1, 0x1

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    const-string v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit v1

    .line 293
    :goto_0
    return v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 262
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 274
    .local v0, "pid":I
    const/4 v2, 0x0

    return v2
.end method

.method public setNightMode(ZI)Z
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 300
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 303
    .local v1, "pid":I
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 304
    .local v0, "mode_enable":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "str":Ljava/lang/String;
    return v4

    .end local v0    # "mode_enable":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 303
    goto :goto_0
.end method

.method public setScreenMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 243
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 255
    .local v0, "pid":I
    const/4 v2, 0x0

    return v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeAccessibilityMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "MdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeAccessibilityMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v0, :cond_0

    .line 714
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeColorBlind"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "MdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeColorBlind ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v0, :cond_0

    .line 575
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 650
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeEmergencyMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v1, "MdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeEmergencyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .line 657
    .local v0, "result":Z
    return v0

    .line 653
    .end local v0    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setmDNIeNegative(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeNegative"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "MdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeNegative ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v0, :cond_0

    .line 620
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 632
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeScreenCurtain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v1, "MdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeScreenCurtain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    .line 635
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .line 639
    .local v0, "result":Z
    return v0

    .line 635
    .end local v0    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
