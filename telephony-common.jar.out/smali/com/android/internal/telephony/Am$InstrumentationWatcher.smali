.class Lcom/android/internal/telephony/Am$InstrumentationWatcher;
.super Landroid/app/IInstrumentationWatcher$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentationWatcher"
.end annotation


# instance fields
.field private mFinished:Z

.field private mRawMode:Z

.field final synthetic this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Am;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1607
    iput-object p1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Landroid/app/IInstrumentationWatcher$Stub;-><init>()V

    .line 1608
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z

    .line 1609
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/Am;
    .param p2, "x1"    # Lcom/android/internal/telephony/Am$1;

    .prologue
    .line 1607
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;-><init>(Lcom/android/internal/telephony/Am;)V

    return-void
.end method


# virtual methods
.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .prologue
    .line 1644
    monitor-enter p0

    .line 1646
    const/4 v2, 0x0

    .line 1647
    .local v2, "pretty":Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 1648
    const-string v3, "stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1650
    :cond_0
    if-eqz v2, :cond_1

    .line 1651
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1661
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z

    .line 1662
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1663
    monitor-exit p0

    .line 1664
    return-void

    .line 1653
    :cond_1
    if-eqz p3, :cond_2

    .line 1654
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1655
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1663
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1659
    :cond_2
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .prologue
    .line 1621
    monitor-enter p0

    .line 1623
    const/4 v2, 0x0

    .line 1624
    .local v2, "pretty":Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 1625
    const-string v3, "stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1627
    :cond_0
    if-eqz v2, :cond_1

    .line 1628
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1638
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1639
    monitor-exit p0

    .line 1640
    return-void

    .line 1630
    :cond_1
    if-eqz p3, :cond_2

    .line 1631
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1632
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1639
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1636
    :cond_2
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setRawOutput(Z)V
    .locals 0
    .param p1, "rawMode"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    .line 1618
    return-void
.end method

.method public waitForFinish()Z
    .locals 4

    .prologue
    .line 1667
    monitor-enter p0

    .line 1668
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1670
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->this$0:Lcom/android/internal/telephony/Am;

    # getter for: Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/internal/telephony/Am;->access$200(Lcom/android/internal/telephony/Am;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1671
    const/4 v1, 0x0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1679
    :goto_1
    return v1

    .line 1673
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1678
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1679
    const/4 v1, 0x1

    goto :goto_1
.end method
