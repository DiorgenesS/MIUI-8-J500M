.class Landroid/widget/AbsListView$9;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 9972
    iput-object p1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 9974
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->playQCBtnFadeIn()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)V

    .line 9975
    return-void
.end method
