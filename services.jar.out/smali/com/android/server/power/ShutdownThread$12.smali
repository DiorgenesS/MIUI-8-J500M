.class Lcom/android/server/power/ShutdownThread$12;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V
    .locals 1

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$12;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$12;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$12;->val$endTime:J

    iput p5, p0, Lcom/android/server/power/ShutdownThread$12;->val$timeout:I

    iput-object p6, p0, Lcom/android/server/power/ShutdownThread$12;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 1286
    const-string v22, "ShutdownThread"

    const-string v23, "!@Start shutdown radios"

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string/jumbo v22, "sys.deviceOffReq"

    const-string v23, "1"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const-string/jumbo v22, "sys.radio.shutdown"

    const-string/jumbo v23, "true"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const/4 v12, 0x0

    .line 1297
    .local v12, "modemOff":Z
    const-string/jumbo v22, "nfc"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v14

    .line 1299
    .local v14, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v22, "phone"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 1301
    .local v16, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v22, "bluetooth_manager"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    .line 1305
    .local v5, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v22

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    :cond_0
    const/4 v4, 0x1

    .line 1308
    .local v4, "WiFiOff":Z
    :goto_0
    if-nez v4, :cond_1

    .line 1309
    const-string v22, "ShutdownThread"

    const-string v23, "Disabling WiFi..."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 1311
    .local v13, "msg":Landroid/os/Message;
    const/16 v22, 0xe6

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->what:I

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1315
    .end local v13    # "msg":Landroid/os/Message;
    :cond_1
    const-string v22, "ShutdownThread"

    const-string v23, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    if-eqz v14, :cond_2

    :try_start_0
    invoke-interface {v14}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    :cond_2
    const/4 v15, 0x1

    .line 1333
    .local v15, "nfcOff":Z
    :goto_1
    if-nez v15, :cond_3

    .line 1334
    const-string v22, "ShutdownThread"

    const-string v23, "Turning off NFC..."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 1348
    :try_start_1
    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1368
    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 1372
    .local v6, "bluetoothOff":Z
    if-eqz v16, :cond_5

    :try_start_2
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v22

    if-nez v22, :cond_f

    :cond_5
    const/16 v17, 0x1

    .line 1373
    .local v17, "radioOff":Z
    :goto_4
    if-nez v17, :cond_6

    .line 1374
    const-string v22, "ShutdownThread"

    const-string v23, "Turning off cellular radios..."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1382
    :cond_6
    :goto_5
    const-string v22, "ShutdownThread"

    const-string v23, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$endTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v8, v22, v24

    .line 1385
    .local v8, "delay":J
    :goto_6
    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-lez v22, :cond_c

    .line 1386
    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1600()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$timeout:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4028000000000000L    # 12.0

    mul-double v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$timeout:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    .line 1389
    .local v21, "status":I
    add-int/lit8 v21, v21, 0x6

    .line 1390
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Lcom/android/server/power/ShutdownThread;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, v23

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->access$1700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 1393
    .end local v21    # "status":I
    :cond_7
    const-string v22, "ShutdownThread"

    const-string v23, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    if-nez v17, :cond_8

    .line 1410
    :try_start_3
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v22

    if-nez v22, :cond_10

    const/16 v17, 0x1

    .line 1415
    :goto_7
    if-eqz v17, :cond_8

    .line 1416
    const-string v22, "ShutdownThread"

    const-string v23, "!@Radio turned off."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_8
    const-string v22, "ShutdownThread"

    const-string v23, "Skip wait for modem state off."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v12, 0x1

    .line 1433
    const-string/jumbo v22, "ril.modem.board"

    const-string v23, ""

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1434
    .local v7, "board":Ljava/lang/String;
    const-string v22, "XMM"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1435
    const-string/jumbo v22, "ril.deviceOffRes"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1436
    .local v18, "repPhone1Off":Ljava/lang/String;
    const-string v22, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1437
    const-string v22, "ShutdownThread"

    const-string v23, "!@PhoneOff req resp"

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/16 v17, 0x1

    .line 1442
    .end local v18    # "repPhone1Off":Ljava/lang/String;
    :cond_9
    const-string v22, "DCGS"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1443
    const-string/jumbo v22, "ril.deviceOffRes"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1444
    .local v19, "repPhoneOff":Ljava/lang/String;
    const-string/jumbo v22, "ril.deviceOffRes2"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1445
    .local v20, "repPhoneOff2":Ljava/lang/String;
    const-string v22, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1447
    const-string v22, "ShutdownThread"

    const-string v23, "!@PhoneOff req resp"

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/16 v17, 0x1

    .line 1454
    .end local v19    # "repPhoneOff":Ljava/lang/String;
    .end local v20    # "repPhoneOff2":Ljava/lang/String;
    :cond_a
    if-nez v15, :cond_b

    .line 1456
    :try_start_4
    invoke-interface {v14}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/4 v15, 0x1

    .line 1461
    :goto_8
    if-eqz v15, :cond_b

    .line 1462
    const-string v22, "ShutdownThread"

    const-string v23, "!@NFC turned off."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_b
    if-eqz v17, :cond_12

    if-eqz v6, :cond_12

    if-eqz v15, :cond_12

    if-eqz v12, :cond_12

    .line 1479
    const-string v22, "ShutdownThread"

    const-string v23, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$done:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput-boolean v24, v22, v23

    .line 1510
    .end local v7    # "board":Ljava/lang/String;
    :cond_c
    return-void

    .line 1305
    .end local v4    # "WiFiOff":Z
    .end local v6    # "bluetoothOff":Z
    .end local v8    # "delay":J
    .end local v15    # "nfcOff":Z
    .end local v17    # "radioOff":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1331
    .restart local v4    # "WiFiOff":Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1337
    :catch_0
    move-exception v11

    .line 1338
    .local v11, "ex":Landroid/os/RemoteException;
    const-string v22, "ShutdownThread"

    const-string v23, "RemoteException during NFC shutdown"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1339
    const/4 v15, 0x1

    .restart local v15    # "nfcOff":Z
    goto/16 :goto_2

    .line 1350
    .end local v11    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 1351
    .restart local v11    # "ex":Landroid/os/RemoteException;
    const-string v22, "ShutdownThread"

    const-string v23, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_3

    .line 1372
    .end local v11    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "bluetoothOff":Z
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1377
    :catch_2
    move-exception v11

    .line 1378
    .restart local v11    # "ex":Landroid/os/RemoteException;
    const-string v22, "ShutdownThread"

    const-string v23, "RemoteException during radio shutdown"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1379
    const/16 v17, 0x1

    .restart local v17    # "radioOff":Z
    goto/16 :goto_5

    .line 1410
    .end local v11    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "delay":J
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1411
    :catch_3
    move-exception v11

    .line 1412
    .restart local v11    # "ex":Landroid/os/RemoteException;
    const-string v22, "ShutdownThread"

    const-string v23, "RemoteException during radio shutdown"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1413
    const/16 v17, 0x1

    goto/16 :goto_7

    .line 1456
    .end local v11    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "board":Ljava/lang/String;
    :cond_11
    const/4 v15, 0x0

    goto :goto_8

    .line 1457
    :catch_4
    move-exception v11

    .line 1458
    .restart local v11    # "ex":Landroid/os/RemoteException;
    const-string v22, "ShutdownThread"

    const-string v23, "RemoteException during NFC shutdown"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1459
    const/4 v15, 0x1

    goto :goto_8

    .line 1486
    .end local v11    # "ex":Landroid/os/RemoteException;
    :cond_12
    const-string v22, "ShutdownThread"

    const-string v23, "!@before sleep"

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const-wide/16 v22, 0x1f4

    :try_start_5
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1492
    :goto_9
    const-string v22, "ShutdownThread"

    const-string v23, "!@after sleep"

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v22, "ShutdownThread"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "!@[Phone off retry:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$endTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " radio="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " bluetooth="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " nfcOff="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " WiFiOff="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " modem="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$12;->val$endTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v8, v22, v24

    .line 1509
    goto/16 :goto_6

    .line 1489
    :catch_5
    move-exception v10

    .line 1490
    .local v10, "e":Ljava/lang/InterruptedException;
    const-string v22, "ShutdownThread"

    const-string v23, "InterruptedException"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_9
.end method
