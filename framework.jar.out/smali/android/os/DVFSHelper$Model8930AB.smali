.class Landroid/os/DVFSHelper$Model8930AB;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model8930AB"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x155cc0

    .line 2203
    iput-object p1, p0, Landroid/os/DVFSHelper$Model8930AB;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2204
    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/DVFSHelper$Model8930AB;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2205
    iput v1, p0, Landroid/os/DVFSHelper$Model8930AB;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2206
    iput v1, p0, Landroid/os/DVFSHelper$Model8930AB;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2207
    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$Model8930AB;->LIST_SCROLL_ARM_FREQ:I

    .line 2208
    return-void
.end method
