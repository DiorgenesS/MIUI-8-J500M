.class Lcom/android/server/desktop/DesktopService$2;
.super Ljava/lang/Object;
.source "DesktopService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktop/DesktopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method constructor <init>(Lcom/android/server/desktop/DesktopService;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$2;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$2;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateExternalMonitorStatus()V
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$1200(Lcom/android/server/desktop/DesktopService;)V

    .line 474
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 483
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$2;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateExternalMonitorStatus()V
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$1200(Lcom/android/server/desktop/DesktopService;)V

    .line 479
    return-void
.end method
