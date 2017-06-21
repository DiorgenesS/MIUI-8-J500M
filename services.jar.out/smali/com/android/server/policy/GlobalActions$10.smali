.class Lcom/android/server/policy/GlobalActions$10;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$isLatinSBike:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIIIZ)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-boolean p7, p0, Lcom/android/server/policy/GlobalActions$10;->val$isLatinSBike:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1580
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1581
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040a93

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1616
    :goto_0
    return-void

    .line 1584
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1585
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$10;->val$isLatinSBike:Z

    if-eqz v3, :cond_2

    const v0, 0x1040a95

    .line 1586
    .local v0, "alertMsgTxt":I
    :goto_1
    const v1, 0x1040a8e

    .line 1587
    .local v1, "alertPositiveButtonTxt":I
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isBikeMode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1588
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$10;->val$isLatinSBike:Z

    if-eqz v3, :cond_3

    const v0, 0x1040a96

    .line 1589
    :goto_2
    const v1, 0x1040a8f

    .line 1591
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1592
    const v3, 0x1040a90

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1593
    new-instance v3, Lcom/android/server/policy/GlobalActions$10$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$10$1;-><init>(Lcom/android/server/policy/GlobalActions$10;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1613
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    # setter for: Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->access$4102(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1614
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$4100(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1615
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$4100(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1585
    .end local v0    # "alertMsgTxt":I
    .end local v1    # "alertPositiveButtonTxt":I
    :cond_2
    const v0, 0x1040a8c

    goto :goto_1

    .line 1588
    .restart local v0    # "alertMsgTxt":I
    .restart local v1    # "alertPositiveButtonTxt":I
    :cond_3
    const v0, 0x1040a8d

    goto :goto_2
.end method

.method public onToggle(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1619
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1626
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1630
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$10;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x1

    return v0
.end method
