.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/util/HashMap;

    check-cast v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStateForEvent(I)Ljava/util/HashMap;
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public removeEvents(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 1529
    const v1, -0xc001

    and-int v0, p1, v1

    .line 1530
    .local v0, "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1531
    return-void
.end method

.method public updateState(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "poolIdx"    # I

    .prologue
    const v5, -0xc001

    const/4 v3, 0x0

    .line 1486
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_5

    .line 1487
    and-int v1, p1, v5

    .line 1488
    .local v1, "idx":I
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v4, v1

    .line 1489
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v0, :cond_0

    .line 1490
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1491
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v0, v4, v1

    .line 1493
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 1494
    .local v2, "uids":Landroid/util/SparseIntArray;
    if-nez v2, :cond_1

    .line 1495
    new-instance v2, Landroid/util/SparseIntArray;

    .end local v2    # "uids":Landroid/util/SparseIntArray;
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 1496
    .restart local v2    # "uids":Landroid/util/SparseIntArray;
    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    :cond_1
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 1525
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v1    # "idx":I
    .end local v2    # "uids":Landroid/util/SparseIntArray;
    :cond_2
    :goto_0
    return v3

    .line 1502
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v1    # "idx":I
    .restart local v2    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    invoke-virtual {v2, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1525
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v1    # "idx":I
    .end local v2    # "uids":Landroid/util/SparseIntArray;
    :cond_4
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1503
    :cond_5
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_4

    .line 1504
    and-int v1, p1, v5

    .line 1505
    .restart local v1    # "idx":I
    iget-object v4, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v4, v1

    .line 1506
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_2

    .line 1510
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 1511
    .restart local v2    # "uids":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_2

    .line 1515
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 1516
    if-ltz v1, :cond_2

    .line 1520
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1521
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-gtz v3, :cond_4

    .line 1522
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
