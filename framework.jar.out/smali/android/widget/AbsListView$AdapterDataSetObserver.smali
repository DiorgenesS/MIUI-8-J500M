.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8697
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 8700
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8701
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8702
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 8706
    :cond_0
    :goto_0
    return-void

    .line 8703
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8704
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->onSectionsChanged()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 8710
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8711
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8712
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 8716
    :cond_0
    :goto_0
    return-void

    .line 8713
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8714
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwFluidScroll:Landroid/widget/FluidScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->onSectionsChanged()V

    goto :goto_0
.end method
