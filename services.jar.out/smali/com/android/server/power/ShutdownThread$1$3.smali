.class Lcom/android/server/power/ShutdownThread$1$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$1;->animateDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$1;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$1;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$1$3;->this$0:Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1$3;->this$0:Lcom/android/server/power/ShutdownThread$1;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$1;->dismiss()V

    .line 615
    return-void
.end method
