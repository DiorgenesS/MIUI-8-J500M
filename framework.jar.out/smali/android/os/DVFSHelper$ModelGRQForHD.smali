.class Landroid/os/DVFSHelper$ModelGRQForHD;
.super Landroid/os/DVFSHelper$ModelGRQ;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRQForHD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0xfd200

    .line 2373
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRQForHD;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelGRQ;-><init>(Landroid/os/DVFSHelper;)V

    .line 2374
    const v0, 0x143700

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForHD;->AMS_RESUME_ARM_FREQ:I

    .line 2375
    const v0, 0x122a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForHD;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2376
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQForHD;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2377
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQForHD;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2378
    const/16 v0, 0x300

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForHD;->AMS_RESUME_BUS_FREQ:I

    .line 2379
    return-void
.end method
