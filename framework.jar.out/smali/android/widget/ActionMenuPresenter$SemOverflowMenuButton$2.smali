.class Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->semInvalidateBadge(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;->this$1:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;->this$1:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->access$1302(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;Z)Z

    .line 1234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1238
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton$2;->this$1:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    const/4 v1, 0x1

    # setter for: Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mPerformedBadgeAnimation:Z
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->access$1302(Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;Z)Z

    .line 1229
    return-void
.end method
