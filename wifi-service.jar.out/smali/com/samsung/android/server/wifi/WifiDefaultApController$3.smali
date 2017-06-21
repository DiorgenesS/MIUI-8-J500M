.class Lcom/samsung/android/server/wifi/WifiDefaultApController$3;
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
    .line 300
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_generalinfo_nwinfo"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "generalinfonw":Ljava/lang/String;
    const/4 v2, 0x0

    .line 306
    .local v2, "generalFW":Ljava/io/FileOutputStream;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    const-string v5, "WifiDefaultApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String Matched General Info List"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    const-string v5, "WifiDefaultApController"

    const-string v6, "GeneralInfo file delete is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 315
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearGeneralNwInfoList()V

    .line 317
    :try_start_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 318
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 319
    new-instance v3, Ljava/io/FileOutputStream;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$700()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .local v3, "generalFW":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 334
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 330
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e2":Ljava/lang/Exception;
    const-string v5, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 333
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 321
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "WifiDefaultApController"

    const-string v6, "GeneralNwInfo File Create Not Found "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 330
    :catch_2
    move-exception v1

    .line 331
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v5, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 330
    :catch_4
    move-exception v1

    .line 331
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v5, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v5, "WifiDefaultApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generalinfofilepath create file failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 329
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 330
    :catch_6
    move-exception v1

    .line 331
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v5, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 329
    :goto_4
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 332
    :cond_4
    :goto_5
    throw v5

    .line 330
    :catch_7
    move-exception v1

    .line 331
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 328
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 325
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 323
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 321
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
