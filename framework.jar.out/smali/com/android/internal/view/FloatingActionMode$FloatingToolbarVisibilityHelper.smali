.class final Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarVisibilityHelper"
.end annotation


# instance fields
.field private mActive:Z

.field private mHideRequested:Z

.field private mMoving:Z

.field private mOutOfBounds:Z

.field private final mToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mWindowFocused:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 372
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 373
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 377
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 378
    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 379
    iput-boolean v1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 381
    iput-boolean v1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 382
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 386
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 387
    return-void
.end method

.method public setHideRequested(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 391
    return-void
.end method

.method public setMoving(Z)V
    .locals 0
    .param p1, "moving"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 395
    return-void
.end method

.method public setOutOfBounds(Z)V
    .locals 0
    .param p1, "outOfBounds"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 399
    return-void
.end method

.method public setWindowFocused(Z)V
    .locals 0
    .param p1, "windowFocused"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 403
    return-void
.end method

.method public updateToolbarVisibility()V
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    if-nez v0, :cond_2

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->hide()V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->show()Lcom/android/internal/widget/FloatingToolbar;

    goto :goto_0
.end method
