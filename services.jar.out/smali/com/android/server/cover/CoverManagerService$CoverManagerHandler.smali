.class final Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 234
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->updateCoverWindowSize()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$500(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
