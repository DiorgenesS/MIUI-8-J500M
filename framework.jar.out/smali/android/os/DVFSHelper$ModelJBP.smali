.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/16 v4, 0x1f4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2149
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 2150
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    .line 2151
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_ARM_FREQ:I

    .line 2152
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BUS_FREQ:I

    .line 2153
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 2154
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    .line 2155
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2156
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BUS_FREQ:I

    .line 2157
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2158
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2159
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BUS_FREQ:I

    .line 2160
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 2161
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 2162
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GROUP_PLAY_ARM_FREQ:I

    .line 2163
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_ARM_FREQ:I

    .line 2164
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_GPU_FREQ:I

    .line 2165
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_BUS_FREQ:I

    .line 2166
    sput v3, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 2167
    sput v3, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    .line 2168
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_ARM_FREQ:I

    .line 2169
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_GPU_FREQ:I

    .line 2170
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_BUS_FREQ:I

    .line 2171
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_CPU_CORE:I

    .line 2172
    const/16 v0, 0x12c

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2173
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_ARM_FREQ:I

    .line 2174
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_GPU_FREQ:I

    .line 2175
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_BUS_FREQ:I

    .line 2176
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_CPU_CORE:I

    .line 2177
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_FLING_ARM_FREQ:I

    .line 2178
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2179
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2180
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->ROTATION_ARM_FREQ:I

    .line 2181
    const-string v0, "NONE"

    iput-object v0, p0, Landroid/os/DVFSHelper$ModelJBP;->PLUS_CGB_FREQ:Ljava/lang/String;

    .line 2182
    return-void
.end method
