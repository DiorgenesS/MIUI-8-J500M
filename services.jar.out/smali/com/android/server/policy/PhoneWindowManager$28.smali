.class Lcom/android/server/policy/PhoneWindowManager$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 10242
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 10244
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10246
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPresentationFlag:Z

    .line 10247
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    if-eqz v0, :cond_0

    .line 10248
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 10249
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 10250
    const-string v0, "WindowManager"

    const-string v1, "SmartDock Presentation Stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10253
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 10254
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 10255
    return-void
.end method
