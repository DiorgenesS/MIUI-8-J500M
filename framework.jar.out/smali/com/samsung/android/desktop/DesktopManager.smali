.class public final Lcom/samsung/android/desktop/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;
    }
.end annotation


# static fields
.field public static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field public static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEventListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

.field private mService:Lcom/samsung/android/desktop/IDesktop;

.field mServiceCallback:Lcom/samsung/android/desktop/IDesktopStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/desktop/DesktopManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/desktop/IDesktop;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/desktop/IDesktop;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    .line 28
    iput-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .line 60
    new-instance v1, Lcom/samsung/android/desktop/DesktopManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktop/DesktopManager$1;-><init>(Lcom/samsung/android/desktop/DesktopManager;)V

    iput-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mServiceCallback:Lcom/samsung/android/desktop/IDesktopStateCallback;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mContext:Landroid/content/Context;

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mServiceCallback:Lcom/samsung/android/desktop/IDesktopStateCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/desktop/IDesktop;->registerStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isDeskDockConnected()Z
    .locals 3

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2}, Lcom/samsung/android/desktop/IDesktop;->isDesktopDockConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isKnoxDesktopMode()Z
    .locals 3

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager;->mService:Lcom/samsung/android/desktop/IDesktop;

    invoke-interface {v2}, Lcom/samsung/android/desktop/IDesktop;->isKnoxDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .line 85
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mEventListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    .line 96
    :cond_0
    return-void
.end method
