.class Landroid/os/DVFSHelper$ModelGRQ;
.super Landroid/os/DVFSHelper$ModelHRQ;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRQ"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const v0, 0x17bb00

    .line 2353
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRQ;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelHRQ;-><init>(Landroid/os/DVFSHelper;)V

    .line 2354
    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQ;->AMS_RESUME_ARM_FREQ:I

    .line 2355
    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQ;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2356
    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQ;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2357
    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQ;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2358
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2359
    return-void
.end method
