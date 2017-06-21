.class Landroid/os/DVFSHelper$Model;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model"
.end annotation


# instance fields
.field protected AMS_RESUME_ARM_FREQ:I

.field protected AMS_RESUME_BUS_FREQ:I

.field protected AMS_RESUME_CPU_CORE:I

.field protected AMS_RESUME_GPU_FREQ:I

.field protected APP_LAUNCH_ARM_FREQ:I

.field protected APP_LAUNCH_BUS_FREQ:I

.field protected APP_LAUNCH_CPU_CORE:I

.field protected APP_LAUNCH_GPU_FREQ:I

.field protected BROWSER_FLING_ARM_FREQ:I

.field protected BROWSER_TOUCH_ARM_FREQ:I

.field protected BROWSER_TOUCH_BOOST_TIMEOUT:I

.field protected BROWSER_TOUCH_BUS_FREQ:I

.field protected DEVICE_WAKEUP_ARM_FREQ:I

.field protected GALLERY_TOUCH_ARM_FREQ:I

.field protected GALLERY_TOUCH_BOOST_TIMEOUT:I

.field protected GALLERY_TOUCH_BUS_FREQ:I

.field protected GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

.field protected GROUP_PLAY_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_BOOST_TIMEOUT:I

.field protected LAUNCHER_TOUCH_BUS_FREQ:I

.field protected LAUNCHER_TOUCH_CPU_CORE:I

.field protected LAUNCHER_TOUCH_GPU_FREQ:I

.field protected LIST_SCROLL_ARM_FREQ:I

.field protected LIST_SCROLL_BUS_FREQ:I

.field protected LIST_SCROLL_GPU_FREQ:I

.field protected PLUS_CGB_FREQ:Ljava/lang/String;

.field protected ROTATION_ARM_FREQ:I

.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method private constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 0

    .prologue
    .line 1910
    iput-object p1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/DVFSHelper;
    .param p2, "x1"    # Landroid/os/DVFSHelper$1;

    .prologue
    .line 1910
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;)V

    return-void
.end method


# virtual methods
.method public getAMSResumeBUSFreq()I
    .locals 1

    .prologue
    .line 2028
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    return v0
.end method

.method public getAMSResumeCPUCore()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2032
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 2033
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_0

    .line 2034
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v0, v0, v2

    .line 2039
    :goto_0
    return v0

    .line 2036
    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    goto :goto_0

    .line 2039
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAMSResumeCPUFreq()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 2095
    iget-object v2, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->REGION_JPN:Z
    invoke-static {v2}, Landroid/os/DVFSHelper;->access$100(Landroid/os/DVFSHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "tf"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "hrl"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "hrq"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2097
    :cond_1
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v0

    .line 2116
    :cond_2
    :goto_0
    return v0

    .line 2098
    :cond_3
    const-string v2, "MSM8939"

    # getter for: Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;
    invoke-static {}, Landroid/os/DVFSHelper;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "MSM8929"

    # getter for: Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;
    invoke-static {}, Landroid/os/DVFSHelper;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "msm8992"

    # getter for: Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;
    invoke-static {}, Landroid/os/DVFSHelper;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2100
    :cond_4
    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gtz v2, :cond_5

    move v0, v1

    .line 2101
    goto :goto_0

    .line 2103
    :cond_5
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v0

    goto :goto_0

    .line 2106
    :cond_6
    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gez v2, :cond_7

    move v0, v1

    .line 2107
    goto :goto_0

    .line 2109
    :cond_7
    iget-object v2, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I

    move-result v0

    .line 2110
    .local v0, "freq":I
    if-gtz v0, :cond_8

    move v0, v1

    .line 2111
    goto :goto_0

    .line 2113
    :cond_8
    iget v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gt v0, v1, :cond_2

    .line 2116
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAMSResumeGPUFreq()I
    .locals 1

    .prologue
    .line 2024
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    return v0
.end method

.method public getAppLaunchBUSFreq()I
    .locals 1

    .prologue
    .line 2059
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_BUS_FREQ:I

    return v0
.end method

.method public getAppLaunchCPUCore()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2063
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I
    invoke-static {v1}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I
    invoke-static {v1}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2064
    iget v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_CPU_CORE:I

    if-nez v1, :cond_1

    .line 2065
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I
    invoke-static {v1}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    aget v0, v1, v0

    .line 2071
    :cond_0
    :goto_0
    return v0

    .line 2066
    :cond_1
    iget v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_CPU_CORE:I

    iget-object v2, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I
    invoke-static {v2}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v2

    aget v2, v2, v0

    if-le v1, v2, :cond_2

    .line 2067
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNumForSSRM:[I
    invoke-static {v1}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    aget v0, v1, v0

    goto :goto_0

    .line 2069
    :cond_2
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_CPU_CORE:I

    goto :goto_0
.end method

.method public getAppLaunchCPUFreq()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2043
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2044
    iget v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_ARM_FREQ:I

    if-gez v1, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return v0

    .line 2047
    :cond_1
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_ARM_FREQ:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_ARM_FREQ:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAppLaunchGPUFreq()I
    .locals 1

    .prologue
    .line 2055
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_GPU_FREQ:I

    return v0
.end method

.method public getBrowserFlingCpuFreq()I
    .locals 1

    .prologue
    .line 2091
    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    return v0
.end method

.method public getBrowserTouchBUSFreq()I
    .locals 1

    .prologue
    .line 2020
    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_TOUCH_BUS_FREQ:I

    return v0
.end method

.method public getBrowserTouchCPUFreq()I
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getDeviceWakeupCPUFreq()I
    .locals 3

    .prologue
    .line 2134
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$400(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    if-gez v0, :cond_1

    .line 2135
    :cond_0
    const/4 v0, -0x1

    .line 2141
    :goto_0
    return v0

    .line 2137
    :cond_1
    iget v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I
    invoke-static {v1}, Landroid/os/DVFSHelper;->access$400(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-le v0, v1, :cond_3

    .line 2139
    :cond_2
    invoke-virtual {p0}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v0

    goto :goto_0

    .line 2141
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    goto :goto_0
.end method

.method public getGalleryTouchBUSFreq()I
    .locals 1

    .prologue
    .line 1990
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_BUS_FREQ:I

    return v0
.end method

.method public getGalleryTouchCPUFreq()I
    .locals 1

    .prologue
    .line 1986
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchBUSFreq()I
    .locals 1

    .prologue
    .line 2002
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BUS_FREQ:I

    return v0
.end method

.method public getLauncherTouchCPUCore()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2006
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 2007
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_CPU_CORE:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_0

    .line 2008
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v0, v0, v2

    .line 2012
    :goto_0
    return v0

    .line 2010
    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_CPU_CORE:I

    goto :goto_0

    .line 2012
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLauncherTouchCPUFreq()I
    .locals 1

    .prologue
    .line 1994
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchGPUFreq()I
    .locals 1

    .prologue
    .line 1998
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    return v0
.end method

.method public getListScrollBUSFreq()I
    .locals 1

    .prologue
    .line 2083
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_BUS_FREQ:I

    return v0
.end method

.method public getListScrollCPUFreq()I
    .locals 1

    .prologue
    .line 2075
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    return v0
.end method

.method public getListScrollGPUFreq()I
    .locals 1

    .prologue
    .line 2079
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_GPU_FREQ:I

    return v0
.end method

.method public getPlusFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->PLUS_CGB_FREQ:Ljava/lang/String;

    return-object v0
.end method

.method public getRotationCPUFreq()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2122
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2123
    iget v1, p0, Landroid/os/DVFSHelper$Model;->ROTATION_ARM_FREQ:I

    if-gez v1, :cond_1

    .line 2130
    :cond_0
    :goto_0
    return v0

    .line 2126
    :cond_1
    iget v0, p0, Landroid/os/DVFSHelper$Model;->ROTATION_ARM_FREQ:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper$Model;->ROTATION_ARM_FREQ:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    goto :goto_0
.end method

.method public getShareMusicCPUFreq()I
    .locals 1

    .prologue
    .line 2087
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    return v0
.end method

.method public getTimeoutForAction(Ljava/lang/String;)I
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1969
    const-string v0, "Launcher_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1978
    :goto_0
    return v0

    .line 1971
    :cond_0
    const-string v0, "Gallery_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1972
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    goto :goto_0

    .line 1973
    :cond_1
    const-string v0, "Gallery_touch_tail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1974
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    goto :goto_0

    .line 1975
    :cond_2
    const-string v0, "Browser_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1976
    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    goto :goto_0

    .line 1978
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
