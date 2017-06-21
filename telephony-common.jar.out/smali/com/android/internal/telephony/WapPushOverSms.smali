.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mPushOrigAddr:Ljava/lang/String;

.field private mPushSafeNoti:Z

.field private mPushTwoPhoneNoti:Z

.field private mWapPushAddress:Ljava/lang/String;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;

.field private mWapPushTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    .line 104
    iput-boolean v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 124
    const-string v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 128
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    .line 133
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchWapPdu_DMNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "binaryContentType"    # I
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 890
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v1, "intent":Landroid/content/Intent;
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 892
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 893
    const-string v0, "pushtype"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const/16 v3, 0x13

    .line 906
    .local v3, "appOp":I
    const-string v0, "WAP PUSH"

    const-string v2, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 908
    .local v4, "options":Landroid/os/Bundle;
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 909
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "binaryContentType"    # I
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    const/4 v6, 0x0

    .line 935
    const/16 v3, 0x13

    .line 937
    .local v3, "appOp":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_AabPhonebookSyncMsg"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 939
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "ds_message"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 941
    const-string v0, "pushtype"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 942
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 943
    .local v4, "options":Landroid/os/Bundle;
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 973
    :goto_0
    return-void

    .line 962
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "options":Landroid/os/Bundle;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v0, "application/vnd.syncml.ds.notification"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 967
    const-string v0, "ds_message"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 968
    const-string v0, "pushtype"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v0, "WAP PUSH"

    const-string v2, "ds noti intent is sent"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 971
    .restart local v4    # "options":Landroid/os/Bundle;
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_MMS([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 16
    .param p1, "pdu"    # [B
    .param p2, "transactionId"    # I
    .param p3, "pduType"    # I
    .param p4, "headerStartIndex"    # I
    .param p5, "headerLength"    # I
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 830
    move/from16 v0, p5

    new-array v13, v0, [B

    .line 831
    .local v13, "header":[B
    const/4 v2, 0x0

    array-length v4, v13

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 832
    add-int v12, p4, p5

    .line 833
    .local v12, "dataIndex":I
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int/2addr v2, v12

    new-array v11, v2, [B

    .line 834
    .local v11, "data":[B
    const/4 v2, 0x0

    array-length v4, v11

    move-object/from16 v0, p1

    invoke-static {v0, v12, v11, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 837
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v3, "intent":Landroid/content/Intent;
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v2, "transactionId"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    const-string v2, "pduType"

    move/from16 v0, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v2, "header"

    invoke-virtual {v3, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 842
    const-string v2, "data"

    invoke-virtual {v3, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 843
    invoke-virtual/range {p7 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v3, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 846
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 847
    const-string v2, "safeNoti"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    const-string v2, "WAP PUSH"

    const-string v4, "putExtra safeNoti"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 853
    const-string v2, "twoPhoneNoti"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    const-string v2, "WAP PUSH"

    const-string v4, "putExtra twoPhoneNoti"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_1
    const/4 v6, 0x0

    .line 860
    .local v6, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v10

    .line 861
    .local v10, "componentName":Landroid/content/ComponentName;
    if-eqz v10, :cond_2

    .line 863
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 864
    const-string v2, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delivering MMS to: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "mms-app"

    invoke-interface {v2, v4, v7, v8}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v14

    .line 869
    .local v14, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v9

    .line 870
    .local v9, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v9, v14, v15}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 871
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 875
    .end local v9    # "bopts":Landroid/app/BroadcastOptions;
    .end local v14    # "duration":J
    :cond_2
    :goto_0
    const/16 v5, 0x12

    .line 877
    .local v5, "appOp":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v6}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 882
    :cond_3
    const-string v4, "android.permission.RECEIVE_MMS"

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v2, p7

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 883
    return-void

    .line 872
    .end local v5    # "appOp":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private dispatchWapPdu_PushCO([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 8
    .param p1, "pdu"    # [B
    .param p2, "transactionId"    # I
    .param p3, "pduType"    # I
    .param p4, "headerStartIndex"    # I
    .param p5, "headerLength"    # I
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 805
    new-array v7, p5, [B

    .line 806
    .local v7, "header":[B
    const/4 v0, 0x0

    array-length v2, v7

    invoke-static {p1, p4, v7, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 809
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "application/vnd.wap.coc"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v0, "transactionId"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v0, "pduType"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string v0, "header"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 814
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 815
    invoke-virtual {p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 819
    const-string v0, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    :cond_0
    const/16 v3, 0x13

    .line 823
    .local v3, "appOp":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 824
    .local v4, "options":Landroid/os/Bundle;
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p7

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 825
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "binaryContentType"    # I
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 917
    const-string v0, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 921
    const-string v0, "pushtype"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 925
    const-string v0, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    :cond_0
    const/16 v3, 0x13

    .line 928
    .local v3, "appOp":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 929
    .local v4, "options":Landroid/os/Bundle;
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 930
    return-void
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 708
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 709
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 717
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 719
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v0

    const-string v4, "m_id=? AND m_type=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 730
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 736
    if-eqz v7, :cond_0

    .line 737
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 740
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v0

    .line 710
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 711
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 713
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v10

    .line 715
    goto :goto_1

    .line 736
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 737
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move-wide v0, v10

    .line 740
    goto :goto_1

    .line 733
    :catch_0
    move-exception v8

    .line 734
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    if-eqz v7, :cond_4

    .line 737
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 736
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 737
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 747
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 748
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 749
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 750
    .local v9, "location":Ljava/lang/String;
    new-array v11, v12, [Ljava/lang/String;

    aput-object v9, v11, v13

    .line 751
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 753
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v0

    const-string v4, "m_type=? AND ct_l =?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 764
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 771
    if-eqz v7, :cond_0

    .line 772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 776
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return v0

    .line 771
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v13

    .line 776
    goto :goto_0

    .line 768
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 769
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    if-eqz v7, :cond_2

    .line 772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 771
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 607
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeInboxMessage(I[B)V
    .locals 23
    .param p1, "subId"    # I
    .param p2, "pushData"    # [B

    .prologue
    .line 614
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v5

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 616
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_1

    .line 617
    const-string v4, "WAP PUSH"

    const-string v5, "Invalid PUSH PDU"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 621
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    .line 623
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    .line 693
    :try_start_0
    const-string v4, "WAP PUSH"

    const-string v5, "Received unrecognized WAP Push PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 695
    :catch_0
    move-exception v17

    .line 696
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save MMS WAP push data: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 626
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 627
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    .line 630
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to find delivery or read report\'s thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 697
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    .line 698
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v4, "WAP PUSH"

    const-string v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 633
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_2
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 639
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 640
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to persist delivery or read report"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_3
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 645
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 653
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to update delivery or read report thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 658
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    .line 660
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v14

    .line 662
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    const-string v4, "enabledTransID"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 664
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 665
    .local v15, "contentLocation":[B
    const/16 v4, 0x3d

    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v15, v5

    if-ne v4, v5, :cond_4

    .line 666
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    .line 667
    .local v19, "transactionId":[B
    array-length v4, v15

    move-object/from16 v0, v19

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 669
    .local v16, "contentLocationWithId":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v15

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 671
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 673
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 676
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 677
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 683
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 684
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to save MMS WAP push notification ind"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 58
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 157
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez p1, :cond_0

    .line 159
    const-string v7, "WAP PUSH"

    const-string v8, "Received PDU is null."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v7, 0x2

    .line 602
    :goto_0
    return v7

    .line 164
    :cond_0
    const/16 v39, 0x0

    .line 165
    .local v39, "index":I
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "index":I
    .local v40, "index":I
    :try_start_0
    aget-byte v7, p1, v39
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v0, v7, 0xff

    move/from16 v54, v0

    .line 166
    .local v54, "transactionId":I
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "index":I
    .restart local v39    # "index":I
    :try_start_1
    aget-byte v7, p1, v40

    and-int/lit16 v0, v7, 0xff

    move/from16 v48, v0

    .line 169
    .local v48, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v49

    .line 171
    .local v49, "phoneId":I
    const/4 v7, 0x6

    move/from16 v0, v48

    if-eq v0, v7, :cond_2

    const/4 v7, 0x7

    move/from16 v0, v48

    if-eq v0, v7, :cond_2

    .line 173
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e008c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v39

    .line 175
    const/4 v7, -0x1

    move/from16 v0, v39

    if-eq v0, v7, :cond_1

    .line 176
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "index":I
    .restart local v40    # "index":I
    :try_start_2
    aget-byte v7, p1, v39
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    and-int/lit16 v0, v7, 0xff

    move/from16 v54, v0

    .line 177
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "index":I
    .restart local v39    # "index":I
    :try_start_3
    aget-byte v7, p1, v40

    and-int/lit16 v0, v7, 0xff

    move/from16 v48, v0

    .line 179
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PDU Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transactionID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v54

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v7, 0x6

    move/from16 v0, v48

    if-eq v0, v7, :cond_2

    const/4 v7, 0x7

    move/from16 v0, v48

    if-eq v0, v7, :cond_2

    .line 185
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 189
    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 194
    :cond_2
    new-instance v47, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 202
    .local v47, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 203
    const-string v7, "WAP PUSH"

    const-string v8, "Received PDU. Header Length error."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 206
    :cond_3
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v12, v8

    .line 207
    .local v12, "headerLength":I
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v7

    add-int v39, v39, v7

    .line 209
    move/from16 v36, v39

    .line 223
    .local v36, "headerStartIndex":I
    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 224
    const-string v7, "WAP PUSH"

    const-string v8, "Received PDU. Header Content-Type error."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 228
    :cond_4
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v45

    .line 229
    .local v45, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    .line 230
    .local v22, "binaryContentType":J
    move/from16 v41, v39

    .line 233
    .local v41, "index_con013":I
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v38, v0

    .line 235
    .local v38, "iBinaryContentType":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SmsWappushManager"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 237
    if-nez v45, :cond_7

    .line 239
    sparse-switch v38, :sswitch_data_0

    .line 295
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 241
    :sswitch_0
    const-string v45, "application/vnd.oma.drm.rights+xml"
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v34

    .line 348
    .local v34, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    invoke-virtual/range {v34 .. v34}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v6

    .line 349
    .local v6, "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual/range {v34 .. v34}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v29

    .line 350
    .local v29, "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    const-string v7, "gsm.operator.isroaming"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {v34 .. v34}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v7

    if-nez v7, :cond_16

    .line 353
    :cond_6
    const-string v7, "WAP PUSH"

    const-string v8, " MDM RoamingPush or WapPush Disabled "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 354
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 244
    .end local v6    # "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v29    # "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    .end local v34    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    :sswitch_1
    :try_start_5
    const-string v45, "application/vnd.oma.drm.rights+wbxml"

    .line 245
    goto :goto_1

    .line 247
    :sswitch_2
    const-string v45, "application/vnd.wap.sic"

    .line 248
    goto :goto_1

    .line 250
    :sswitch_3
    const-string v45, "application/vnd.wap.slc"

    .line 251
    goto :goto_1

    .line 253
    :sswitch_4
    const-string v45, "application/vnd.wap.coc"

    .line 254
    goto :goto_1

    .line 256
    :sswitch_5
    const-string v45, "application/vnd.wap.mms-message"

    .line 257
    goto :goto_1

    .line 259
    :sswitch_6
    const-string v45, "application/vnd.omaloc-supl-init"

    .line 260
    goto :goto_1

    .line 262
    :sswitch_7
    const-string v45, "application/vnd.docomo.pf"

    .line 263
    goto :goto_1

    .line 271
    :sswitch_8
    const-string v45, "application/vnd.syncml.notification"

    .line 272
    goto :goto_1

    .line 277
    :sswitch_9
    const-string v45, "application/vnd.syncml.ds.notification"

    .line 278
    goto :goto_1

    .line 280
    :sswitch_a
    const-string v45, "application/vnd.wap.connectivity-wbxml"

    .line 281
    goto :goto_1

    .line 283
    :sswitch_b
    const-string v45, "application/vnd.syncml.dm+wbxml"

    .line 284
    goto :goto_1

    .line 286
    :sswitch_c
    const-string v45, "application/vnd.syncml.dm+xml"

    .line 287
    goto :goto_1

    .line 290
    :sswitch_d
    const-string v45, "application/vnd.wap.emn+wbxml"

    .line 291
    goto :goto_1

    .line 300
    :cond_7
    const-string v7, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 301
    const/16 v38, 0x4a

    goto :goto_1

    .line 302
    :cond_8
    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 303
    const/16 v38, 0x4b

    goto :goto_1

    .line 304
    :cond_9
    const-string v7, "application/vnd.wap.sic"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 305
    const/16 v38, 0x2e

    goto :goto_1

    .line 306
    :cond_a
    const-string v7, "application/vnd.wap.slc"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 307
    const/16 v38, 0x30

    goto/16 :goto_1

    .line 308
    :cond_b
    const-string v7, "application/vnd.wap.coc"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 309
    const/16 v38, 0x32

    goto/16 :goto_1

    .line 310
    :cond_c
    const-string v7, "application/vnd.wap.mms-message"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 311
    const/16 v38, 0x3e

    goto/16 :goto_1

    .line 312
    :cond_d
    const-string v7, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 313
    const/16 v38, 0x312

    goto/16 :goto_1

    .line 314
    :cond_e
    const-string v7, "application/vnd.docomo.pf"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 315
    const/16 v38, 0x310

    goto/16 :goto_1

    .line 321
    :cond_f
    const-string v7, "application/vnd.syncml.notification"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 322
    const/16 v38, 0x44

    goto/16 :goto_1

    .line 323
    :cond_10
    const-string v7, "application/vnd.syncml.ds.notification"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 324
    const/16 v38, 0x4e

    goto/16 :goto_1

    .line 326
    :cond_11
    const-string v7, "application/vnd.wap.connectivity-wbxml"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 327
    const/16 v38, 0x36

    goto/16 :goto_1

    .line 328
    :cond_12
    const-string v7, "application/vnd.syncml.dm+wbxml"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 329
    const/16 v38, 0x42

    goto/16 :goto_1

    .line 330
    :cond_13
    const-string v7, "application/vnd.syncml.dm+xml"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 331
    const/16 v38, 0x43

    goto/16 :goto_1

    .line 333
    :cond_14
    const-string v7, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 334
    const/16 v38, 0x30a

    goto/16 :goto_1

    .line 338
    :cond_15
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 340
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 357
    .restart local v6    # "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v29    # "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    .restart local v34    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    :cond_16
    :try_start_6
    const-string v7, "ro.multisim.simslotcount"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_17

    .line 358
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.operator.isroaming"

    const-string v8, "false"

    move/from16 v0, v49

    invoke-static {v0, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 359
    .local v44, "isRoaming":Ljava/lang/String;
    const-string v7, "true"

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual/range {v34 .. v34}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v7

    if-nez v7, :cond_17

    .line 360
    const-string v7, "WAP PUSH"

    const-string v8, " MDM RoamingPush Disabled"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 364
    .end local v44    # "isRoaming":Ljava/lang/String;
    :cond_17
    const/16 v7, 0x3e

    move/from16 v0, v38

    if-ne v7, v0, :cond_1a

    .line 365
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v7

    if-nez v7, :cond_19

    .line 366
    :cond_18
    const-string v7, "WAP PUSH"

    const-string v8, "emergency call only or incoming MMS not allowed"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 368
    :cond_19
    invoke-virtual {v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 369
    const-string v7, "WAP PUSH"

    const-string v8, "blocking mms with storage"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v11}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 372
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 377
    :cond_1a
    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v57, "wapSms":Ljava/lang/StringBuilder;
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v7, v0

    move/from16 v0, v37

    if-ge v0, v7, :cond_1b

    .line 379
    aget-byte v7, p1, v37

    int-to-char v7, v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 381
    :cond_1b
    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1c

    .line 382
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 390
    .end local v6    # "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v29    # "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    .end local v34    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    .end local v37    # "i":I
    .end local v57    # "wapSms":Ljava/lang/StringBuilder;
    :cond_1c
    :goto_3
    const/16 v30, 0x0

    .line 391
    .local v30, "dispatchedByApplication":Z
    sparse-switch v38, :sswitch_data_1

    .line 431
    :goto_4
    const/4 v7, 0x1

    move/from16 v0, v30

    if-ne v0, v7, :cond_1e

    .line 432
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 385
    .end local v30    # "dispatchedByApplication":Z
    :catch_0
    move-exception v46

    .line 386
    .local v46, "npe":Ljava/lang/NullPointerException;
    :try_start_7
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDM failed to get policy - NullPointerException but this isn\'t issue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 598
    .end local v12    # "headerLength":I
    .end local v22    # "binaryContentType":J
    .end local v36    # "headerStartIndex":I
    .end local v38    # "iBinaryContentType":I
    .end local v41    # "index_con013":I
    .end local v45    # "mimeType":Ljava/lang/String;
    .end local v46    # "npe":Ljava/lang/NullPointerException;
    .end local v47    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v48    # "pduType":I
    .end local v49    # "phoneId":I
    :catch_1
    move-exception v20

    .line 601
    .end local v54    # "transactionId":I
    .local v20, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v7, 0x2

    goto/16 :goto_0

    .end local v20    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "headerLength":I
    .restart local v22    # "binaryContentType":J
    .restart local v30    # "dispatchedByApplication":Z
    .restart local v36    # "headerStartIndex":I
    .restart local v38    # "iBinaryContentType":I
    .restart local v41    # "index_con013":I
    .restart local v45    # "mimeType":Ljava/lang/String;
    .restart local v47    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v48    # "pduType":I
    .restart local v49    # "phoneId":I
    .restart local v54    # "transactionId":I
    :sswitch_e
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, v54

    move/from16 v10, v48

    move/from16 v11, v36

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 393
    :try_start_8
    invoke-direct/range {v7 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 394
    const/16 v30, 0x1

    .line 395
    goto :goto_4

    :sswitch_f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, v54

    move/from16 v10, v48

    move/from16 v11, v36

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 397
    invoke-direct/range {v7 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 398
    const/16 v30, 0x1

    .line 399
    goto :goto_4

    .line 405
    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v38

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 406
    const/16 v30, 0x1

    .line 407
    goto :goto_4

    .line 413
    :sswitch_11
    const/16 v30, 0x0

    .line 414
    goto :goto_4

    .line 418
    :sswitch_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_AabPhonebookSyncMsg"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v38

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DSNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 421
    const/16 v30, 0x1

    goto/16 :goto_4

    .line 423
    :cond_1d
    const/16 v30, 0x0

    .line 425
    goto/16 :goto_4

    .line 437
    .end local v30    # "dispatchedByApplication":Z
    :cond_1e
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v7

    add-int v39, v39, v7

    .line 439
    new-array v0, v12, [B

    move-object/from16 v35, v0

    .line 440
    .local v35, "header":[B
    const/4 v7, 0x0

    move-object/from16 v0, v35

    array-length v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 444
    if-eqz v45, :cond_21

    const-string v7, "application/vnd.wap.coc"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 445
    move-object/from16 v42, p1

    .line 452
    .local v42, "intentData":[B
    :goto_6
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 454
    invoke-static/range {v49 .. v49}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v53

    .line 457
    .local v53, "subIds":[I
    if-eqz v53, :cond_22

    move-object/from16 v0, v53

    array-length v7, v0

    if-lez v7, :cond_22

    const/4 v7, 0x0

    aget v52, v53, v7

    .line 459
    .local v52, "subId":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(I[B)V

    .line 468
    .end local v52    # "subId":I
    .end local v53    # "subIds":[I
    :cond_1f
    add-int v7, v39, v12

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 469
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v39, v0

    .line 470
    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 471
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v55

    .line 473
    .local v55, "wapAppId":Ljava/lang/String;
    const/16 v43, 0x1

    .line 474
    .local v43, "isAsciiType":Z
    const/16 v28, 0x21

    .line 476
    .local v28, "deltaIndex":I
    if-nez v55, :cond_20

    .line 477
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v55

    .line 479
    const/16 v43, 0x0

    .line 480
    const/16 v28, 0x4

    .line 484
    :cond_20
    if-nez v45, :cond_23

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    .line 486
    .local v26, "contentType":Ljava/lang/String;
    :goto_8
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appid found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-eqz v45, :cond_25

    .line 490
    const-string v7, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const-string v7, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 491
    if-eqz v43, :cond_24

    .line 492
    new-instance v21, Ljava/lang/String;

    const-string v7, "x-oma-application:ulp.ua"

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 493
    .local v21, "appID":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 494
    const-string v7, "WAP PUSH"

    const-string v8, " InvalidApplicationID-ASCII"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 447
    .end local v21    # "appID":Ljava/lang/String;
    .end local v26    # "contentType":Ljava/lang/String;
    .end local v28    # "deltaIndex":I
    .end local v42    # "intentData":[B
    .end local v43    # "isAsciiType":Z
    .end local v55    # "wapAppId":Ljava/lang/String;
    :cond_21
    add-int v27, v36, v12

    .line 448
    .local v27, "dataIndex":I
    move-object/from16 v0, p1

    array-length v7, v0

    sub-int v7, v7, v27

    new-array v0, v7, [B

    move-object/from16 v42, v0

    .line 449
    .restart local v42    # "intentData":[B
    const/4 v7, 0x0

    move-object/from16 v0, v42

    array-length v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_6

    .line 457
    .end local v27    # "dataIndex":I
    .restart local v53    # "subIds":[I
    :cond_22
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v52

    goto/16 :goto_7

    .end local v53    # "subIds":[I
    .restart local v28    # "deltaIndex":I
    .restart local v43    # "isAsciiType":Z
    .restart local v55    # "wapAppId":Ljava/lang/String;
    :cond_23
    move-object/from16 v26, v45

    .line 484
    goto :goto_8

    .line 498
    .restart local v26    # "contentType":Ljava/lang/String;
    :cond_24
    add-int v7, v41, v28

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    const/16 v8, -0x70

    if-eq v7, v8, :cond_25

    .line 499
    const-string v7, "WAP PUSH"

    const-string v8, " InvalidApplicationID-HEX"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    .line 500
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 508
    :cond_25
    const/16 v51, 0x1

    .line 509
    .local v51, "processFurther":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v56, v0

    .line 511
    .local v56, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v56, :cond_27

    .line 512
    const-string v7, "WAP PUSH"

    const-string v8, "wap push manager not found!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_26
    :goto_9
    if-nez v51, :cond_28

    .line 534
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 514
    :cond_27
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "mms-mgr"

    invoke-interface {v7, v8, v9, v10}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    .line 517
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v14, "intent":Landroid/content/Intent;
    const-string v7, "transactionId"

    move/from16 v0, v54

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v7, "pduType"

    move/from16 v0, v48

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v7, "header"

    move-object/from16 v0, v35

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 521
    const-string v7, "data"

    move-object/from16 v0, v42

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 522
    const-string v7, "contentTypeParameters"

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 524
    move/from16 v0, v49

    invoke-static {v14, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 526
    move-object/from16 v0, v56

    move-object/from16 v1, v55

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2, v14}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v50

    .line 527
    .local v50, "procRet":I
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "procRet:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    .line 528
    and-int/lit8 v7, v50, 0x1

    if-lez v7, :cond_26

    const v7, 0x8000

    and-int v7, v7, v50

    if-nez v7, :cond_26

    .line 530
    const/16 v51, 0x0

    goto :goto_9

    .line 536
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v50    # "procRet":I
    .end local v56    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_2
    move-exception v31

    .line 537
    .local v31, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v7, "WAP PUSH"

    const-string v8, "remote func failed..."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v26    # "contentType":Ljava/lang/String;
    .end local v28    # "deltaIndex":I
    .end local v31    # "e":Landroid/os/RemoteException;
    .end local v43    # "isAsciiType":Z
    .end local v51    # "processFurther":Z
    .end local v55    # "wapAppId":Ljava/lang/String;
    :cond_28
    const-string v7, "WAP PUSH"

    const-string v8, "fall back to existing handler"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-nez v45, :cond_29

    .line 543
    const-string v7, "WAP PUSH"

    const-string v8, "Header Content-Type error."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 550
    :cond_29
    const-string v7, "application/vnd.wap.mms-message"

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 551
    const-string v15, "android.permission.RECEIVE_MMS"

    .line 552
    .local v15, "permission":Ljava/lang/String;
    const/16 v16, 0x12

    .line 558
    .local v16, "appOp":I
    :goto_a
    new-instance v14, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v14, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v7, "transactionId"

    move/from16 v0, v54

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string v7, "pduType"

    move/from16 v0, v48

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string v7, "header"

    move-object/from16 v0, v35

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 563
    const-string v7, "data"

    move-object/from16 v0, v42

    invoke-virtual {v14, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 564
    const-string v7, "contentTypeParameters"

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 567
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v7, :cond_2a

    .line 568
    const-string v7, "origaddr"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v14, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :cond_2a
    move/from16 v0, v49

    invoke-static {v14, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v25

    .line 576
    .local v25, "componentName":Landroid/content/ComponentName;
    const/16 v17, 0x0

    .line 577
    .local v17, "options":Landroid/os/Bundle;
    if-eqz v25, :cond_2b

    .line 579
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 580
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering MMS to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1

    .line 583
    :try_start_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "mms-app"

    invoke-interface {v7, v8, v9, v10}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v32

    .line 585
    .local v32, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v24

    .line 586
    .local v24, "bopts":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 587
    invoke-virtual/range {v24 .. v24}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v17

    .line 592
    .end local v24    # "bopts":Landroid/app/BroadcastOptions;
    .end local v32    # "duration":J
    :cond_2b
    :goto_b
    :try_start_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 593
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v7, v14, v0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v14

    .line 596
    :cond_2c
    sget-object v19, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v13, p3

    move-object/from16 v18, p2

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 597
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 554
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "permission":Ljava/lang/String;
    .end local v16    # "appOp":I
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v25    # "componentName":Landroid/content/ComponentName;
    :cond_2d
    const-string v15, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1

    .line 555
    .restart local v15    # "permission":Ljava/lang/String;
    const/16 v16, 0x13

    .restart local v16    # "appOp":I
    goto/16 :goto_a

    .line 598
    .end local v12    # "headerLength":I
    .end local v15    # "permission":Ljava/lang/String;
    .end local v16    # "appOp":I
    .end local v22    # "binaryContentType":J
    .end local v35    # "header":[B
    .end local v36    # "headerStartIndex":I
    .end local v38    # "iBinaryContentType":I
    .end local v39    # "index":I
    .end local v41    # "index_con013":I
    .end local v42    # "intentData":[B
    .end local v45    # "mimeType":Ljava/lang/String;
    .end local v47    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v48    # "pduType":I
    .end local v49    # "phoneId":I
    .end local v54    # "transactionId":I
    .restart local v40    # "index":I
    :catch_3
    move-exception v20

    move/from16 v39, v40

    .end local v40    # "index":I
    .restart local v39    # "index":I
    goto/16 :goto_5

    .line 588
    .restart local v12    # "headerLength":I
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v15    # "permission":Ljava/lang/String;
    .restart local v16    # "appOp":I
    .restart local v17    # "options":Landroid/os/Bundle;
    .restart local v22    # "binaryContentType":J
    .restart local v25    # "componentName":Landroid/content/ComponentName;
    .restart local v35    # "header":[B
    .restart local v36    # "headerStartIndex":I
    .restart local v38    # "iBinaryContentType":I
    .restart local v41    # "index_con013":I
    .restart local v42    # "intentData":[B
    .restart local v45    # "mimeType":Ljava/lang/String;
    .restart local v47    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v48    # "pduType":I
    .restart local v49    # "phoneId":I
    .restart local v54    # "transactionId":I
    :catch_4
    move-exception v7

    goto :goto_b

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_a
        0x3e -> :sswitch_5
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_9
        0xce -> :sswitch_9
        0x30a -> :sswitch_d
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    .line 391
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_11
        0x32 -> :sswitch_e
        0x36 -> :sswitch_11
        0x3e -> :sswitch_f
        0x42 -> :sswitch_11
        0x43 -> :sswitch_11
        0x44 -> :sswitch_10
        0x4e -> :sswitch_12
        0xce -> :sswitch_12
    .end sparse-switch
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "OrigAddr"    # Ljava/lang/String;

    .prologue
    .line 796
    if-eqz p1, :cond_0

    .line 797
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method public dispatchWapPushSafeNoti(Z)V
    .locals 3
    .param p1, "SafeNoti"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    .line 783
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWapPushSafeNoti SafeNoti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method public dispatchWapPushTwoPhoneNoti(Z)V
    .locals 3
    .param p1, "TwoPhoneNoti"    # Z

    .prologue
    .line 789
    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    .line 790
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWapPushTwoPhoneNoti TwoPhoneNoti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 7
    .param p1, "target"    # Landroid/content/ComponentName;

    .prologue
    .line 990
    if-eqz p1, :cond_0

    .line 991
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "pkgName":Ljava/lang/String;
    const-string v4, "sms-app"

    .line 998
    .local v4, "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6, v4}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 1000
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 1001
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1002
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1006
    .end local v0    # "bopts":Landroid/app/BroadcastOptions;
    .end local v2    # "duration":J
    :goto_1
    return-object v5

    .line 994
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 995
    .restart local v1    # "pkgName":Ljava/lang/String;
    const-string v4, "sms-broadcast"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 1003
    :catch_0
    move-exception v5

    .line 1006
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 112
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 113
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 119
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public setWpaPushAddressTimeStamp(Ljava/lang/String;J)V
    .locals 2
    .param p1, "wapPushAddress"    # Ljava/lang/String;
    .param p2, "wapPushTimeStamp"    # J

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    .line 984
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    .line 985
    return-void
.end method
