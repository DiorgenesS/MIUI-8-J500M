.class Landroid/os/DVFSHelper$ModelGRQForFHD;
.super Landroid/os/DVFSHelper$ModelGRQ;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelGRQForFHD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x130b00

    .line 2363
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelGRQ;-><init>(Landroid/os/DVFSHelper;)V

    .line 2364
    const v0, 0x143700

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->AMS_RESUME_ARM_FREQ:I

    .line 2365
    const v0, 0x122a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2366
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2367
    iput v1, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2368
    const/16 v0, 0x3f9

    iput v0, p0, Landroid/os/DVFSHelper$ModelGRQForFHD;->AMS_RESUME_BUS_FREQ:I

    .line 2369
    return-void
.end method
