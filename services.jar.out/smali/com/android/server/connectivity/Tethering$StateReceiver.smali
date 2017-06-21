.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1480
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1484
    .local v6, "action":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1866
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1485
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1486
    .local v13, "cr":Landroid/content/ContentResolver;
    const-string v42, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_4

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v43

    monitor-enter v43

    .line 1488
    :try_start_0
    const-string/jumbo v42, "connected"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v39

    .line 1489
    .local v39, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const-string/jumbo v44, "rndis"

    const/16 v45, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1491
    if-eqz v39, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_2

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v44

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1494
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v44

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$902(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const-string/jumbo v44, "ncm"

    const/16 v45, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$1102(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1497
    if-eqz v39, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v44

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1500
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v44

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1502
    monitor-exit v43

    goto/16 :goto_0

    .end local v39    # "usbConnected":Z
    :catchall_0
    move-exception v42

    monitor-exit v43
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v42

    .line 1503
    :cond_4
    const-string v42, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_5

    .line 1504
    const-string/jumbo v42, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkInfo;

    .line 1506
    .local v26, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v42

    sget-object v43, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_0

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v42

    const/16 v43, 0x3

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1511
    .end local v26    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v42, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_0

    .line 1513
    :cond_6
    const-string v42, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1602(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v43

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1517
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1602(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v43

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1520
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1602(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v43

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1524
    :cond_9
    const-string v42, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-nez v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_15

    :cond_a
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2100()I

    move-result v42

    if-nez v42, :cond_15

    .line 1526
    const/16 v38, 0x0

    .line 1528
    .local v38, "type":Ljava/lang/String;
    :try_start_1
    const-string v42, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v38

    .line 1533
    if-eqz v38, :cond_b

    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_b
    if-eqz v38, :cond_0

    .line 1535
    const/16 v27, 0x0

    .line 1537
    .local v27, "numExtra":I
    :try_start_2
    const-string v42, "NUM"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v27

    .line 1542
    if-gez v27, :cond_c

    const/16 v27, 0x0

    .line 1543
    :cond_c
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1545
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2302(I)I

    .line 1546
    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->access$2202(I)I

    .line 1547
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "**number of client: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$2402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1552
    const-string v42, "VZW"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_f

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "statusbar"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/StatusBarManager;

    .line 1554
    .local v37, "statusBar":Landroid/app/StatusBarManager;
    const/16 v19, 0x0

    .line 1555
    .local v19, "iconId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "wifi"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/net/wifi/WifiManager;

    .line 1556
    .local v41, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v42

    if-eqz v42, :cond_e

    .line 1557
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    sget-object v43, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_d

    .line 1558
    sget-object v42, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v43, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    aget v19, v42, v43

    .line 1562
    :goto_1
    const-string/jumbo v42, "wifi_ap"

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    move/from16 v2, v19

    move/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1563
    const-string/jumbo v42, "wifi_ap"

    const/16 v43, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const v43, 0x10807eb

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1529
    .end local v19    # "iconId":I
    .end local v27    # "numExtra":I
    .end local v37    # "statusBar":Landroid/app/StatusBarManager;
    .end local v41    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v33

    .line 1530
    .local v33, "re":Ljava/lang/RuntimeException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 1538
    .end local v33    # "re":Ljava/lang/RuntimeException;
    .restart local v27    # "numExtra":I
    :catch_1
    move-exception v33

    .line 1539
    .restart local v33    # "re":Ljava/lang/RuntimeException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 1560
    .end local v33    # "re":Ljava/lang/RuntimeException;
    .restart local v19    # "iconId":I
    .restart local v37    # "statusBar":Landroid/app/StatusBarManager;
    .restart local v41    # "wm":Landroid/net/wifi/WifiManager;
    :cond_d
    sget-object v42, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v43

    aget v19, v42, v43

    goto :goto_1

    .line 1566
    :cond_e
    const-string v42, "Tethering"

    const-string v43, "Wifi Ap is not enabled."

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string/jumbo v42, "wifi_ap"

    const/16 v43, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1568
    const-string/jumbo v42, "wifi_ap"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1570
    .end local v19    # "iconId":I
    .end local v37    # "statusBar":Landroid/app/StatusBarManager;
    .end local v41    # "wm":Landroid/net/wifi/WifiManager;
    :cond_f
    const-string v42, "SPRINT"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const v43, 0x10807ea

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1572
    :cond_10
    const-string v42, "TMO"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_11

    const-string v42, "NEWCO"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_12

    .line 1574
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const v43, 0x10807e7

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1578
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const v43, 0x10807e9

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    .line 1580
    const-string v42, "ATT"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_13

    const-string v42, "AIO"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->readSalesCode()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    :cond_13
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1581
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "createMaxApNotification(), clients = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    # getter for: Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_14

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_0

    .line 1585
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1590
    .end local v27    # "numExtra":I
    .end local v38    # "type":Ljava/lang/String;
    :cond_15
    const-string v42, "ATT"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_16

    const-string v42, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_16

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1592
    :cond_16
    const-string v42, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_17

    .line 1593
    const-string/jumbo v42, "wifi_state"

    const/16 v43, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1594
    .local v9, "apState":I
    packed-switch v9, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 1605
    :pswitch_2
    const-string v42, "ATT"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1610
    .end local v9    # "apState":I
    :cond_17
    const-string v42, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1f

    .line 1611
    const/16 v28, 0x3

    .line 1613
    .local v28, "option":I
    :try_start_3
    const-string/jumbo v42, "wifiap_power_mode_alarm_option"

    const/16 v43, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v28

    .line 1618
    if-nez v28, :cond_1b

    .line 1621
    :try_start_4
    const-string/jumbo v42, "wifi_ap_plugged_type"

    move-object/from16 v0, v42

    invoke-static {v13, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v30

    .line 1625
    .local v30, "pluggedType":I
    :goto_2
    const-string v42, "TMO"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_18

    if-nez v30, :cond_0

    .line 1626
    :cond_18
    const-string/jumbo v42, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2600()I

    move-result v43

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1627
    .local v32, "powermode_value":I
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "ALARM_START : set "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " sec"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    if-eqz v32, :cond_19

    .line 1629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v16, v42, v44

    .line 1631
    .local v16, "expireTime":J
    new-instance v7, Landroid/content/Intent;

    const-string v42, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v42

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v7, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v42, "wifiap_power_mode_alarm_option"

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x0

    const/high16 v44, 0x10000000

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1635
    .local v29, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string v43, "alarm"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1636
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v42, 0x0

    move/from16 v0, v42

    move-wide/from16 v1, v16

    move-object/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1638
    const/16 v42, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2702(Z)Z

    .line 1639
    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2802(Z)Z

    goto/16 :goto_0

    .line 1614
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v16    # "expireTime":J
    .end local v29    # "pending":Landroid/app/PendingIntent;
    .end local v30    # "pluggedType":I
    .end local v32    # "powermode_value":I
    :catch_2
    move-exception v33

    .line 1615
    .restart local v33    # "re":Ljava/lang/RuntimeException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 1622
    .end local v33    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v14

    .line 1623
    .local v14, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v30, 0x0

    .restart local v30    # "pluggedType":I
    goto/16 :goto_2

    .line 1641
    .end local v14    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v32    # "powermode_value":I
    :cond_19
    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2800()Z

    move-result v42

    if-eqz v42, :cond_1a

    .line 1642
    new-instance v7, Landroid/content/Intent;

    const-string v42, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v42

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v42, "wifiap_power_mode_alarm_option"

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x0

    const/high16 v44, 0x10000000

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1646
    .restart local v29    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string v43, "alarm"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1647
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1649
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v29    # "pending":Landroid/app/PendingIntent;
    :cond_1a
    const/16 v42, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2802(Z)Z

    goto/16 :goto_0

    .line 1652
    .end local v30    # "pluggedType":I
    .end local v32    # "powermode_value":I
    :cond_1b
    const/16 v42, 0x4

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_1c

    .line 1653
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    if-nez v42, :cond_0

    .line 1655
    const-string v42, "Tethering"

    const-string v43, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v43

    const/16 v44, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1658
    :cond_1c
    const/16 v42, 0x1

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_1e

    .line 1659
    const-string v42, "Tethering"

    const-string v43, "ALARM_EXPIRE"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2702(Z)Z

    .line 1661
    const/16 v42, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2802(Z)Z

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "power"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/PowerManager;

    .line 1665
    .local v31, "pm":Landroid/os/PowerManager;
    const/16 v42, 0x1

    const-string v43, "MobileAPCloseService"

    move-object/from16 v0, v31

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v25

    .line 1667
    .local v25, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1672
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "wifi"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/net/wifi/WifiManager;

    .line 1674
    .restart local v41    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v40

    .line 1675
    .local v40, "wifiApState":I
    const-string/jumbo v42, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2600()I

    move-result v43

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1676
    .restart local v32    # "powermode_value":I
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "powermode_value = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    if-nez v42, :cond_1d

    const/16 v42, 0xd

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_1d

    if-eqz v32, :cond_1d

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "connectivity"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    .line 1679
    .local v23, "mCm":Landroid/net/ConnectivityManager;
    const-string v42, "Tethering"

    const-string v43, "--> data disable"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-string v42, "Tethering"

    const-string v43, "--> ap disable"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1685
    .end local v23    # "mCm":Landroid/net/ConnectivityManager;
    :cond_1d
    if-eqz v25, :cond_0

    .line 1687
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1688
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1668
    .end local v32    # "powermode_value":I
    .end local v40    # "wifiApState":I
    .end local v41    # "wm":Landroid/net/wifi/WifiManager;
    :catch_4
    move-exception v14

    .line 1669
    .local v14, "e":Ljava/lang/Throwable;
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1689
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v32    # "powermode_value":I
    .restart local v40    # "wifiApState":I
    .restart local v41    # "wm":Landroid/net/wifi/WifiManager;
    :catch_5
    move-exception v14

    .line 1690
    .restart local v14    # "e":Ljava/lang/Throwable;
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Cannot release wake lock ~~"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1693
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v25    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v31    # "pm":Landroid/os/PowerManager;
    .end local v32    # "powermode_value":I
    .end local v40    # "wifiApState":I
    .end local v41    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1e
    const/16 v42, 0x2

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 1694
    const-string v42, "Tethering"

    const-string v43, "ALARM_STOP"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2700()Z

    move-result v42

    if-nez v42, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2800()Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1696
    new-instance v7, Landroid/content/Intent;

    const-string v42, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v42

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v42, "wifiap_power_mode_alarm_option"

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x0

    const/high16 v44, 0x10000000

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1699
    .restart local v29    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string v43, "alarm"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1700
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1701
    const/16 v42, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2802(Z)Z

    goto/16 :goto_0

    .line 1704
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v28    # "option":I
    .end local v29    # "pending":Landroid/app/PendingIntent;
    :cond_1f
    const-string v42, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_20

    .line 1705
    const-string v42, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1706
    .restart local v38    # "type":Ljava/lang/String;
    if-eqz v38, :cond_0

    .line 1707
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string/jumbo v42, "no_data"

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "wifi"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/net/wifi/WifiManager;

    .line 1710
    .restart local v41    # "wm":Landroid/net/wifi/WifiManager;
    const-string v42, "Tethering"

    const-string v43, "--> ap disable"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 1714
    .end local v38    # "type":Ljava/lang/String;
    .end local v41    # "wm":Landroid/net/wifi/WifiManager;
    :cond_20
    const-string v42, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_29

    .line 1715
    const-string v42, "TMO"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_21

    const-string v42, "NEWCO"

    sget-object v43, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1717
    :cond_21
    const-string/jumbo v42, "level"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1718
    .local v24, "mLevel":I
    const-string/jumbo v42, "plugged"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 1719
    .restart local v30    # "pluggedType":I
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "lowBatteryThreshold = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0xf

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-nez v42, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_27

    :cond_22
    const/16 v42, 0xf

    move/from16 v0, v24

    move/from16 v1, v42

    if-gt v0, v1, :cond_27

    if-nez v30, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v42

    if-nez v42, :cond_27

    .line 1722
    const-string v42, "Tethering"

    const-string/jumbo v43, "showLowBatteryNotification"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)V

    .line 1731
    :cond_23
    :goto_4
    if-nez v30, :cond_24

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3300()Z

    move-result v42

    if-nez v42, :cond_25

    :cond_24
    if-eqz v30, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3300()Z

    move-result v42

    if-nez v42, :cond_0

    .line 1732
    :cond_25
    const-string/jumbo v42, "wifi_ap_plugged_type"

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1733
    new-instance v15, Landroid/content/Intent;

    const-string v42, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1734
    .local v15, "i":Landroid/content/Intent;
    const-string/jumbo v42, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_26

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1738
    :cond_26
    if-nez v30, :cond_28

    .line 1739
    const-string v42, "Tethering"

    const-string v43, "Unplugged"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/16 v42, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3302(Z)Z

    goto/16 :goto_0

    .line 1725
    .end local v15    # "i":Landroid/content/Intent;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v42

    if-eqz v42, :cond_23

    .line 1726
    const-string v42, "Tethering"

    const-string v43, "clearLowBatteryNotification"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_4

    .line 1755
    .restart local v15    # "i":Landroid/content/Intent;
    :cond_28
    const-string v42, "Tethering"

    const-string v43, "Plugged"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3302(Z)Z

    goto/16 :goto_0

    .line 1769
    .end local v15    # "i":Landroid/content/Intent;
    .end local v24    # "mLevel":I
    .end local v30    # "pluggedType":I
    :cond_29
    const-string v42, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2c

    .line 1770
    const-string v42, "Tethering"

    const-string v43, "Boot complete."

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$3402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v42

    if-nez v42, :cond_2a

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->access$3502(Lcom/android/server/connectivity/Tethering;Landroid/app/enterprise/knoxcustom/SystemManager;)Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 1778
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v42

    if-eqz v42, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v42

    if-eqz v42, :cond_2b

    const-string v42, "adb_enabled"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_2b

    .line 1782
    const-string v42, "Tethering"

    const-string v43, "Activate USB Net on boot up"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    .line 1787
    :cond_2b
    const-string/jumbo v42, "enabled"

    const-string v43, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v43

    invoke-static {v13, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1788
    const-string v42, "Tethering"

    const-string v43, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const-string/jumbo v42, "net.tether.always"

    const-string v43, "1"

    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    .line 1805
    :cond_2c
    const-string v42, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2f

    .line 1806
    const-string v42, "Tethering"

    const-string v43, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v42

    if-eqz v42, :cond_2e

    .line 1809
    const-string v42, "Tethering"

    const-string v43, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const-string/jumbo v42, "network_management"

    invoke-static/range {v42 .. v42}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1812
    .local v11, "b":Landroid/os/IBinder;
    invoke-static {v11}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v35

    .line 1813
    .local v35, "service":Landroid/os/INetworkManagementService;
    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1816
    .local v21, "ifaces":[Ljava/lang/String;
    :try_start_7
    invoke-interface/range {v35 .. v35}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v21

    .line 1822
    move-object/from16 v10, v21

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v20, v10, v18

    .line 1823
    .local v20, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_2d

    .line 1824
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1827
    .local v36, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v36, :cond_2d

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v42

    if-eqz v42, :cond_2d

    .line 1828
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 1822
    .end local v36    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2d
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1817
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v22    # "len$":I
    :catch_6
    move-exception v14

    .line 1818
    .local v14, "e":Ljava/lang/Exception;
    const-string v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1834
    .end local v11    # "b":Landroid/os/IBinder;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "ifaces":[Ljava/lang/String;
    .end local v35    # "service":Landroid/os/INetworkManagementService;
    :cond_2e
    const-string v42, "Tethering"

    const-string v43, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1837
    :cond_2f
    const-string v42, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    const-string v42, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 1839
    const-string v42, "Tethering"

    const-string v43, "Tethering Denied"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v21

    .line 1841
    .restart local v21    # "ifaces":[Ljava/lang/String;
    move-object/from16 v10, v21

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v20, v10, v18

    .line 1842
    .restart local v20    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_31

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "wifi"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/net/wifi/WifiManager;

    .line 1844
    .restart local v41    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1841
    .end local v41    # "wm":Landroid/net/wifi/WifiManager;
    :cond_30
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1845
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_34

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v42

    if-eqz v42, :cond_33

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothPan;

    .line 1848
    .local v12, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v12, :cond_32

    .line 1849
    const-string v42, "Tethering"

    const-string/jumbo v43, "setBluetoothTethering"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v12, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_7

    .line 1852
    :cond_32
    const-string v42, "Tethering"

    const-string v43, "bluetoothPan is null"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1855
    .end local v12    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_33
    const-string v42, "Tethering"

    const-string/jumbo v43, "mBluetoothPan is null"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1858
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v34

    .line 1859
    .local v34, "result":I
    if-eqz v34, :cond_30

    .line 1860
    const-string v42, "Tethering"

    const-string v43, "Tether off error"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1594
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
