.class Lcom/android/server/connectivity/PermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.extra.user_handle"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "user":I
    const-string v5, "android.intent.extra.UID"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, "appUid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 86
    .local v1, "appData":Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "appName":Ljava/lang/String;
    :goto_0
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V
    invoke-static {v5, v4}, Lcom/android/server/connectivity/PermissionMonitor;->access$000(Lcom/android/server/connectivity/PermissionMonitor;I)V

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 86
    .end local v2    # "appName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .restart local v2    # "appName":Ljava/lang/String;
    :cond_2
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V
    invoke-static {v5, v4}, Lcom/android/server/connectivity/PermissionMonitor;->access$100(Lcom/android/server/connectivity/PermissionMonitor;I)V

    goto :goto_1

    .line 92
    :cond_3
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;I)V
    invoke-static {v5, v2, v3}, Lcom/android/server/connectivity/PermissionMonitor;->access$200(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;I)V

    goto :goto_1

    .line 94
    :cond_4
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(I)V
    invoke-static {v5, v3}, Lcom/android/server/connectivity/PermissionMonitor;->access$300(Lcom/android/server/connectivity/PermissionMonitor;I)V

    goto :goto_1
.end method
