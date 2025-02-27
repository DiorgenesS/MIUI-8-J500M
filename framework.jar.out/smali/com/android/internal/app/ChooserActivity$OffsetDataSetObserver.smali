.class Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetDataSetObserver"
.end annotation


# instance fields
.field private mCachedView:Landroid/view/View;

.field private mCachedViewType:I

.field private final mListView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V
    .locals 1
    .param p2, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1533
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    .line 1537
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    .line 1538
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 10

    .prologue
    .line 1542
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v7, :cond_0

    .line 1568
    :goto_0
    return-void

    .line 1546
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v0

    .line 1547
    .local v0, "chooserTargetRows":I
    const/4 v3, 0x0

    .line 1548
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1549
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v7

    add-int v4, v7, v2

    .line 1550
    .local v4, "pos":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    move-result v6

    .line 1551
    .local v6, "vt":I
    iget v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    if-eq v6, v7, :cond_1

    .line 1552
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    .line 1554
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1555
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    check-cast v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget v1, v7, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 1557
    .local v1, "height":I
    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->access$1200(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v8

    # invokes: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F
    invoke-static {v8, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$1300(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v3, v7

    .line 1559
    if-ltz v6, :cond_2

    .line 1560
    iput v6, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    .line 1561
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    .line 1548
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1563
    :cond_2
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    goto :goto_2

    .line 1567
    .end local v1    # "height":I
    .end local v4    # "pos":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "vt":I
    :cond_3
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v7, v7, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    goto :goto_0
.end method
