.class Landroid/os/DVFSHelper$ModelNOVEL;
.super Landroid/os/DVFSHelper$ModelISLAND;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelNOVEL"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    .line 2515
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelNOVEL;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelISLAND;-><init>(Landroid/os/DVFSHelper;)V

    .line 2516
    const v0, 0x123fe0

    iput v0, p0, Landroid/os/DVFSHelper$ModelNOVEL;->ROTATION_ARM_FREQ:I

    .line 2517
    return-void
.end method
