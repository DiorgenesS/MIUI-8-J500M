.class final Lcom/android/server/lights/LightsService$SvcLEDHandler;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/lights/LightsService;

    .line 1079
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1080
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1084
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1091
    :goto_0
    return-void

    .line 1086
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$5200(Lcom/android/server/lights/LightsService;)V

    goto :goto_0

    .line 1084
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
