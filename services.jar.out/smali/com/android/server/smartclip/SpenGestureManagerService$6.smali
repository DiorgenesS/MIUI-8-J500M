.class Lcom/android/server/smartclip/SpenGestureManagerService$6;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 1412
    const/4 v8, 0x0

    .line 1413
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostActivityClassName()Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4000(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, "currentTopMostActivity":Ljava/lang/String;
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : Current topmost activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v6, Landroid/content/Intent;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4100()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1417
    .local v6, "gacIntentActionMemo":Landroid/content/Intent;
    new-instance v7, Landroid/content/Intent;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4200()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v7, "gacIntentRakeInService":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 1421
    .local v10, "personID":I
    packed-switch p2, :pswitch_data_0

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1423
    :pswitch_0
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_QUICK_MEMO"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v9, 0x0

    .line 1426
    .local v9, "isCallState":Z
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1438
    .local v12, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_2

    .line 1439
    if-nez v9, :cond_1

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    :cond_1
    const/4 v9, 0x1

    .line 1444
    :cond_2
    :goto_1
    if-eqz v9, :cond_5

    .line 1445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_4

    .line 1446
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1453
    :goto_2
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1454
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1456
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "ACTIONMEMO"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4400(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1448
    :cond_4
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 1450
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2400(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    goto :goto_2

    .line 1461
    .end local v9    # "isCallState":Z
    .end local v12    # "tmgr":Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_SCRAPBOOKER"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1467
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4600()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1468
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : RakeIn launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1475
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "com.samsung.android.app.pinboard"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPackageActivated(Ljava/lang/String;)Z
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4700(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1476
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1477
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.SmartClipService"

    const-string v14, "com.sec.android.app.SmartClipService.rakein.RakeInService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1479
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1481
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1483
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1484
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1490
    :goto_3
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SCRAPBOOKER"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4400(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1486
    :cond_7
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onItemSelected : Pinboard is not installed or activated"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x104050b

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1495
    :pswitch_2
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_RAKEINSELECT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1501
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4600()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1502
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : RakeInSelect launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1506
    :cond_8
    const/16 v13, 0x64

    if-lt v10, v13, :cond_9

    .line 1507
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b6d

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1511
    .local v1, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1513
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_9
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1514
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.SmartClipService"

    const-string v14, "com.sec.android.app.SmartClipService.rakein.RakeInSelectService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x7

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1516
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1520
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x7

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1521
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1523
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SCRAPBOOKER"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4400(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1529
    :pswitch_3
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_FLASH_ANNO"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleCapture()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1535
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4900()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 1536
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : Flash annotation launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1540
    :cond_a
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1541
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v13, 0x14000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1542
    const-string/jumbo v13, "com.sec.spen.flashannotatesvc"

    const-string/jumbo v14, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 1544
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1548
    :cond_b
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1550
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x2

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1551
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1553
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SCREENWRITE"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4400(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1558
    :pswitch_4
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_S_FINDER"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/16 v13, 0x64

    if-lt v10, v13, :cond_c

    .line 1561
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b6d

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1565
    .restart local v1    # "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1567
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_c
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1568
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v13, 0x14000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1569
    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.samsung.android.app.galaxyfinder"

    const-string v15, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1570
    const-string v13, "callername"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1572
    :try_start_0
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_4
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1579
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x3

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1573
    :catch_0
    move-exception v3

    .line 1574
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "Failed to start S-Finder"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1585
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_5
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_PEN_WINDOW"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/16 v13, 0x64

    if-lt v10, v13, :cond_d

    .line 1588
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b6d

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1592
    .restart local v1    # "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1594
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_d
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1595
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.FlashBarService"

    const-string v14, "com.sec.android.app.FlashBarService.SmartWindowDrawService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x4

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    const-string/jumbo v13, "multiwindow"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1598
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1600
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1602
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x4

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1603
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1608
    :pswitch_6
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_EASY_CLIP"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1616
    const/16 v13, 0x64

    if-lt v10, v13, :cond_e

    .line 1617
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b6d

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1621
    .restart local v1    # "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1623
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_e
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$5000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 1624
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : GLOBAL_APP_EASY_CLIP launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040888

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1626
    .local v4, "easyClip":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x104035a

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1627
    .local v5, "easyClipRunning":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1631
    .end local v4    # "easyClip":Ljava/lang/String;
    .end local v5    # "easyClipRunning":Ljava/lang/String;
    :cond_f
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1632
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.SmartClipService"

    const-string v14, "com.sec.android.app.SmartClipService.easyclip.EasyClipService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x5

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1634
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1636
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x5

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1637
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1639
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "EASYCLIP"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4400(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1644
    :pswitch_7
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_S_NOTE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const-string v11, "com.samsung.android.snote"

    .line 1646
    .local v11, "sNotePackage":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1647
    if-eqz v8, :cond_10

    .line 1649
    :try_start_1
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1657
    :goto_5
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SNOTE"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4400(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1650
    :catch_1
    move-exception v3

    .line 1651
    .restart local v3    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "Failed to start S-Note"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1654
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_10
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "Failed to start S-Note. S-Note launch intent is null!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method
