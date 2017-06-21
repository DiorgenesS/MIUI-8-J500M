.class final Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;
.super Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;
.source "AlwaysOnDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AlwaysOnDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlwaysOnDisplayServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;Lcom/samsung/android/aod/AlwaysOnDisplayService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/aod/AlwaysOnDisplayService;
    .param p2, "x1"    # Lcom/samsung/android/aod/AlwaysOnDisplayService$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;)V

    return-void
.end method


# virtual methods
.method public requestHide()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    # getter for: Lcom/samsung/android/aod/AlwaysOnDisplayService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->access$100(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$3;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public startAOD()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    # getter for: Lcom/samsung/android/aod/AlwaysOnDisplayService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->access$100(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$1;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public stopAOD()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    # getter for: Lcom/samsung/android/aod/AlwaysOnDisplayService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->access$100(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$2;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method
