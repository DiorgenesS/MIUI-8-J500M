.class Landroid/os/DVFSHelper$ModelMSM8953;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8953"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x156300

    .line 2787
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8953;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2788
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8953;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2789
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8953;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2790
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8953;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2791
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8953;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 2792
    const v0, 0xd7a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8953;->LIST_SCROLL_ARM_FREQ:I

    .line 2793
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8953;->AMS_RESUME_CPU_CORE:I

    .line 2794
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2795
    const v0, 0x13ec00

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8953;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2796
    return-void
.end method
