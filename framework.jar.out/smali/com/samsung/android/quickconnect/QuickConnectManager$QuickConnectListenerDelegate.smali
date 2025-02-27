.class Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
.super Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/quickconnect/QuickConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickConnectListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .line 230
    new-instance v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;

    iget-object v1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V

    iput-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 231
    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onQuickConnectCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    return-void
.end method
