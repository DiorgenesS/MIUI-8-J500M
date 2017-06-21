.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 1

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    .line 1357
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 1258
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDaemonConnected - connected to netd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    .line 1260
    return-void
.end method

.method public onDaemonDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1264
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onDaemonDisconnected - disconnected from netd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    if-eqz v1, :cond_0

    .line 1268
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1269
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1270
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    .line 1271
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1102(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1273
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1277
    packed-switch p1, :pswitch_data_0

    .line 1352
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    :goto_0
    const/16 v22, 0x1

    :goto_1
    return v22

    .line 1279
    :pswitch_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 1283
    const/16 v22, 0x3

    :try_start_0
    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 1288
    .local v20, "uid":I
    :goto_2
    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 1289
    .local v21, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "android"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    .line 1290
    .local v8, "ctx":Landroid/content/Context;
    if-nez v8, :cond_1

    .line 1291
    const/16 v22, 0x0

    goto :goto_1

    .line 1284
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v20    # "uid":I
    .end local v21    # "userId":I
    :catch_0
    move-exception v10

    .line 1285
    .local v10, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Error parsing String to int"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/16 v20, 0x0

    .restart local v20    # "uid":I
    goto :goto_2

    .line 1293
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v21    # "userId":I
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1294
    .local v19, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 1295
    .local v16, "packages":[Ljava/lang/String;
    const/16 v22, 0x5

    aget-object v15, p3, v22

    .line 1296
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v5, v16

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    if-ge v13, v14, :cond_3

    aget-object v18, v5, v13

    .line 1298
    .local v18, "pkg":Ljava/lang/String;
    const/16 v22, 0x80

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 1300
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    const/16 v22, 0x5

    aget-object v22, p3, v22

    if-eqz v22, :cond_5

    const/16 v22, 0x5

    aget-object v22, p3, v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const/16 v22, 0x5

    aget-object v22, p3, v22

    const/16 v23, 0x0

    const/16 v24, 0x5

    aget-object v24, p3, v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v22

    if-eqz v22, :cond_5

    .line 1304
    :cond_2
    move-object/from16 v15, v18

    .line 1314
    .end local v17    # "pi":Landroid/content/pm/PackageInfo;
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 1315
    .local v9, "duplicated":Z
    new-instance v7, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v23, p3, v23

    const/16 v24, 0x3

    aget-object v24, p3, v24

    const/16 v25, 0x4

    aget-object v25, p3, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    .local v7, "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v22

    aget-object v22, v22, v12

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v22

    aget-object v22, v22, v12

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1318
    const/4 v9, 0x1

    .line 1316
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1307
    .end local v7    # "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .end local v9    # "duplicated":Z
    .end local v12    # "i":I
    .restart local v18    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1296
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1322
    .end local v18    # "pkg":Ljava/lang/String;
    .restart local v7    # "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .restart local v9    # "duplicated":Z
    .restart local v12    # "i":I
    :cond_6
    if-nez v9, :cond_0

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v23

    aput-object v7, v22, v23

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # operator++ for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1408(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1402(Lcom/android/server/enterprise/firewall/DomainFilter;I)I

    .line 1330
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1332
    .local v4, "actMngr":Landroid/app/ActivityManager;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1333
    .local v11, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v22, "com.sec.enterprise.intent.action.BLOCKED_DOMAIN"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v6, "blockIntent":Landroid/content/Intent;
    const-string/jumbo v22, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    const-string/jumbo v22, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    const/16 v23, 0x2

    aget-object v23, p3, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const-string/jumbo v22, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_UID"

    const/16 v23, 0x3

    aget-object v23, p3, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string/jumbo v22, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_URL"

    const/16 v23, 0x4

    aget-object v23, p3, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1339
    const-string/jumbo v22, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v24, "android.permission.sec.MDM_FIREWALL"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v23, p3, v23

    const/16 v24, 0x3

    aget-object v24, p3, v24

    const/16 v25, 0x4

    aget-object v25, p3, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1341
    :cond_8
    const-string/jumbo v22, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 1348
    .end local v4    # "actMngr":Landroid/app/ActivityManager;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "blockIntent":Landroid/content/Intent;
    .end local v7    # "br":Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v9    # "duplicated":Z
    .end local v11    # "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "uid":I
    .end local v21    # "userId":I
    :cond_9
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$100()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "invalid number of arguments "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
    .end packed-switch
.end method
