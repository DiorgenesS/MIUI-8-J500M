.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 548
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v4

    .line 553
    .local v4, "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    .line 554
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    invoke-static {v6, v4}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    .line 609
    .end local v4    # "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const-string v6, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 560
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.spen_usp"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v5

    .line 562
    .local v5, "uspLevel":I
    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 563
    sput-boolean v9, Landroid/view/PointerIcon;->mThemeApplied:Z

    goto :goto_0

    .line 567
    .end local v5    # "uspLevel":I
    :cond_2
    sget-object v6, Landroid/app/UiModeManager;->ACTION_ENTER_KNOXDESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_KNOXDESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 582
    const-string/jumbo v6, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 583
    const-string v6, "cmd"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "callAction":Ljava/lang/String;
    const-string/jumbo v6, "device"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 585
    .local v2, "deviceID":I
    const-string v6, "InputManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received SARDEVICE_CP, callAction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deviceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cableConnection = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->cableConnection:I
    invoke-static {v8}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_3

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_0

    .line 588
    :cond_3
    const-string/jumbo v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 589
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z
    invoke-static {v6, v9}, Lcom/android/server/input/InputManagerService;->access$602(Lcom/android/server/input/InputManagerService;Z)Z

    .line 590
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v2, v9}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(IZ)I

    goto/16 :goto_0

    .line 593
    :cond_4
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z
    invoke-static {v6, v10}, Lcom/android/server/input/InputManagerService;->access$602(Lcom/android/server/input/InputManagerService;Z)Z

    .line 594
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v2, v10}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(IZ)I

    goto/16 :goto_0

    .line 599
    .end local v1    # "callAction":Ljava/lang/String;
    .end local v2    # "deviceID":I
    :cond_5
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 600
    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 601
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v3, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 602
    .local v3, "newDensity":I
    sget v6, Landroid/view/PointerIcon;->mCurrentDensity:I

    if-lez v6, :cond_0

    if-lez v3, :cond_0

    sget v6, Landroid/view/PointerIcon;->mCurrentDensity:I

    if-eq v6, v3, :cond_0

    .line 603
    sput v3, Landroid/view/PointerIcon;->mCurrentDensity:I

    .line 604
    sput-boolean v9, Landroid/view/PointerIcon;->mResolutionChangedForSpenIcon:Z

    .line 605
    sput-boolean v9, Landroid/view/PointerIcon;->mResolutionChangedForMouseIcon:Z

    goto/16 :goto_0
.end method
