.class Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 6
    .param p1, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string/jumbo v3, "talkbackOn"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1fffff

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;I)V

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "enabledServices":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "enabledServicesSetting":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enabled_accessibility_services"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "talk_back_off":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 390
    .end local v0    # "enabledServices":Ljava/lang/String;
    .end local v1    # "enabledServicesSetting":Ljava/lang/String;
    .end local v2    # "talk_back_off":Landroid/content/Intent;
    :cond_0
    return-void

    .line 378
    .restart local v0    # "enabledServices":Ljava/lang/String;
    .restart local v1    # "enabledServicesSetting":Ljava/lang/String;
    :cond_1
    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 393
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 396
    return-void
.end method
