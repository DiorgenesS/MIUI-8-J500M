.class Lcom/android/server/usb/UsbPortManager$1;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$portInfo:Lcom/android/server/usb/UsbPortManager$PortInfo;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/usb/UsbPortManager$1;->val$portInfo:Lcom/android/server/usb/UsbPortManager$PortInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 595
    const-string v0, "UsbPortManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending intent : ACTION_USB_PORT_CHANGED, mUsbPort ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager$1;->val$portInfo:Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v2, v2, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mUsbPortStatus ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager$1;->val$portInfo:Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v2, v2, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method
