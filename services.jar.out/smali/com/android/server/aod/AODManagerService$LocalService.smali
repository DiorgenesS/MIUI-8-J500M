.class final Lcom/android/server/aod/AODManagerService$LocalService;
.super Lcom/samsung/android/aod/AODManagerInternal;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "x1"    # Lcom/android/server/aod/AODManagerService$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public isAODState()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public startAOD()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->startAODInternal()Z

    move-result v0

    return v0
.end method

.method public stopAOD()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopAODInternal()Z

    move-result v0

    return v0
.end method

.method public wakeUp()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->wakeUpInternal()Z

    move-result v0

    return v0
.end method
