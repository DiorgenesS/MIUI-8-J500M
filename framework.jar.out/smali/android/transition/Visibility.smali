.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mForcedEndVisibility:I

.field private mForcedStartVisibility:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 84
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 81
    iput v1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    .line 82
    iput v1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v2, 0x3

    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    .line 81
    iput v3, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    .line 82
    iput v3, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    .line 88
    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 90
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    .line 94
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;I)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;
    .param p2, "forcedVisibility"    # I

    .prologue
    .line 129
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 130
    move v1, p2

    .line 134
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 137
    .local v0, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 138
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void

    .line 132
    .end local v0    # "loc":[I
    .end local v1    # "visibility":I
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .restart local v1    # "visibility":I
    goto :goto_0
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 188
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v5}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$1;)V

    .line 189
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 190
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 191
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 193
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 198
    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 200
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 205
    :goto_1
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 206
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_3

    .line 236
    :cond_0
    :goto_2
    return-object v0

    .line 195
    :cond_1
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 196
    iput-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 202
    :cond_2
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 203
    iput-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 210
    :cond_3
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_5

    .line 211
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_4

    .line 212
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 213
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 214
    :cond_4
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_0

    .line 215
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 216
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 219
    :cond_5
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_0

    .line 220
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 221
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 222
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 223
    :cond_6
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 224
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 225
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 229
    :cond_7
    if-nez p0, :cond_8

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_8

    .line 230
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 231
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 232
    :cond_8
    if-nez p1, :cond_0

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_0

    .line 233
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 234
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 148
    iget v0, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    .line 149
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 143
    iget v0, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    .line 144
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 242
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .line 243
    .local v6, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 245
    :cond_0
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_1

    .line 246
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    iput p1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v1, 0x0

    .line 466
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 476
    :cond_2
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 477
    .local v0, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return v3

    .line 180
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 183
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 278
    iget v7, p0, Landroid/transition/Visibility;->mMode:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_0

    if-nez p4, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v5

    .line 281
    :cond_1
    if-nez p2, :cond_2

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v7, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 284
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v4

    .line 286
    .local v4, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v0, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 287
    .local v1, "endParentValues":Landroid/transition/TransitionValues;
    invoke-static {v4, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v3

    .line 289
    iget-boolean v7, v3, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v7, :cond_0

    .line 293
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v3    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v4    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_2
    iget v5, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    if-ne v5, v8, :cond_3

    iget v5, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    if-eq v5, v8, :cond_4

    :cond_3
    move v2, v6

    .line 295
    .local v2, "isForcedVisibility":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 297
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 299
    :cond_5
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v5, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 360
    const/4 v5, 0x0

    .line 461
    :cond_0
    :goto_0
    return-object v5

    .line 363
    :cond_1
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v23, v0

    .line 364
    .local v23, "startView":Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 365
    .local v8, "endView":Landroid/view/View;
    :goto_2
    const/16 v16, 0x0

    .line 366
    .local v16, "overlayView":Landroid/view/View;
    const/16 v24, 0x0

    .line 367
    .local v24, "viewToKeep":Landroid/view/View;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_9

    .line 368
    :cond_2
    if-eqz v8, :cond_6

    .line 370
    move-object/from16 v16, v8

    .line 413
    :cond_3
    :goto_3
    move/from16 v11, p5

    .line 414
    .local v11, "finalVisibility":I
    move-object/from16 v10, p1

    .line 416
    .local v10, "finalSceneRoot":Landroid/view/ViewGroup;
    if-eqz v16, :cond_d

    .line 418
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v25, v0

    const-string v26, "android:visibility:screenLocation"

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    move-object/from16 v18, v25

    check-cast v18, [I

    .line 419
    .local v18, "screenLoc":[I
    const/16 v25, 0x0

    aget v19, v18, v25

    .line 420
    .local v19, "screenX":I
    const/16 v25, 0x1

    aget v20, v18, v25

    .line 421
    .local v20, "screenY":I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v14, v0, [I

    .line 422
    .local v14, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 423
    const/16 v25, 0x0

    aget v25, v14, v25

    sub-int v25, v19, v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 424
    const/16 v25, 0x1

    aget v25, v14, v25

    sub-int v25, v20, v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 427
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_c

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto/16 :goto_0

    .line 363
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v8    # "endView":Landroid/view/View;
    .end local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v11    # "finalVisibility":I
    .end local v14    # "loc":[I
    .end local v16    # "overlayView":Landroid/view/View;
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    .end local v23    # "startView":Landroid/view/View;
    .end local v24    # "viewToKeep":Landroid/view/View;
    :cond_4
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 364
    .restart local v23    # "startView":Landroid/view/View;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 371
    .restart local v8    # "endView":Landroid/view/View;
    .restart local v16    # "overlayView":Landroid/view/View;
    .restart local v24    # "viewToKeep":Landroid/view/View;
    :cond_6
    if-eqz v23, :cond_3

    .line 375
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_7

    .line 377
    move-object/from16 v16, v23

    goto/16 :goto_3

    .line 378
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/view/View;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 379
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 380
    .local v21, "startParent":Landroid/view/View;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v22

    .line 381
    .local v22, "startParentValues":Landroid/transition/TransitionValues;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v7

    .line 383
    .local v7, "endParentValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v17

    .line 385
    .local v17, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 386
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_3

    .line 388
    :cond_8
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_3

    .line 389
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v12

    .line 390
    .local v12, "id":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 395
    move-object/from16 v16, v23

    goto/16 :goto_3

    .line 402
    .end local v7    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v12    # "id":I
    .end local v17    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v21    # "startParent":Landroid/view/View;
    .end local v22    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_9
    const/16 v25, 0x4

    move/from16 v0, p5

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 403
    move-object/from16 v24, v8

    goto/16 :goto_3

    .line 406
    :cond_a
    move-object/from16 v0, v23

    if-ne v0, v8, :cond_b

    .line 407
    move-object/from16 v24, v8

    goto/16 :goto_3

    .line 409
    :cond_b
    move-object/from16 v16, v23

    goto/16 :goto_3

    .line 430
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .restart local v11    # "finalVisibility":I
    .restart local v14    # "loc":[I
    .restart local v18    # "screenLoc":[I
    .restart local v19    # "screenX":I
    .restart local v20    # "screenY":I
    :cond_c
    move-object/from16 v9, v16

    .line 431
    .local v9, "finalOverlayView":Landroid/view/View;
    new-instance v25, Landroid/transition/Visibility$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v9}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_0

    .line 441
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v14    # "loc":[I
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    :cond_d
    if-eqz v24, :cond_12

    .line 442
    const/4 v15, -0x1

    .line 443
    .local v15, "originalVisibility":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v13, 0x1

    .line 445
    .local v13, "isForcedVisibility":Z
    :goto_4
    if-nez v13, :cond_f

    .line 446
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v15

    .line 447
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 449
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 450
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_11

    .line 451
    new-instance v6, Landroid/transition/Visibility$DisappearListener;

    move-object/from16 v0, v24

    invoke-direct {v6, v0, v11, v13}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 453
    .local v6, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 455
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_0

    .line 443
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v6    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    .end local v13    # "isForcedVisibility":Z
    :cond_10
    const/4 v13, 0x0

    goto :goto_4

    .line 456
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v13    # "isForcedVisibility":Z
    :cond_11
    if-nez v13, :cond_0

    .line 457
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setTransitionVisibility(I)V

    goto/16 :goto_0

    .line 461
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "isForcedVisibility":Z
    .end local v15    # "originalVisibility":I
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 105
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    .line 109
    return-void
.end method
