.class public Landroid/widget/HeaderViewHorizontalListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewHorizontalListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/widget/HeaderViewHorizontalListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 54
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mIsFilterable:Z

    .line 56
    if-nez p1, :cond_0

    .line 57
    sget-object v0, Landroid/widget/HeaderViewHorizontalListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 62
    :goto_0
    if-nez p2, :cond_1

    .line 63
    sget-object v0, Landroid/widget/HeaderViewHorizontalListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 68
    :goto_1
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HeaderViewHorizontalListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HeaderViewHorizontalListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 71
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 65
    :cond_1
    iput-object p2, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 68
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView$FixedViewInfo;

    .line 88
    .local v1, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iget-boolean v2, v1, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 139
    iget-object v1, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 140
    iget-boolean v1, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v2

    .line 175
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 176
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 195
    :goto_0
    return-object v3

    .line 180
    :cond_0
    sub-int v1, p1, v2

    .line 181
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 182
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 184
    if-ge v1, v0, :cond_1

    .line 185
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 190
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 191
    const/4 v3, 0x0

    goto :goto_0

    .line 195
    :cond_2
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v2

    .line 200
    .local v2, "numHeaders":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 201
    sub-int v1, p1, v2

    .line 202
    .local v1, "adjPosition":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 203
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 204
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 207
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v2

    .line 245
    .local v2, "numHeaders":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 246
    sub-int v1, p1, v2

    .line 247
    .local v1, "adjPosition":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 248
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 249
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 253
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v2

    .line 220
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 221
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 240
    :goto_0
    return-object v3

    .line 225
    :cond_0
    sub-int v1, p1, v2

    .line 226
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 227
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 229
    if-ge v1, v0, :cond_1

    .line 230
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 235
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 236
    const/4 v3, 0x0

    goto :goto_0

    .line 240
    :cond_2
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/widget/HeaderViewHorizontalListAdapter;->getHeadersCount()I

    move-result v2

    .line 149
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 150
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 169
    :goto_0
    return v3

    .line 154
    :cond_0
    sub-int v1, p1, v2

    .line 155
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 156
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 158
    if-ge v1, v0, :cond_1

    .line 159
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 164
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 165
    const/4 v3, 0x0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v3, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 267
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 115
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView$FixedViewInfo;

    .line 116
    .local v1, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iget-object v4, v1, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 117
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 127
    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :goto_1
    return v3

    .line 114
    .restart local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 127
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 98
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView$FixedViewInfo;

    .line 99
    .local v1, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iget-object v4, v1, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 100
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 102
    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 110
    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :goto_1
    return v3

    .line 97
    .restart local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 110
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 270
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/widget/HeaderViewHorizontalListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 273
    :cond_0
    return-void
.end method
