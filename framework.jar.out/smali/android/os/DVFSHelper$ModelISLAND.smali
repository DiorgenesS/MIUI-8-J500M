.class Landroid/os/DVFSHelper$ModelISLAND;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelISLAND"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x10dc68

    .line 2503
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelISLAND;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2504
    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAND;->AMS_RESUME_ARM_FREQ:I

    .line 2505
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2506
    const v0, 0xc4c70

    iput v0, p0, Landroid/os/DVFSHelper$ModelISLAND;->LIST_SCROLL_ARM_FREQ:I

    .line 2507
    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAND;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2508
    const v0, 0x13d620

    iput v0, p0, Landroid/os/DVFSHelper$ModelISLAND;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2509
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2510
    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAND;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2511
    return-void
.end method
