.class Lcom/android/server/policy/sec/MultitapKeyManager$3;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager$3;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$3;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # getter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$300(Lcom/android/server/policy/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager$3;->this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$302(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    .line 311
    :cond_0
    return-void
.end method
