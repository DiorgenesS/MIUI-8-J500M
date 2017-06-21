.class Landroid/widget/ActionMenuPresenter$SemOverflowImage;
.super Landroid/widget/ImageView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowImage"
.end annotation


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1264
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1265
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1267
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setClickable(Z)V

    .line 1268
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setFocusable(Z)V

    .line 1269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setVisibility(I)V

    .line 1270
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setEnabled(Z)V

    .line 1273
    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getHoverUIFeatureLevel()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1274
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setHoverPopupType(I)V

    .line 1275
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setLongClickable(Z)V

    .line 1280
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1281
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080724

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 1282
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->changeButtonBackground()V

    .line 1284
    return-void
.end method

.method private changeButtonBackground()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1443
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1445
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1447
    .local v1, "show":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1448
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_2

    .line 1449
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1454
    :goto_2
    if-eqz v1, :cond_3

    .line 1455
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "show":Z
    :cond_1
    move v1, v2

    .line 1445
    goto :goto_1

    .line 1451
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "show":Z
    :cond_2
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1457
    :cond_3
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 1320
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1288
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1291
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1293
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setMinimumHeight(I)V

    .line 1296
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1298
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1301
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->changeButtonBackground()V

    .line 1302
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1324
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1325
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1326
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1327
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1306
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    :goto_0
    return v1

    .line 1310
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->playSoundEffect(I)V

    .line 1311
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 25

    .prologue
    .line 1335
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1336
    const/16 v23, 0x1

    .line 1417
    :goto_0
    return v23

    .line 1339
    :cond_0
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1340
    .local v16, "screenPos":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1341
    .local v4, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getLocationOnScreen([I)V

    .line 1342
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1345
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 1346
    .local v18, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getWidth()I

    move-result v20

    .line 1347
    .local v20, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getHeight()I

    move-result v10

    .line 1348
    .local v10, "height":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 1349
    .local v17, "screenWidth":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1350
    .local v15, "screenHeight":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1351
    .local v6, "density":F
    const/16 v23, 0x0

    aget v23, v16, v23

    div-int/lit8 v24, v20, 0x2

    add-int v14, v23, v24

    .line 1352
    .local v14, "referenceX":I
    const/4 v9, 0x0

    .line 1353
    .local v9, "hasCocktailBarOnTop":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getPaddingStart()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getPaddingEnd()I

    move-result v24

    sub-int v13, v23, v24

    .line 1354
    .local v13, "paddingOffsetX":I
    div-int/lit8 v8, v13, 0x2

    .line 1356
    .local v8, "halfPaddingOffsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mHasCocktailBar:Z
    invoke-static/range {v23 .. v23}, Landroid/widget/ActionMenuPresenter;->access$1400(Landroid/widget/ActionMenuPresenter;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1357
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "window"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1358
    .local v2, "WM":Landroid/view/WindowManager;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getRotation()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 1359
    const/4 v9, 0x1

    .line 1363
    .end local v2    # "WM":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getLayoutDirection()I

    move-result v23

    if-nez v23, :cond_2

    .line 1364
    sub-int v14, v17, v14

    .line 1366
    :cond_2
    const/high16 v23, 0x40a00000    # 5.0f

    mul-float v23, v23, v6

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v14, v14, v23

    .line 1367
    sub-int/2addr v14, v8

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v23 .. v23}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1371
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1376
    .local v3, "cheatSheet":Landroid/widget/Toast;
    :goto_1
    const/4 v12, 0x0

    .line 1377
    .local v12, "offsetY":I
    const/16 v23, 0x1

    aget v23, v16, v23

    add-int v23, v23, v10

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    if-ne v10, v0, :cond_7

    .line 1378
    :cond_3
    if-eqz v9, :cond_6

    .line 1379
    const/16 v23, 0x1

    aget v12, v16, v23

    .line 1384
    :goto_2
    const v23, 0x800035

    add-int v24, v10, v12

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v14, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1391
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 1392
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1393
    const/high16 v23, 0x40800000    # 4.0f

    mul-float v23, v23, v6

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1394
    .local v19, "tempToastHeight":I
    const/4 v7, 0x0

    .line 1395
    .local v7, "gravity":I
    const/16 v21, 0x0

    .line 1396
    .local v21, "xOffset":I
    const/16 v22, 0x0

    .line 1398
    .local v22, "yOffset":I
    const/16 v23, 0x1

    aget v23, v16, v23

    add-int v23, v23, v10

    add-int v23, v23, v19

    move/from16 v0, v23

    if-ge v0, v15, :cond_8

    .line 1400
    const/16 v7, 0x35

    .line 1401
    const/16 v23, 0x0

    aget v23, v16, v23

    sub-int v23, v17, v23

    div-int/lit8 v24, v20, 0x2

    sub-int v21, v23, v24

    .line 1402
    const/16 v23, 0x1

    aget v23, v16, v23

    add-int v22, v23, v10

    .line 1412
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v7, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1415
    .end local v7    # "gravity":I
    .end local v19    # "tempToastHeight":I
    .end local v21    # "xOffset":I
    .end local v22    # "yOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1416
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->performHapticFeedback(I)Z

    .line 1417
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1373
    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "offsetY":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .restart local v3    # "cheatSheet":Landroid/widget/Toast;
    goto/16 :goto_1

    .line 1382
    .restart local v12    # "offsetY":I
    :cond_6
    const/16 v23, 0x1

    aget v23, v16, v23

    sub-int v12, v23, v18

    goto :goto_2

    .line 1386
    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v12, v15, v23

    .line 1387
    const v23, 0x800055

    add-int v24, v10, v12

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v14, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_3

    .line 1406
    .restart local v7    # "gravity":I
    .restart local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v19    # "tempToastHeight":I
    .restart local v21    # "xOffset":I
    .restart local v22    # "yOffset":I
    :cond_8
    const/16 v7, 0x55

    .line 1407
    const/16 v23, 0x0

    aget v23, v16, v23

    sub-int v23, v17, v23

    div-int/lit8 v24, v20, 0x2

    sub-int v21, v23, v24

    .line 1408
    move/from16 v22, v10

    goto :goto_4
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1422
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v1

    .line 1425
    .local v1, "changed":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1426
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1427
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getWidth()I

    move-result v6

    .line 1429
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getHeight()I

    move-result v4

    .line 1430
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 1431
    .local v5, "offsetX":I
    div-int/lit8 v3, v5, 0x2

    .line 1433
    .local v3, "halfOffsetX":I
    const/4 v7, 0x0

    add-int v8, v3, v6

    invoke-virtual {v0, v3, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1436
    .end local v3    # "halfOffsetX":I
    .end local v4    # "height":I
    .end local v5    # "offsetX":I
    .end local v6    # "width":I
    :cond_0
    return v1
.end method
