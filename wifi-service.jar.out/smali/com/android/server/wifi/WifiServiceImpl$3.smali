.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 756
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mChameleonEnabled:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1202(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 757
    const-string v6, "chameleon_wifi_tetheredData"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, "mTempTetheredData":Ljava/lang/String;
    const-string v4, "10"

    .line 759
    .local v4, "mTempMaxUser":Ljava/lang/String;
    const-string v2, "1"

    .line 760
    .local v2, "mTempGsmMaxUser":Ljava/lang/String;
    const-string v1, "8"

    .line 761
    .local v1, "mTempDomRoamMaxUser":Ljava/lang/String;
    const-string v3, "8"

    .line 763
    .local v3, "mTempIntRoamMaxUser":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 764
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1102(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 765
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onReceive] mTetheredData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    if-eqz v4, :cond_1

    .line 768
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1302(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 769
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onReceive] mMaxUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1
    if-eqz v2, :cond_2

    .line 772
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1402(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 773
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onReceive] mGsmMaxUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_2
    if-eqz v1, :cond_3

    .line 776
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 777
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onReceive] mDomRoamMaxUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_3
    if-eqz v3, :cond_4

    .line 780
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1602(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 781
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onReceive] mIntRoamMaxUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_4
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setValue] mTetheredData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMaxUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mGsmMaxUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDomRoamMaxUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIntRoamMaxUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 788
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "chameleon_tethereddata"

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    const-string v6, "chameleon_maxuser"

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    const-string v6, "chameleon_gsmmaxuser"

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    const-string v6, "chameleon_domroammaxuser"

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    const-string v6, "chameleon_introammaxuser"

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 793
    return-void
.end method
