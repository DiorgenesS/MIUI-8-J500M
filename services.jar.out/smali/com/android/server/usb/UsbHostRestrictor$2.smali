.class Lcom/android/server/usb/UsbHostRestrictor$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 291
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUsbHostRestrictionReceiver Receiver onReceive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$100()Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    :cond_0
    const-string v3, "UsbHostRestrictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail mUsbHostRestriction - isSIMBlock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$100()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isUPSMBlock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.sec.enterprise.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 301
    .local v2, "reason":I
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "nodeValue":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 304
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUsbHostRestrictionReceiver : reason - ALLOW "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$502(Z)Z

    .line 306
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "OFF"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    if-ne v2, v6, :cond_4

    .line 308
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUsbHostRestrictionReceiver : reason - DISALLOW "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    # setter for: Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$502(Z)Z

    .line 310
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "ON_HOST_MDM"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_4
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUsbHostRestrictionReceiver reason is unknown."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_5
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUsbHostRestrictionReceiver Cannot write for USB DISABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
