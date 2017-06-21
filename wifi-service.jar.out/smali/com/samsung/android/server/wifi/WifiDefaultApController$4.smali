.class Lcom/samsung/android/server/wifi/WifiDefaultApController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 342
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagBootCompleted:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    if-nez v2, :cond_2

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$400()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$400()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    .line 345
    const-string v0, ""

    .line 346
    .local v0, "mMCCMNC":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 347
    .local v1, "simState_int":I
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 349
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 350
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiProfileLoaded()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1100(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 351
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-nez v2, :cond_1

    .line 352
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    .line 359
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 361
    :cond_1
    sput-boolean v6, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    .line 394
    .end local v0    # "mMCCMNC":Ljava/lang/String;
    .end local v1    # "simState_int":I
    :cond_2
    :goto_1
    return-void

    .line 357
    .restart local v0    # "mMCCMNC":Ljava/lang/String;
    .restart local v1    # "simState_int":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    goto :goto_0

    .line 362
    :cond_4
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 365
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiProfileLoaded()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1100(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 367
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getGeneralNwInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 368
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getPrevNwInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 369
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkNetworkName()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1600(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 371
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 372
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    const-string v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMatchedPrevNetworkName =("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_2
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-eqz v2, :cond_5

    .line 379
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeChangedWifiProfile()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$800(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    .line 381
    :cond_5
    const-string v2, ""

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1800()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900()Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-nez v2, :cond_8

    .line 382
    :cond_6
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 383
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 384
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    .line 388
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 390
    :cond_8
    sput-boolean v6, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    .line 391
    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1902(Z)Z

    goto/16 :goto_1

    .line 375
    :cond_9
    const-string v2, ""

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    const-string v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMatchedPrevNetworkName =("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 386
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    goto :goto_3
.end method
