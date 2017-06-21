.class Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverPagerAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2822
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2823
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 2824
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2825
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 2876
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 2877
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2887
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2900(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2829
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 12
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x0

    .line 2839
    const/4 v6, 0x0

    .line 2845
    .local v6, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->access$2900(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 2847
    .local v0, "gridResolveListAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109014e

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2848
    const v7, 0x10204de

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 2849
    .local v1, "gridView":Landroid/widget/GridView;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2852
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v2, v7}, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 2853
    .local v2, "listener":Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2854
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2856
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getCount()I

    move-result v3

    .line 2857
    .local v3, "nCount":I
    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mTotalCount:I
    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->access$3000(Lcom/android/internal/app/ResolverActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I
    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 2858
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v4

    .line 2859
    .local v4, "paddingLeft":I
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v5

    .line 2861
    .local v5, "paddingRight":I
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2862
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->setGravity(I)V

    .line 2863
    invoke-virtual {v1, v4, v10, v5, v10}, Landroid/widget/GridView;->setPadding(IIII)V

    move-object v7, v6

    .line 2864
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2870
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    :goto_0
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v6, v10}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;I)V

    .line 2871
    return-object v6

    .line 2866
    .restart local p1    # "pager":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I
    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2867
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setGravity(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2881
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2884
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2885
    return-void
.end method
