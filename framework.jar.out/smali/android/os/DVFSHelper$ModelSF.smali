.class Landroid/os/DVFSHelper$ModelSF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelSF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2431
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelSF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2432
    const v0, 0x19f0a0

    iput v0, p0, Landroid/os/DVFSHelper$ModelSF;->AMS_RESUME_ARM_FREQ:I

    .line 2433
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelSF;->AMS_RESUME_CPU_CORE:I

    .line 2434
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelSF;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2435
    const v0, 0x122a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelSF;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2436
    const/16 v0, 0x1388

    iput v0, p0, Landroid/os/DVFSHelper$ModelSF;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2437
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2438
    const/16 v0, 0x1f4

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2439
    return-void
.end method
