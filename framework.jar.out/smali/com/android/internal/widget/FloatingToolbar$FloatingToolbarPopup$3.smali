.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # invokes: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    .line 398
    return-void
.end method
