.class Lcom/samsung/android/multiwindow/ui/GuideView$1;
.super Ljava/lang/Object;
.source "GuideView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/ui/GuideView;->dismissAfterAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/multiwindow/ui/GuideView;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView$1;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 187
    const-string v0, "GuideView"

    const-string v1, "dismissAfterAnim(), onAnimationEnd, mDismissDeferred=true, dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView$1;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/multiwindow/ui/GuideView;->mDismissDeferred:Z
    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->access$002(Lcom/samsung/android/multiwindow/ui/GuideView;Z)Z

    .line 189
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView$1;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView$1;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 191
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView$1;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/multiwindow/ui/GuideView;->mDismissDeferred:Z
    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->access$002(Lcom/samsung/android/multiwindow/ui/GuideView;Z)Z

    .line 181
    const-string v0, "GuideView"

    const-string v1, "dismissAfterAnim(), onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method
