.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingMenuView"
.end annotation


# instance fields
.field private mAvailableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingMenu:Landroid/view/View;

.field private mFloatingMenuBg:Landroid/view/View;

.field private mFloatingMenuCloseAnimating:Z

.field private mFloatingMenuContainer:Landroid/widget/LinearLayout;

.field private mFloatingMenuOpenAnimating:Z

.field private mIsAttached:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 3577
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    .line 3578
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    .line 3574
    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 3575
    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 3579
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3580
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090096

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    .line 3581
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v4, 0x1020406

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    .line 3582
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3583
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v4, 0x102040a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    .line 3585
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 3586
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v2, :cond_0

    .line 3587
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3588
    .local v0, "color":I
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, 0x66000000

    or-int v0, v3, v4

    .line 3589
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 3593
    .end local v0    # "color":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3594
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 3597
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->addView(Landroid/view/View;)V

    .line 3598
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    .line 3599
    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3565
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 3565
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3565
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->setFloatingButtonHoverListener()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3565
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 3565
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3565
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V

    return-void
.end method

.method private animateFloatingMenuClose()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3805
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3856
    :cond_0
    return-void

    .line 3808
    :cond_1
    iput-boolean v12, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 3809
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 3811
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x1020407

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3812
    .local v4, "leftBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x1020409

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3813
    .local v8, "rightBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x1020408

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3815
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10a005f

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3816
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3840
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3841
    invoke-direct {p0, v11, v12}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3842
    invoke-direct {p0, v11, v11}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3844
    const/4 v3, 0x0

    .line 3845
    .local v3, "left":I
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 3846
    .local v5, "right":I
    const-wide/16 v6, 0x0

    .line 3847
    .local v6, "offset":J
    :goto_0
    if-gt v3, v5, :cond_0

    .line 3848
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10a005e

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3849
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3850
    if-eq v3, v5, :cond_2

    .line 3851
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3853
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3854
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, -0x1

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    .line 3855
    goto :goto_0
.end method

.method private animateFloatingMenuOpen(Z)V
    .locals 14
    .param p1, "autoclose"    # Z

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 3724
    iget-boolean v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 3802
    :cond_0
    return-void

    .line 3728
    :cond_1
    iput-boolean v13, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 3729
    iput-boolean v12, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 3731
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v11, 0x1020407

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3732
    .local v5, "leftBackground":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v11, 0x1020409

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 3733
    .local v9, "rightBackground":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v11, 0x1020408

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3735
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v10, v10, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10a0060

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3736
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v10, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)V

    invoke-virtual {v1, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3785
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3786
    invoke-direct {p0, v12, v12}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3787
    invoke-direct {p0, v12, v13}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3789
    const/4 v4, 0x0

    .line 3790
    .local v4, "left":I
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .line 3791
    .local v8, "right":I
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v3, v10, -0x1

    .line 3792
    .local v3, "closer":I
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_3

    add-int/lit8 v10, v3, 0x1

    int-to-long v6, v10

    .line 3793
    .local v6, "offset":J
    :goto_0
    if-gt v4, v8, :cond_0

    .line 3794
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v10, v10, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10a005d

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3795
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3796
    if-eq v4, v8, :cond_2

    .line 3797
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3799
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3800
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, -0x1

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 3801
    goto :goto_0

    .line 3792
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v6    # "offset":J
    :cond_3
    int-to-long v6, v3

    goto :goto_0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 3906
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3907
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3908
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3909
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3910
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3911
    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3912
    const-string v1, "PenWindow Titlebar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3913
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3914
    const v1, 0x40208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3918
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 3919
    return-object v0
.end method

.method private getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;
    .locals 20
    .param p1, "open"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 3859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v5, 0x1020407

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 3860
    .local v17, "leftBackground":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v5, 0x1020409

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 3861
    .local v19, "rightBackground":Landroid/view/View;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3864
    .local v2, "t":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v3

    const/16 v5, 0x13

    if-ge v3, v5, :cond_0

    .line 3865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v18, v0

    .line 3870
    .local v18, "measureWidth":F
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v16, v0

    .line 3871
    .local v16, "buttonsSideBgWidth":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v18, v3

    .line 3872
    .local v15, "buttonPopupHalfWidth":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v16, v3

    sub-float v4, v15, v3

    .line 3873
    .local v4, "showposition":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e0107

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 3874
    .local v14, "animDuration":I
    if-eqz p1, :cond_2

    .line 3875
    if-eqz p2, :cond_1

    .line 3876
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3880
    .restart local v2    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const-wide/16 v6, 0x5

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3881
    int-to-long v6, v14

    const-wide/16 v8, 0x5

    sub-long/2addr v6, v8

    long-to-int v14, v6

    .line 3891
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 3892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v5, 0x10a0005

    invoke-virtual {v2, v3, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 3893
    int-to-long v6, v14

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3894
    return-object v2

    .line 3867
    .end local v4    # "showposition":F
    .end local v14    # "animDuration":I
    .end local v15    # "buttonPopupHalfWidth":F
    .end local v16    # "buttonsSideBgWidth":F
    .end local v18    # "measureWidth":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    .restart local v18    # "measureWidth":F
    goto :goto_0

    .line 3878
    .restart local v4    # "showposition":F
    .restart local v14    # "animDuration":I
    .restart local v15    # "buttonPopupHalfWidth":F
    .restart local v16    # "buttonsSideBgWidth":F
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v6, 0x0

    neg-float v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v2    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 3883
    :cond_2
    if-eqz p2, :cond_3

    .line 3884
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v2

    move v9, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3888
    .restart local v2    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_3
    const-wide/16 v6, 0xc3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3889
    int-to-long v6, v14

    const-wide/16 v8, 0x5

    add-long/2addr v6, v8

    long-to-int v14, v6

    goto :goto_2

    .line 3886
    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    neg-float v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v2    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_3
.end method

.method private removeSelf()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3669
    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    if-eqz v2, :cond_2

    .line 3670
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x1020407

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 3671
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x1020409

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 3672
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x1020408

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 3673
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3674
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 3676
    .end local v0    # "button":Landroid/view/View;
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 3677
    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 3679
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3680
    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    .line 3681
    return-void
.end method

.method private setFloatingButtonHoverListener()V
    .locals 7

    .prologue
    const/16 v6, 0x3035

    const/4 v5, 0x1

    .line 3684
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3696
    .local v0, "hoverPopupTopMargin":I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3698
    .local v1, "stackBound":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3699
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3700
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3701
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3704
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3705
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3706
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3707
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3710
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3711
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3712
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3713
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3716
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3717
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3718
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3719
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3721
    :cond_3
    return-void
.end method


# virtual methods
.method public checkAvailableButtonsForAnim()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 3602
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3603
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 3604
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3606
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_1

    .line 3607
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3609
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_2

    .line 3610
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3612
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 3613
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3617
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x1020407

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3618
    .local v5, "leftImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x1020409

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3619
    .local v6, "rightImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x1020408

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3620
    .local v2, "centerImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v8, v10, v10}, Landroid/view/View;->measure(II)V

    .line 3622
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3623
    .local v7, "vlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v9, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3002(Lcom/android/internal/policy/MultiPhoneWindow;I)I

    .line 3625
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3626
    .local v1, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3627
    .local v3, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3630
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3631
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3632
    invoke-virtual {v0, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3634
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 3636
    .end local v0    # "button":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public dismiss(Z)V
    .locals 3
    .param p1, "anim"    # Z

    .prologue
    .line 3658
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3659
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss menu with anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    if-eqz p1, :cond_1

    .line 3661
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V

    .line 3666
    :cond_0
    :goto_0
    return-void

    .line 3663
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    .line 3902
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3924
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 3925
    .local v2, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 3926
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .line 3927
    .local v3, "ripple":Landroid/graphics/drawable/RippleDrawable;
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050309

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3928
    .local v4, "rippleSize":I
    const/4 v0, 0x0

    .line 3929
    .local v0, "layoutLeft":I
    const/4 v1, 0x0

    .line 3931
    .local v1, "layoutRight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 3932
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 3933
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 3939
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v5, v1, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 3940
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->drawableHotspotChanged(FF)V

    .line 3941
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 3946
    .end local v0    # "layoutLeft":I
    .end local v1    # "layoutRight":I
    .end local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v4    # "rippleSize":I
    :cond_0
    :goto_1
    return v2

    .line 3935
    .restart local v0    # "layoutLeft":I
    .restart local v1    # "layoutRight":I
    .restart local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .restart local v4    # "rippleSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 3936
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    goto :goto_0

    .line 3942
    .end local v0    # "layoutLeft":I
    .end local v1    # "layoutRight":I
    .end local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v4    # "rippleSize":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 3944
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1
.end method

.method public show(IIZ)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "autoclose"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3639
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    if-nez v1, :cond_0

    .line 3640
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show menu at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3642
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3643
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3646
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3647
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3648
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3649
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3651
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3652
    invoke-direct {p0, p3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuOpen(Z)V

    .line 3653
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    .line 3655
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
