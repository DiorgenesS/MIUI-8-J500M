.class public Landroid/view/animation/interpolator/CircEaseOut;
.super Landroid/view/animation/BaseInterpolator;
.source "CircEaseOut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 98
    return-void
.end method

.method private out(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 105
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/CircEaseOut;->out(F)F

    move-result v0

    return v0
.end method
