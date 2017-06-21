.class final Landroid/view/ViewRootImpl$RunQueue;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue$HandlerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 8697
    return-void
.end method


# virtual methods
.method executeActions(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 8684
    iget-object v5, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 8685
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 8686
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8688
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 8689
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    .line 8690
    .local v2, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v4, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8688
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8693
    .end local v2    # "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8694
    monitor-exit v5

    .line 8695
    return-void

    .line 8694
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8657
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 8658
    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 8661
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$1;)V

    .line 8662
    .local v0, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 8663
    iput-wide p2, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    .line 8665
    iget-object v2, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 8666
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8667
    monitor-exit v2

    .line 8668
    return-void

    .line 8667
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCallbacks(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8671
    new-instance v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$1;)V

    .line 8672
    .local v1, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 8674
    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 8675
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 8677
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8680
    monitor-exit v3

    .line 8681
    return-void

    .line 8680
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
