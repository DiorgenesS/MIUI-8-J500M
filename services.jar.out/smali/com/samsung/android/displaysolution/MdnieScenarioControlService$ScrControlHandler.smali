.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 853
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 854
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 858
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 933
    :goto_0
    return-void

    .line 860
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    goto :goto_0

    .line 865
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    goto :goto_0

    .line 871
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 875
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 879
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 883
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 887
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 891
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_0

    .line 895
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "LOW"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "MID"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "HIGH"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string v1, "OUT"

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 915
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 919
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 923
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 927
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$4000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_10
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
