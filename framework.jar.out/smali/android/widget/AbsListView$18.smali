.class Landroid/widget/AbsListView$18;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->twSetFluidScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Z)V
    .locals 0

    .prologue
    .line 10453
    iput-object p1, p0, Landroid/widget/AbsListView$18;->this$0:Landroid/widget/AbsListView;

    iput-boolean p2, p0, Landroid/widget/AbsListView$18;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10456
    iget-object v0, p0, Landroid/widget/AbsListView$18;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, p0, Landroid/widget/AbsListView$18;->val$enabled:Z

    # invokes: Landroid/widget/AbsListView;->twSetFluidScrollerEnabledUiThread(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$7500(Landroid/widget/AbsListView;Z)V

    .line 10457
    return-void
.end method
