.class final Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 144
    .local v1, "wm":Landroid/view/IWindowManager;
    iget-boolean v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v2, :cond_0

    .line 145
    iget v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 152
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 147
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v2, "RotationPolicy"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
