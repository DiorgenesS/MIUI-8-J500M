.class Lcom/android/server/updates/TzDataInstallReceiver$1;
.super Ljava/lang/Object;
.source "TzDataInstallReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/TzDataInstallReceiver;->rebootSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/TzDataInstallReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/updates/TzDataInstallReceiver;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/updates/TzDataInstallReceiver$1;->this$0:Lcom/android/server/updates/TzDataInstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/server/updates/TzDataInstallReceiver$1;->this$0:Lcom/android/server/updates/TzDataInstallReceiver;

    # getter for: Lcom/android/server/updates/TzDataInstallReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/updates/TzDataInstallReceiver;->access$000(Lcom/android/server/updates/TzDataInstallReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 73
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    const-string v1, "TzDataUpdate"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 74
    return-void
.end method
