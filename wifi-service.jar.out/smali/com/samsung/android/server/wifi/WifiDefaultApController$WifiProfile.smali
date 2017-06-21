.class Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;Lcom/samsung/android/server/wifi/WifiDefaultApController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;
    .param p2, "x1"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$1;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiProfileLoaded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getGeneralNwInfo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getPrevNwInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeChangedWifiProfile()V

    return-void
.end method

.method private addWifiVendorProfile(I)V
    .locals 20
    .param p1, "i"    # I

    .prologue
    .line 865
    const/4 v6, 0x0

    .line 867
    .local v6, "mRes":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_0

    .line 868
    const-string v17, "WifiDefaultApController"

    const-string v18, "addWifiVendorProfile - mDefaultApSsidList is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :goto_0
    return-void

    .line 872
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 873
    .local v8, "networkCount":I
    move/from16 v0, p1

    if-ge v8, v0, :cond_1

    .line 874
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWifiVendorProfile - default ap index over ,networkCount("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), index("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 940
    .end local v8    # "networkCount":I
    :catch_0
    move-exception v2

    .line 941
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v17, "WifiDefaultApController"

    const-string v18, "addWifiVendorProfile - NullPointerException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "networkCount":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 879
    .local v16, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 880
    .local v14, "securityType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 881
    .local v12, "priority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 882
    .local v3, "eap":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 883
    .local v9, "networkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 884
    .local v15, "spname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 885
    .local v5, "identity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 886
    .local v10, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 887
    .local v11, "phase2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 888
    .local v13, "psk":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 890
    .local v4, "hiddenssid":Ljava/lang/String;
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 891
    .local v7, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 892
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 893
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 894
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 896
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWifiVendorProfile: ssid ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), psk("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), securityType("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), priority("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), scan_ssid("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), eap("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), networkName("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), spName("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 902
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 903
    :cond_2
    const-string v17, "WPA-EAP IEEE8021X"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 904
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    .line 905
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    .line 911
    :cond_3
    :goto_1
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 912
    iput-object v13, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 914
    :cond_4
    const-string v17, "SIM"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 915
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 923
    :cond_5
    :goto_2
    const-string v17, "None"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 924
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 930
    :cond_6
    :goto_3
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 931
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 932
    :cond_7
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 933
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 934
    :cond_8
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 935
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 937
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiServiceImpl;->enableNetwork(IZ)Z

    goto/16 :goto_0

    .line 906
    :cond_a
    const-string v17, "WPA_PSK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 907
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 908
    :cond_b
    const-string v17, "NONE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 909
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 916
    :cond_c
    const-string v17, "AKA"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 917
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_2

    .line 918
    :cond_d
    const-string v17, "PEAP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 919
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_2

    .line 920
    :cond_e
    const-string v17, "TTLS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 921
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_2

    .line 925
    :cond_f
    const-string v17, "MSCHAPV2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 926
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 927
    :cond_10
    const-string v17, "GTC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 928
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private checkNetworkName()V
    .locals 11

    .prologue
    .line 824
    const-string v3, ""

    .line 825
    .local v3, "mMCCMNC":Ljava/lang/String;
    const-string v4, ""

    .line 826
    .local v4, "mSPName":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    const-string v8, "gsm.sim.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 829
    const-string v8, ""

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 830
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkNetworkName: mMCCMNC =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), mSPName =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_1

    .line 833
    const-string v8, "WifiDefaultApController"

    const-string v9, "checkNetworkName - mGeneralNwInfoMccmncList is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 838
    .local v1, "generalNwInfoCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 839
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 840
    .local v5, "mccmnc":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 841
    .local v6, "networkname":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 843
    .local v7, "spname":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 844
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 845
    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 846
    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 847
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMatchedNetworkName(SPName) =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    .end local v1    # "generalNwInfoCount":I
    .end local v2    # "j":I
    .end local v5    # "mccmnc":Ljava/lang/String;
    .end local v6    # "networkname":Ljava/lang/String;
    .end local v7    # "spname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiDefaultApController"

    const-string v9, "checkNetworkName - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMatchedNetworkName =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 851
    .restart local v1    # "generalNwInfoCount":I
    .restart local v2    # "j":I
    .restart local v5    # "mccmnc":Ljava/lang/String;
    .restart local v6    # "networkname":Ljava/lang/String;
    .restart local v7    # "spname":Ljava/lang/String;
    :cond_3
    :try_start_1
    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 852
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMatchedNetworkName =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 838
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private checkWifiProfileLoaded()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 768
    const-string v6, ""

    .line 769
    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .line 770
    .local v5, "mEap":Ljava/lang/String;
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 771
    .local v7, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v12}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 773
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :try_start_0
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 774
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 775
    .local v8, "networkCount":I
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_0
    if-ge v9, v8, :cond_a

    .line 776
    if-eqz v1, :cond_9

    .line 777
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 778
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v12, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v12, :cond_0

    .line 782
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 783
    :cond_1
    const-string v6, "WPA-EAP IEEE8021X"

    .line 790
    :goto_1
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    .line 791
    const-string v5, "SIM"

    .line 802
    :goto_2
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 803
    .local v11, "ssid":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 804
    .local v10, "securityType":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 806
    .local v3, "eap":Ljava/lang/String;
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v13, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v13, v11}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, ""

    if-eq v3, v12, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 808
    :cond_2
    const/4 v12, 0x1

    sput-boolean v12, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    .line 809
    const-string v12, "WifiDefaultApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkWifiProfileLoaded : ssid ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "), securityType["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] is already saved, mWifiProfileLoaded true"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "eap":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "networkCount":I
    .end local v9    # "p":I
    .end local v10    # "securityType":Ljava/lang/String;
    .end local v11    # "ssid":Ljava/lang/String;
    :goto_3
    return-void

    .line 784
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "networkCount":I
    .restart local v9    # "p":I
    :cond_3
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 785
    const-string v6, "NONE"

    goto/16 :goto_1

    .line 787
    :cond_4
    const-string v6, ""

    goto/16 :goto_1

    .line 792
    :cond_5
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_6

    .line 793
    const-string v5, "AKA"

    goto/16 :goto_2

    .line 794
    :cond_6
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    if-nez v12, :cond_7

    .line 795
    const-string v5, "PEAP"

    goto/16 :goto_2

    .line 796
    :cond_7
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    if-ne v12, v14, :cond_8

    .line 797
    const-string v5, "TTLS"

    goto/16 :goto_2

    .line 799
    :cond_8
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 775
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 816
    .end local v8    # "networkCount":I
    .end local v9    # "p":I
    :catch_0
    move-exception v2

    .line 817
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v12, "WifiDefaultApController"

    const-string v13, "checkWifiProfileLoaded - NullPointerException"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_a
    const-string v12, "WifiDefaultApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkWifiProfileLoaded : mWifiProfileLoaded("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private checkWifiVendorProfile(Z)V
    .locals 8
    .param p1, "bCheckNetworkName"    # Z

    .prologue
    .line 947
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1

    .line 948
    const-string v5, "WifiDefaultApController"

    const-string v6, "checkWifiVendorProfile - mDefaultApSsidList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 953
    .local v2, "networkCount":I
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "WifiDefaultApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWifiVendorProfile: mDefaultAp networkCount("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_2
    if-lez v2, :cond_0

    .line 955
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 956
    if-nez p1, :cond_4

    .line 957
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)V

    .line 955
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 959
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 960
    .local v3, "networkname":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 961
    .local v4, "spname":Ljava/lang/String;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "WifiDefaultApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mDefaultAp["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : spame=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), networkname=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_5
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 963
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1800()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 964
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 974
    .end local v1    # "i":I
    .end local v2    # "networkCount":I
    .end local v3    # "networkname":Ljava/lang/String;
    .end local v4    # "spname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "WifiDefaultApController"

    const-string v6, "checkWifiVendorProfile - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 967
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "i":I
    .restart local v2    # "networkCount":I
    .restart local v3    # "networkname":Ljava/lang/String;
    .restart local v4    # "spname":Ljava/lang/String;
    :cond_6
    :try_start_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1800()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 968
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private getGeneralNwInfo()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearGeneralNwInfoList()V

    .line 433
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)V
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 663
    const/4 v8, 0x0

    .line 665
    .local v8, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v8    # "in":Ljava/io/BufferedReader;
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v1, ""

    .line 668
    .local v1, "buf1":Ljava/lang/String;
    const-string v2, ""

    .line 669
    .local v2, "buf2":Ljava/lang/String;
    const-string v3, ""

    .line 670
    .local v3, "buf3":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "bufLine":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 671
    const-string v13, "mccmnc=\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 672
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 673
    .local v10, "mccmnc":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x22

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .end local v10    # "mccmnc":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v13, "}"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    const-string v1, ""

    .line 687
    const-string v2, ""

    .line 688
    const-string v3, ""

    goto :goto_0

    .line 674
    :cond_2
    const-string v13, "networkname=\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 675
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 676
    .local v11, "networkname":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 677
    goto :goto_1

    .end local v11    # "networkname":Ljava/lang/String;
    :cond_3
    const-string v13, "spname=\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 678
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 679
    .local v12, "spname":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x22

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    goto/16 :goto_1

    .line 695
    .end local v12    # "spname":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 697
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 705
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_8

    .line 706
    const-string v13, "WifiDefaultApController"

    const-string v14, "getGeneralNwInfoFromFile - mGeneralNwInfoMccmncList is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 718
    .end local v1    # "buf1":Ljava/lang/String;
    .end local v2    # "buf2":Ljava/lang/String;
    .end local v3    # "buf3":Ljava/lang/String;
    .end local v4    # "bufLine":Ljava/lang/String;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    return-void

    .line 698
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "buf1":Ljava/lang/String;
    .restart local v2    # "buf2":Ljava/lang/String;
    .restart local v3    # "buf3":Ljava/lang/String;
    .restart local v4    # "bufLine":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 699
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 700
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 691
    .end local v1    # "buf1":Ljava/lang/String;
    .end local v2    # "buf2":Ljava/lang/String;
    .end local v3    # "buf3":Ljava/lang/String;
    .end local v4    # "bufLine":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 692
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    if-eqz v8, :cond_6

    .line 697
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 698
    :catch_2
    move-exception v5

    .line 699
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 695
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_4
    if-eqz v8, :cond_7

    .line 697
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 700
    :cond_7
    throw v13

    .line 698
    :catch_3
    move-exception v5

    .line 699
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 710
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "buf1":Ljava/lang/String;
    .restart local v2    # "buf2":Ljava/lang/String;
    .restart local v3    # "buf3":Ljava/lang/String;
    .restart local v4    # "bufLine":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_8
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 712
    .local v6, "generalNwInfoCount":I
    const-string v13, "WifiDefaultApController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getGeneralNwInfoFromFile : generalNwInfoCount["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_9

    .line 714
    const-string v14, "WifiDefaultApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getGeneralNwInfoFromFile["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "]: mccmnc("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "), networkname("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "), spname("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ")"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v6    # "generalNwInfoCount":I
    .end local v7    # "i":I
    :cond_9
    move-object v8, v9

    .line 718
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 695
    .end local v1    # "buf1":Ljava/lang/String;
    .end local v2    # "buf2":Ljava/lang/String;
    .end local v3    # "buf3":Ljava/lang/String;
    .end local v4    # "bufLine":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 691
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private getPrevNwInfo()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 445
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getPrevNwInfoFromFile(Ljava/lang/String;)V

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->makePrevNwInfoFile()V

    goto :goto_0
.end method

.method private getPrevNwInfoFromFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 722
    const/4 v4, 0x0

    .line 724
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v0, ""

    .line 728
    .local v0, "buf1":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 729
    const-string v8, "networkname=\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 730
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, "networkname":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x22

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .end local v6    # "networkname":Ljava/lang/String;
    :cond_1
    const-string v8, "}"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 734
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 742
    :cond_2
    if-eqz v5, :cond_3

    .line 744
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 752
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_6

    .line 753
    const-string v8, "WifiDefaultApController"

    const-string v9, "getPrevNwInfoFromFile - mPrevNetworknameList is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 764
    .end local v0    # "buf1":Ljava/lang/String;
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    return-void

    .line 745
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buf1":Ljava/lang/String;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 747
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 738
    .end local v0    # "buf1":Ljava/lang/String;
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 739
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 742
    if-eqz v4, :cond_4

    .line 744
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 745
    :catch_2
    move-exception v2

    .line 746
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 742
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_5

    .line 744
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 747
    :cond_5
    throw v8

    .line 745
    :catch_3
    move-exception v2

    .line 746
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 757
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buf1":Ljava/lang/String;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_6
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 758
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 759
    .local v7, "prevNwInfoCount":I
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPrevNwInfoFromFile : prevNwInfoCount["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v7, :cond_7

    .line 761
    const-string v9, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPrevNwInfoFromFile["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: networkname("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    .end local v7    # "prevNwInfoCount":I
    :cond_7
    move-object v4, v5

    .line 764
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 742
    .end local v0    # "buf1":Ljava/lang/String;
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 738
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private getVendorApInfo()V
    .locals 4

    .prologue
    .line 407
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 410
    :cond_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$400()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 411
    :cond_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiDefaultApController"

    const-string v1, "getVendorApInfo: default_ap.conf is valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    .line 413
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_3
    const-string v0, "WifiDefaultApController"

    const-string v1, "getVendorApInfo - default_ap.conf is unvalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)V
    .locals 36
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 532
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v33

    if-eqz v33, :cond_0

    const-string v33, "WifiDefaultApController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile: path("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    const/4 v11, 0x0

    .line 536
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v33, Ljava/io/FileReader;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v12, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v30, ""

    .line 540
    .local v30, "ssidbuf":Ljava/lang/String;
    const-string v13, ""

    .line 541
    .local v13, "keymgmtbuf":Ljava/lang/String;
    const-string v32, ""

    .line 542
    .local v32, "wepkeybuf":Ljava/lang/String;
    const-string v22, ""

    .line 543
    .local v22, "prioritybuf":Ljava/lang/String;
    const-string v6, ""

    .line 544
    .local v6, "eapbuf":Ljava/lang/String;
    const-string v16, ""

    .line 545
    .local v16, "networknamebuf":Ljava/lang/String;
    const-string v28, ""

    .line 546
    .local v28, "spnamebuf":Ljava/lang/String;
    const-string v10, ""

    .line 547
    .local v10, "identitybuf":Ljava/lang/String;
    const-string v18, ""

    .line 548
    .local v18, "passwordbuf":Ljava/lang/String;
    const-string v20, ""

    .line 549
    .local v20, "phasebuf":Ljava/lang/String;
    const-string v24, ""

    .line 550
    .local v24, "pskbuf":Ljava/lang/String;
    const-string v7, ""

    .line 552
    .local v7, "hiddenssidbuf":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufLine":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 553
    const-string v33, "ssid=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 554
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 555
    .local v29, "ssid":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 557
    .end local v29    # "ssid":Ljava/lang/String;
    :cond_2
    const-string v33, "key_mgmt="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 558
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 559
    .local v26, "secure":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 561
    .end local v26    # "secure":Ljava/lang/String;
    :cond_3
    const-string v33, "wep_key0="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 562
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 563
    .local v31, "wepkey":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 565
    .end local v31    # "wepkey":Ljava/lang/String;
    :cond_4
    const-string v33, "priority="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 566
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 567
    .local v21, "priority":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 569
    .end local v21    # "priority":Ljava/lang/String;
    :cond_5
    const-string v33, "eap="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 570
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, "eap":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 573
    .end local v5    # "eap":Ljava/lang/String;
    :cond_6
    const-string v33, "networkname=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 574
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 575
    .local v15, "networkname":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 577
    .end local v15    # "networkname":Ljava/lang/String;
    :cond_7
    const-string v33, "spname=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 578
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 579
    .local v27, "spname":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 581
    .end local v27    # "spname":Ljava/lang/String;
    :cond_8
    const-string v33, "identity=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 582
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 583
    .local v9, "identity":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 585
    .end local v9    # "identity":Ljava/lang/String;
    :cond_9
    const-string v33, "password=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 586
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 587
    .local v17, "password":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v17

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 589
    .end local v17    # "password":Ljava/lang/String;
    :cond_a
    const-string v33, "phase2=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 590
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 591
    .local v19, "phase2":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 593
    .end local v19    # "phase2":Ljava/lang/String;
    :cond_b
    const-string v33, "psk=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 594
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 595
    .local v23, "psk":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 597
    .end local v23    # "psk":Ljava/lang/String;
    :cond_c
    const-string v33, "scan_ssid="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 598
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 599
    .local v25, "scan_ssid":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 602
    .end local v25    # "scan_ssid":Ljava/lang/String;
    :cond_d
    const-string v33, "}"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    const-string v30, ""

    .line 617
    const-string v13, ""

    .line 618
    const-string v32, ""

    .line 619
    const-string v22, ""

    .line 620
    const-string v6, ""

    .line 621
    const-string v16, ""

    .line 622
    const-string v28, ""

    .line 623
    const-string v10, ""

    .line 624
    const-string v18, ""

    .line 625
    const-string v20, ""

    .line 626
    const-string v24, ""

    .line 627
    const-string v7, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 634
    :cond_e
    if-eqz v12, :cond_f

    .line 636
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    if-nez v33, :cond_12

    .line 645
    const-string v33, "WifiDefaultApController"

    const-string v34, "getVendorApInfoFromFile - mDefaultApSsidList is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 659
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v6    # "eapbuf":Ljava/lang/String;
    .end local v7    # "hiddenssidbuf":Ljava/lang/String;
    .end local v10    # "identitybuf":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "keymgmtbuf":Ljava/lang/String;
    .end local v16    # "networknamebuf":Ljava/lang/String;
    .end local v18    # "passwordbuf":Ljava/lang/String;
    .end local v20    # "phasebuf":Ljava/lang/String;
    .end local v22    # "prioritybuf":Ljava/lang/String;
    .end local v24    # "pskbuf":Ljava/lang/String;
    .end local v28    # "spnamebuf":Ljava/lang/String;
    .end local v30    # "ssidbuf":Ljava/lang/String;
    .end local v32    # "wepkeybuf":Ljava/lang/String;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :cond_10
    :goto_1
    return-void

    .line 637
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v6    # "eapbuf":Ljava/lang/String;
    .restart local v7    # "hiddenssidbuf":Ljava/lang/String;
    .restart local v10    # "identitybuf":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "keymgmtbuf":Ljava/lang/String;
    .restart local v16    # "networknamebuf":Ljava/lang/String;
    .restart local v18    # "passwordbuf":Ljava/lang/String;
    .restart local v20    # "phasebuf":Ljava/lang/String;
    .restart local v22    # "prioritybuf":Ljava/lang/String;
    .restart local v24    # "pskbuf":Ljava/lang/String;
    .restart local v28    # "spnamebuf":Ljava/lang/String;
    .restart local v30    # "ssidbuf":Ljava/lang/String;
    .restart local v32    # "wepkeybuf":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 638
    .local v4, "e":Ljava/io/IOException;
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 639
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 630
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "eapbuf":Ljava/lang/String;
    .end local v7    # "hiddenssidbuf":Ljava/lang/String;
    .end local v10    # "identitybuf":Ljava/lang/String;
    .end local v13    # "keymgmtbuf":Ljava/lang/String;
    .end local v16    # "networknamebuf":Ljava/lang/String;
    .end local v18    # "passwordbuf":Ljava/lang/String;
    .end local v20    # "phasebuf":Ljava/lang/String;
    .end local v22    # "prioritybuf":Ljava/lang/String;
    .end local v24    # "pskbuf":Ljava/lang/String;
    .end local v28    # "spnamebuf":Ljava/lang/String;
    .end local v30    # "ssidbuf":Ljava/lang/String;
    .end local v32    # "wepkeybuf":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 631
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 634
    if-eqz v11, :cond_10

    .line 636
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 637
    :catch_2
    move-exception v4

    .line 638
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    :goto_3
    if-eqz v11, :cond_11

    .line 636
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 639
    :cond_11
    throw v33

    .line 637
    :catch_3
    move-exception v4

    .line 638
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 649
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v6    # "eapbuf":Ljava/lang/String;
    .restart local v7    # "hiddenssidbuf":Ljava/lang/String;
    .restart local v10    # "identitybuf":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "keymgmtbuf":Ljava/lang/String;
    .restart local v16    # "networknamebuf":Ljava/lang/String;
    .restart local v18    # "passwordbuf":Ljava/lang/String;
    .restart local v20    # "phasebuf":Ljava/lang/String;
    .restart local v22    # "prioritybuf":Ljava/lang/String;
    .restart local v24    # "pskbuf":Ljava/lang/String;
    .restart local v28    # "spnamebuf":Ljava/lang/String;
    .restart local v30    # "ssidbuf":Ljava/lang/String;
    .restart local v32    # "wepkeybuf":Ljava/lang/String;
    :cond_12
    const/16 v33, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$602(Z)Z

    .line 650
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v33

    if-eqz v33, :cond_13

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 652
    .local v14, "networkCount":I
    const-string v33, "WifiDefaultApController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile : mDefaultAp networkCount("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v14, :cond_13

    .line 654
    const-string v34, "WifiDefaultApController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile : mDefaultAp["

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "] : ssid ("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), psk("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), securityType("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), Priority("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), scan_ssid("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), Eap("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), NetworkName("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), SPName("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ")"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .end local v8    # "i":I
    .end local v14    # "networkCount":I
    :cond_13
    move-object v11, v12

    .line 659
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 634
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v6    # "eapbuf":Ljava/lang/String;
    .end local v7    # "hiddenssidbuf":Ljava/lang/String;
    .end local v10    # "identitybuf":Ljava/lang/String;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v13    # "keymgmtbuf":Ljava/lang/String;
    .end local v16    # "networknamebuf":Ljava/lang/String;
    .end local v18    # "passwordbuf":Ljava/lang/String;
    .end local v20    # "phasebuf":Ljava/lang/String;
    .end local v22    # "prioritybuf":Ljava/lang/String;
    .end local v24    # "pskbuf":Ljava/lang/String;
    .end local v28    # "spnamebuf":Ljava/lang/String;
    .end local v30    # "ssidbuf":Ljava/lang/String;
    .end local v32    # "wepkeybuf":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v33

    move-object v11, v12

    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 630
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v11, v12

    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private makePrevNwInfoFile()V
    .locals 18

    .prologue
    .line 452
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v9, ""

    .line 454
    .local v9, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .line 455
    .local v7, "mCurNetworkName":Ljava/lang/String;
    const-string v8, ""

    .line 456
    .local v8, "mMCCMNC":Ljava/lang/String;
    const-string v10, ""

    .line 458
    .local v10, "mSPName":Ljava/lang/String;
    const-string v15, "gsm.sim.operator.numeric"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 459
    const-string v15, "gsm.sim.operator.alpha"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 460
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "makePrevNwInfoFile mMCCMNC =("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), mSPName =("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    if-nez v15, :cond_2

    .line 463
    const-string v15, "WifiDefaultApController"

    const-string v16, "makePrevNwInfoFile - mGeneralNwInfoMccmncList is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 468
    .local v5, "generalNwInfoCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 470
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 471
    .local v11, "mccmnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 472
    .local v12, "networkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 475
    .local v14, "spname":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 476
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 477
    const-string v15, ""

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_a

    .line 478
    move-object v7, v14

    .line 492
    .end local v5    # "generalNwInfoCount":I
    .end local v6    # "j":I
    .end local v11    # "mccmnc":Ljava/lang/String;
    .end local v12    # "networkname":Ljava/lang/String;
    .end local v14    # "spname":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mCurNetworkName =("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2600()Z

    move-result v15

    if-nez v15, :cond_1

    .line 495
    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 496
    const-string v15, "network={\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v15, ""

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    networkname=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_4
    const-string v15, "}\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 503
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 504
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "makePrevNwInfoFile as mCurNetworkName "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_5
    const/4 v3, 0x0

    .line 507
    .local v3, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2200()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 508
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2200()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 511
    :cond_6
    :try_start_2
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2200()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 512
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    const-string v16, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 513
    new-instance v4, Ljava/io/FileOutputStream;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2200()Ljava/io/File;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .local v4, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 523
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    move-object v3, v4

    .line 528
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :cond_8
    :goto_4
    const/4 v15, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2602(Z)Z

    goto/16 :goto_0

    .line 482
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "generalNwInfoCount":I
    .restart local v6    # "j":I
    .restart local v11    # "mccmnc":Ljava/lang/String;
    .restart local v12    # "networkname":Ljava/lang/String;
    .restart local v14    # "spname":Ljava/lang/String;
    :cond_9
    move-object v7, v12

    .line 483
    goto/16 :goto_2

    .line 468
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 488
    .end local v5    # "generalNwInfoCount":I
    .end local v6    # "j":I
    .end local v11    # "mccmnc":Ljava/lang/String;
    .end local v12    # "networkname":Ljava/lang/String;
    .end local v14    # "spname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v15, "WifiDefaultApController"

    const-string v16, "makePrevNwInfoFile - NullPointerException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 499
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 500
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string v15, "WifiDefaultApController"

    const-string v16, "makePrevNwInfoFile -NullPointerException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 524
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 525
    .local v2, "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 527
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 515
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 516
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string v15, "WifiDefaultApController"

    const-string v16, "PrevNetworkName File Create Not Found "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 524
    :catch_4
    move-exception v2

    .line 525
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 517
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 518
    .local v1, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 523
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    .line 524
    :catch_6
    move-exception v2

    .line 525
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 519
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_9
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PrevNetworkName create file failed "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 523
    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_4

    .line 524
    :catch_8
    move-exception v2

    .line 525
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 522
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 523
    :goto_8
    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 526
    :cond_b
    :goto_9
    throw v15

    .line 524
    :catch_9
    move-exception v2

    .line 525
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v16, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 522
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v15

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 519
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 517
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 515
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method private removeChangedWifiProfile()V
    .locals 19

    .prologue
    .line 980
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 981
    .local v9, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 982
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v7, ""

    .line 983
    .local v7, "mKeymgmt":Ljava/lang/String;
    const-string v6, ""

    .line 986
    .local v6, "mEap":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1800()Ljava/lang/String;

    move-result-object v15

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 987
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    if-nez v15, :cond_1

    .line 988
    const-string v15, "WifiDefaultApController"

    const-string v16, "removeChangedWifiProfile - mDefaultApSsidList is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 993
    .local v10, "networkCount":I
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeChangedWifiProfile: mDefaultAp networkCount("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_2
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_1
    if-ge v11, v10, :cond_f

    .line 996
    if-eqz v2, :cond_e

    .line 997
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 998
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 999
    const-string v7, "WPA-PSK"

    .line 1008
    :goto_3
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 1009
    const-string v6, "SIM"

    .line 1016
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1017
    .local v14, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1018
    .local v13, "securityType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1019
    .local v12, "priority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1021
    .local v4, "eap":Ljava/lang/String;
    iget-boolean v15, v1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v15, :cond_3

    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, ""

    if-eq v4, v15, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1023
    :cond_4
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1024
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeChangedWifiProfile: mDefaultAp("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), ssid("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), securityType("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), eap("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_5
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeChangedWifiProfile: remove WifiConfig profile ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), mKeymgmt("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), mEap("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1028
    new-instance v15, Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1029
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v15, :cond_7

    .line 1030
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "WifiDefaultApController"

    const-string v16, "isVendorSpecificSsid value reset to zero for remove wifi profile"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    const-string v17, "vendor_spec_ssid"

    const-string v18, "0"

    invoke-virtual/range {v15 .. v18}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1033
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1036
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v15

    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    .line 1037
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1038
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 1039
    const-string v7, ""

    .line 1040
    const-string v6, ""

    .line 1041
    const/4 v15, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1902(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1063
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "eap":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "networkCount":I
    .end local v11    # "p":I
    .end local v12    # "priority":Ljava/lang/String;
    .end local v13    # "securityType":Ljava/lang/String;
    .end local v14    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1064
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v15, "WifiDefaultApController"

    const-string v16, "removeChangedWifiProfile - NullPointerException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1000
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "networkCount":I
    .restart local v11    # "p":I
    :cond_8
    :try_start_1
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_9

    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1001
    :cond_9
    const-string v7, "WPA-EAP IEEE8021X"

    goto/16 :goto_3

    .line 1002
    :cond_a
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1003
    const-string v7, "NONE"

    goto/16 :goto_3

    .line 1005
    :cond_b
    const-string v7, ""

    goto/16 :goto_3

    .line 1010
    :cond_c
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1011
    const-string v6, "AKA"

    goto/16 :goto_4

    .line 1013
    :cond_d
    const-string v6, ""

    goto/16 :goto_4

    .line 995
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1048
    .end local v10    # "networkCount":I
    .end local v11    # "p":I
    :cond_f
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1049
    const-string v8, ""

    .line 1050
    .local v8, "mTempPrevNetworkName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_10

    .line 1051
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "mTempPrevNetworkName":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1054
    .restart local v8    # "mTempPrevNetworkName":Ljava/lang/String;
    :cond_10
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_11

    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeChangedWifiProfile: mMatchedNetworkName=("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), mTempPrevNetworkName=("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_11
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1056
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Z

    move-result v15

    if-nez v15, :cond_0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1057
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "WifiDefaultApController"

    const-string v16, "As network changed, remove DefaultApCheck file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_12
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 1059
    const/4 v15, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4102(Z)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
