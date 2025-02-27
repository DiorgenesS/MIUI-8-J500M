.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1479
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1480
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/inputmethodservice/KeyboardView$1;

    .prologue
    .line 1473
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 1500
    const/4 v1, -0x1

    .line 1502
    .local v1, "drop":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1503
    .local v3, "pastTime":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x4

    if-ge v2, v7, :cond_0

    .line 1504
    aget-wide v8, v3, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 1510
    :cond_0
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    if-gez v1, :cond_1

    .line 1511
    const/4 v1, 0x0

    .line 1513
    :cond_1
    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 1514
    :cond_2
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1515
    .local v4, "pastX":[F
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1516
    .local v5, "pastY":[F
    if-ltz v1, :cond_3

    .line 1517
    add-int/lit8 v6, v1, 0x1

    .line 1518
    .local v6, "start":I
    rsub-int/lit8 v7, v1, 0x4

    add-int/lit8 v0, v7, -0x1

    .line 1519
    .local v0, "count":I
    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1520
    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1521
    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1522
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    .line 1524
    .end local v0    # "count":I
    .end local v6    # "start":I
    :cond_3
    aput p1, v4, v2

    .line 1525
    aput p2, v5, v2

    .line 1526
    aput-wide p3, v3, v2

    .line 1527
    add-int/lit8 v2, v2, 0x1

    .line 1528
    const/4 v7, 0x4

    if-ge v2, v7, :cond_4

    .line 1529
    const-wide/16 v8, 0x0

    aput-wide v8, v3, v2

    .line 1531
    :cond_4
    return-void

    .line 1506
    .end local v4    # "pastX":[F
    .end local v5    # "pastY":[F
    :cond_5
    aget-wide v8, v3, v2

    const-wide/16 v10, 0xc8

    sub-long v10, p3, v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 1507
    move v1, v2

    .line 1503
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 1491
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 1492
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1493
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1496
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1497
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1487
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .prologue
    .line 1534
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    .line 1535
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 20
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 1538
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1539
    .local v13, "pastX":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1540
    .local v14, "pastY":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1542
    .local v12, "pastTime":[J
    const/16 v16, 0x0

    aget v10, v13, v16

    .line 1543
    .local v10, "oldestX":F
    const/16 v16, 0x0

    aget v11, v14, v16

    .line 1544
    .local v11, "oldestY":F
    const/16 v16, 0x0

    aget-wide v8, v12, v16

    .line 1545
    .local v8, "oldestTime":J
    const/4 v3, 0x0

    .line 1546
    .local v3, "accumX":F
    const/4 v4, 0x0

    .line 1547
    .local v4, "accumY":F
    const/4 v2, 0x0

    .line 1548
    .local v2, "N":I
    :goto_0
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    .line 1549
    aget-wide v16, v12, v2

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_1

    .line 1555
    :cond_0
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_5

    .line 1556
    aget-wide v16, v12, v7

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 1557
    .local v6, "dur":I
    if-nez v6, :cond_2

    .line 1555
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1552
    .end local v6    # "dur":I
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1558
    .restart local v6    # "dur":I
    .restart local v7    # "i":I
    :cond_2
    aget v16, v13, v7

    sub-float v5, v16, v10

    .line 1559
    .local v5, "dist":F
    int-to-float v0, v6

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 1560
    .local v15, "vel":F
    const/16 v16, 0x0

    cmpl-float v16, v3, v16

    if-nez v16, :cond_3

    move v3, v15

    .line 1563
    :goto_3
    aget v16, v14, v7

    sub-float v5, v16, v11

    .line 1564
    int-to-float v0, v6

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 1565
    const/16 v16, 0x0

    cmpl-float v16, v4, v16

    if-nez v16, :cond_4

    move v4, v15

    goto :goto_2

    .line 1561
    :cond_3
    add-float v16, v3, v15

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v3, v16, v17

    goto :goto_3

    .line 1566
    :cond_4
    add-float v16, v4, v15

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v4, v16, v17

    goto :goto_2

    .line 1568
    .end local v5    # "dist":F
    .end local v6    # "dur":I
    .end local v15    # "vel":F
    :cond_5
    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_6

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    .line 1570
    const/16 v16, 0x0

    cmpg-float v16, v4, v16

    if-gez v16, :cond_7

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    .line 1572
    return-void

    .line 1568
    :cond_6
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_4

    .line 1570
    :cond_7
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_5
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 1579
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
