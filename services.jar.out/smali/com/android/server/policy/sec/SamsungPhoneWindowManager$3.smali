.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 531
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 534
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    .line 536
    :cond_0
    return-void
.end method
