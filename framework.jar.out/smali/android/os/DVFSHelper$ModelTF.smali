.class Landroid/os/DVFSHelper$ModelTF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelTF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    const/16 v2, 0x210

    const/4 v1, 0x4

    .line 2285
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelTF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2286
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->LIST_SCROLL_ARM_FREQ:I

    .line 2287
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->AMS_RESUME_ARM_FREQ:I

    .line 2288
    iput v1, p0, Landroid/os/DVFSHelper$ModelTF;->AMS_RESUME_CPU_CORE:I

    .line 2289
    const/16 v0, 0x1cc

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->AMS_RESUME_BUS_FREQ:I

    .line 2290
    const/16 v0, 0x296

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->APP_LAUNCH_BUS_FREQ:I

    .line 2291
    iput v3, p0, Landroid/os/DVFSHelper$ModelTF;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 2292
    const v0, 0x258000

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2293
    iput v2, p0, Landroid/os/DVFSHelper$ModelTF;->GALLERY_TOUCH_BUS_FREQ:I

    .line 2294
    iput v3, p0, Landroid/os/DVFSHelper$ModelTF;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2295
    const v0, 0x286e00

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2296
    iput v2, p0, Landroid/os/DVFSHelper$ModelTF;->LAUNCHER_TOUCH_BUS_FREQ:I

    .line 2297
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 2298
    sput v1, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    .line 2299
    return-void
.end method
