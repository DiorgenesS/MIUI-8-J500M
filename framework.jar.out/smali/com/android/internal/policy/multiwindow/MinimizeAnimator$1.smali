.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 127
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 128
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 129
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 130
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 132
    return-void
.end method
