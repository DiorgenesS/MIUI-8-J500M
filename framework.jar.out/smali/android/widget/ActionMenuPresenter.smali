.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$SemOverflowText;,
        Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemOverflowImage;,
        Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mExpandedActionViewsExclusive:Z

.field private mHasCocktailBar:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mIsThemeDeviceDefaultLightFamily:Z

.field private mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictWidthLimit:Z

.field private mUseTextItemMode:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 165
    const v2, 0x109001d

    const v5, 0x109001c

    invoke-direct {p0, p1, v2, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 110
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 118
    new-instance v2, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 123
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 125
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 130
    new-instance v2, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 140
    new-instance v2, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 161
    iput-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z

    .line 169
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 170
    .local v1, "outValue":Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 171
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bd

    invoke-virtual {v2, v5, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bf

    invoke-virtual {v2, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 173
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    .line 174
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultLightFamily:Z

    .line 176
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11200d9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    .line 179
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z

    .line 181
    return-void

    :cond_0
    move v2, v4

    .line 173
    goto :goto_0

    :cond_1
    move v2, v4

    .line 174
    goto :goto_1

    :cond_2
    move v3, v4

    .line 176
    goto :goto_2
.end method

.method static synthetic access$100(Landroid/widget/ActionMenuPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->isSupportOverlapSubMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->runItemAnimations()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    return-object v0
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .locals 8
    .param p1, "preLayout"    # Z

    .prologue
    .line 393
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    .line 394
    .local v6, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 395
    .local v1, "count":I
    if-eqz p1, :cond_1

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 396
    .local v5, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 397
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 399
    .local v3, "id":I
    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    new-instance v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v4, v0, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 401
    .local v4, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "items":Landroid/util/SparseArray;
    :cond_1
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    goto :goto_0

    .line 404
    .restart local v2    # "i":I
    .restart local v5    # "items":Landroid/util/SparseArray;
    :cond_2
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 706
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 707
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 717
    :cond_0
    :goto_0
    return-object v0

    .line 709
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 710
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 711
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 712
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 710
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 717
    goto :goto_0
.end method

.method private isSupportOverlapSubMenu()Z
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultLightFamily:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private runItemAnimations()V
    .locals 20

    .prologue
    .line 415
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_b

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 417
    .local v4, "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 418
    .local v9, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 419
    .local v12, "postLayoutIndex":I
    if-ltz v12, :cond_8

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 423
    .local v8, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v13, 0x0

    .line 424
    .local v13, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x0

    .line 425
    .local v14, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 426
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v18, v0

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 429
    :cond_0
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 430
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v18, v0

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 433
    :cond_1
    if-nez v13, :cond_2

    if-eqz v14, :cond_5

    .line 434
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 435
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 436
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_3

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v15, :cond_3

    .line 437
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 434
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 441
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_4
    if-eqz v13, :cond_7

    .line 442
    if-eqz v14, :cond_6

    .line 443
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 451
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 452
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 453
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x0

    invoke-direct {v5, v4, v8, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 455
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v15, Landroid/widget/ActionMenuPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 415
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 446
    .restart local v6    # "j":I
    .restart local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .restart local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 449
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 471
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "j":I
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    .line 472
    .local v10, "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_a

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 474
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_9

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 475
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 476
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 472
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 479
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_a
    iget-object v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 482
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    iget-object v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 483
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 484
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 485
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x2

    invoke-direct {v5, v4, v9, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 486
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v15, Landroid/widget/ActionMenuPresenter$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_3

    .line 501
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "id":I
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v9    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    .end local v12    # "postLayoutIndex":I
    :cond_b
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_f

    .line 502
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 503
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 504
    .restart local v12    # "postLayoutIndex":I
    if-ltz v12, :cond_e

    .line 506
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 508
    .local v7, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v10, 0x0

    .line 509
    .restart local v10    # "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_d

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 511
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_c

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 512
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 513
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 509
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 516
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_d
    iget-object v15, v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 518
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 519
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 520
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x1

    invoke-direct {v5, v4, v7, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 521
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v15, Landroid/widget/ActionMenuPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v7    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 535
    .end local v4    # "id":I
    .end local v12    # "postLayoutIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 536
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 537
    return-void
.end method

.method private setupItemAnimations()V
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    .line 545
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 547
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 367
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 369
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/widget/ActionMenuView;

    .local v1, "menuView":Landroid/widget/ActionMenuView;
    move-object v0, p2

    .line 370
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 371
    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 373
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 374
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 376
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 377
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 767
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->isSupportOverlapSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 770
    :cond_1
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 632
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 633
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 806
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 807
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 808
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 809
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 810
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 812
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 813
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 814
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 815
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 816
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 817
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 818
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 819
    add-int/lit8 v22, v22, 0x1

    .line 825
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 828
    const/16 v17, 0x0

    .line 816
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 821
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 823
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 833
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    if-nez v10, :cond_4

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 835
    :cond_4
    add-int/lit8 v17, v17, -0x1

    .line 837
    :cond_5
    sub-int v17, v17, v22

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 840
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 842
    const/4 v4, 0x0

    .line 843
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 844
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 847
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 851
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_1d

    .line 852
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 854
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 855
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 856
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 857
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 862
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 863
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 864
    if-nez v8, :cond_7

    .line 865
    move/from16 v8, v18

    .line 867
    :cond_7
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 868
    .local v9, "groupId":I
    if-eqz v9, :cond_8

    .line 869
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 871
    :cond_8
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 851
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 860
    .restart local v24    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 872
    .end local v24    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 875
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 876
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 877
    .local v12, "inGroup":Z
    if-gtz v17, :cond_b

    if-eqz v12, :cond_12

    :cond_b
    if-lez v26, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    if-lez v7, :cond_12

    :cond_c
    const/4 v13, 0x1

    .line 880
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_f

    .line 881
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 882
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 883
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 885
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 886
    if-nez v6, :cond_d

    .line 887
    const/4 v13, 0x0

    .line 892
    .end local v6    # "cells":I
    :cond_d
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 893
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 894
    if-nez v8, :cond_e

    .line 895
    move/from16 v8, v18

    .line 898
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 899
    if-ltz v26, :cond_14

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 910
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_f
    :goto_8
    if-eqz v13, :cond_19

    if-eqz v9, :cond_19

    .line 911
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 925
    :cond_10
    if-eqz v13, :cond_11

    add-int/lit8 v17, v17, -0x1

    .line 927
    :cond_11
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_4

    .line 877
    .end local v13    # "isAction":Z
    :cond_12
    const/4 v13, 0x0

    goto :goto_5

    .line 890
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_13
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 899
    .restart local v18    # "measuredWidth":I
    :cond_14
    const/16 v27, 0x0

    goto :goto_7

    .line 902
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 903
    if-ltz v26, :cond_16

    const/16 v27, 0x1

    :goto_9
    and-int v13, v13, v27

    goto :goto_8

    :cond_16
    const/16 v27, 0x0

    goto :goto_9

    .line 905
    :cond_17
    add-int v27, v26, v8

    if-lez v27, :cond_18

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_8

    :cond_18
    const/16 v27, 0x0

    goto :goto_a

    .line 912
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_19
    if-eqz v12, :cond_10

    .line 914
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 915
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_10

    .line 916
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 917
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1b

    .line 919
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1a

    add-int/lit8 v17, v17, 0x1

    .line 920
    :cond_1a
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 915
    :cond_1b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 930
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1c
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 933
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 351
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 357
    check-cast v2, Landroid/widget/ActionMenuView;

    .line 358
    .local v2, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 359
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 360
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_2
    return-object v0

    .line 355
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 338
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 339
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1

    move-object v2, v1

    .line 340
    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 341
    if-eqz v0, :cond_0

    .line 342
    check-cast v0, Landroid/view/View;

    .end local v0    # "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    move-object v2, v1

    .line 344
    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 346
    :cond_1
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v1

    .line 322
    :cond_1
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 323
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 325
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 327
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 329
    :cond_3
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v2, :cond_0

    .line 330
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 747
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 749
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 758
    :goto_0
    return v1

    .line 753
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 754
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 756
    goto :goto_0

    .line 758
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 781
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 188
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_0

    .line 189
    const v4, 0x109011f

    const v5, 0x109011e

    invoke-super {p0, v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setMenuLayoutRes(II)V

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 196
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 197
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 201
    :cond_1
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_2

    .line 202
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 204
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 211
    :cond_2
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_3

    .line 212
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 215
    :cond_3
    iget v3, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 216
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_7

    .line 217
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_5

    .line 218
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_6

    .line 219
    new-instance v4, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 228
    :cond_4
    :goto_0
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 229
    .local v2, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 231
    .end local v2    # "spec":I
    :cond_5
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 236
    :goto_1
    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 238
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 239
    return-void

    .line 221
    :cond_6
    new-instance v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 222
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v4, :cond_4

    .line 223
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iput-object v9, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 225
    iput-boolean v8, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    goto :goto_0

    .line 233
    :cond_7
    iput-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_1
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 939
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 940
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 243
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 248
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/16 v2, 0x25

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 250
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 265
    :cond_2
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v1, :cond_3

    .line 266
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 267
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_3

    .line 268
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 271
    :cond_3
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 272
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 278
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    .line 279
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 281
    :cond_4
    return-void

    .line 274
    :cond_5
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 951
    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 952
    .local v1, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 953
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 954
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 955
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 956
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 959
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 944
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 945
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 946
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 637
    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v2

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    move-object v1, p1

    .line 641
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 642
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 644
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 646
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 647
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 650
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 651
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 652
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 653
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 654
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 655
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 963
    if-eqz p1, :cond_0

    .line 965
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public semInvalidateOverflowButtonBadge(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1776
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_0

    .line 1777
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/widget/ActionMenuView;

    .line 1778
    .local v0, "menuView":Landroid/widget/ActionMenuView;
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->semGetChildCountWithBadge()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->semInvalidateBadge(II)V

    .line 1780
    .end local v0    # "menuView":Landroid/widget/ActionMenuView;
    :cond_0
    return-void
.end method

.method public semOnSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)Z
    .locals 6
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 664
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v3

    .line 665
    :cond_1
    if-eqz p1, :cond_0

    .line 666
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    const/4 v1, 0x1

    .line 670
    .local v1, "isActionSubMenu":Z
    move-object v2, p1

    .line 671
    .local v2, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, v5, :cond_2

    .line 672
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    .end local v2    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v2    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 674
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 675
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 676
    const/4 v1, 0x0

    .line 677
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 678
    const/4 v0, 0x0

    .line 679
    if-nez v0, :cond_3

    .line 680
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 684
    :cond_3
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->isSupportOverlapSubMenu()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_5

    .line 685
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0

    .line 688
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 689
    new-instance v3, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 690
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 691
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v3, p2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->semTryShowAtLocation(Landroid/view/View;)Z

    .line 693
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 694
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 301
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 295
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 297
    return-void
.end method

.method public setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 984
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 987
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 988
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 989
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 990
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 304
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 309
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 311
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 314
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 315
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 292
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 284
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 285
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 287
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 381
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 725
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 728
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 730
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 734
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 738
    .end local v0    # "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 14
    .param p1, "cleared"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 551
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 552
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 555
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 557
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 559
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_2

    .line 560
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 561
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 562
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 563
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 564
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_1

    .line 565
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 562
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_2
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 573
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 574
    .local v2, "hasOverflow":Z
    iget-boolean v11, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v11, :cond_3

    if-eqz v6, :cond_3

    .line 575
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 576
    .restart local v1    # "count":I
    if-ne v1, v12, :cond_c

    .line 577
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v11

    if-nez v11, :cond_b

    move v2, v12

    .line 583
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_f

    .line 584
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v11, :cond_4

    .line 585
    iget-boolean v11, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v11, :cond_e

    .line 586
    new-instance v11, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 591
    :cond_4
    :goto_3
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 592
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v7, v11, :cond_6

    .line 593
    if-eqz v7, :cond_5

    .line 594
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 596
    :cond_5
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/ActionMenuView;

    .line 597
    .local v4, "menuView":Landroid/widget/ActionMenuView;
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    .line 601
    .local v10, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_6

    .line 602
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v9

    .line 603
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_6

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutDirection(I)V

    .line 615
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_6
    :goto_4
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v11, :cond_7

    .line 616
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/ActionMenuView;

    .line 617
    .restart local v4    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    check-cast v11, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->semGetSumOfDigitsInBadges()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->semSetBadgeNumber(I)V

    .line 622
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    :cond_7
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 623
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 627
    :cond_9
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/widget/ActionMenuView;

    iget-boolean v12, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v11, v12}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 628
    return-void

    .line 570
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_b
    move v2, v13

    .line 577
    goto/16 :goto_2

    .line 579
    :cond_c
    if-lez v1, :cond_d

    move v2, v12

    :goto_5
    goto/16 :goto_2

    :cond_d
    move v2, v13

    goto :goto_5

    .line 588
    .end local v1    # "count":I
    :cond_e
    new-instance v11, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto/16 :goto_3

    .line 607
    :cond_f
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v11, v12, :cond_6

    .line 608
    iget-object v11, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 609
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 610
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    goto :goto_4
.end method
