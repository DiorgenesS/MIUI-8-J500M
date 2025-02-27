.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field private static final INVALID_ROW_ID:I = -0x1

.field private static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field private static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field private static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field private static final LSO_ITEM_BG_COLOR:I = 0x6

.field private static final LSO_ITEM_GRAVITY:I = 0x7

.field private static final LSO_ITEM_HEIGHT:I = 0x4

.field private static final LSO_ITEM_ID:I = 0x2

.field private static final LSO_ITEM_IMG_PATH:I = 0x9

.field private static final LSO_ITEM_IMG_URL:I = 0xc

.field private static final LSO_ITEM_LAYER:I = 0x10

.field private static final LSO_ITEM_ORIENTATION:I = 0xd

.field private static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field private static final LSO_ITEM_PARENT_ID:I = 0x11

.field private static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field private static final LSO_ITEM_ROWID:I = 0x0

.field private static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field private static final LSO_ITEM_TEXT:I = 0x9

.field private static final LSO_ITEM_TXT_COLOR:I = 0x8

.field private static final LSO_ITEM_TXT_SIZE:I = 0xb

.field private static final LSO_ITEM_TXT_STYLE:I = 0xa

.field private static final LSO_ITEM_TYPE:I = 0x1

.field private static final LSO_ITEM_WEIGHT:I = 0x5

.field private static final LSO_ITEM_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Item_RowId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Item_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Item_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Item_Width"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Item_Height"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Item_Weight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Item_Bg_Color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Item_Gravity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Item_TxtColor_or_PollingInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Item_Txt_or_ImgPath"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Item_TxtStyle_or_ScaleType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Item_TxtSize"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Item_Url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Item_Orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Item_PackageName"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Item_Attributes"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Item_Layer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Item_ParentId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method private constructContentValues(Landroid/app/enterprise/lso/LSOItemData;IJ)Landroid/content/ContentValues;
    .locals 15
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "layer"    # I
    .param p3, "parentId"    # J

    .prologue
    .line 570
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 571
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v8

    .line 572
    .local v8, "lsoType":B
    const/4 v2, 0x0

    .line 574
    .local v2, "error":Z
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x10

    aget-object v10, v10, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x11

    aget-object v10, v10, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getUpdatedFields()[I

    move-result-object v5

    .line 579
    .local v5, "lsoFields":[I
    if-eqz v5, :cond_0

    array-length v10, v5

    if-nez v10, :cond_1

    :cond_0
    move-object v1, v0

    .line 688
    .end local v0    # "cv":Landroid/content/ContentValues;
    .local v1, "cv":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 583
    .end local v1    # "cv":Ljava/lang/Object;
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v5

    if-ge v3, v10, :cond_3

    if-nez v2, :cond_3

    .line 584
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_0

    .line 614
    packed-switch v8, :pswitch_data_0

    .line 676
    const/4 v2, 0x1

    .line 677
    const-string v10, "LSO"

    const-string/jumbo v11, "unknown LSOItem"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 586
    :sswitch_0
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 590
    :sswitch_1
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 594
    :sswitch_2
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 598
    :sswitch_3
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getWeight()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 602
    :sswitch_4
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getBgColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 606
    :sswitch_5
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 610
    :sswitch_6
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xf

    aget-object v10, v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    :pswitch_0
    move-object/from16 v7, p1

    .line 616
    check-cast v7, Landroid/app/enterprise/lso/LSOItemText;

    .line 617
    .local v7, "lsoText":Landroid/app/enterprise/lso/LSOItemText;
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_1

    goto :goto_2

    .line 619
    :sswitch_7
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 622
    :sswitch_8
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 625
    :sswitch_9
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextStyle()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 628
    :sswitch_a
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextSizeAsFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_2

    .end local v7    # "lsoText":Landroid/app/enterprise/lso/LSOItemText;
    :pswitch_1
    move-object/from16 v6, p1

    .line 635
    check-cast v6, Landroid/app/enterprise/lso/LSOItemImage;

    .line 636
    .local v6, "lsoImage":Landroid/app/enterprise/lso/LSOItemImage;
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_2

    goto/16 :goto_2

    .line 638
    :sswitch_b
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 641
    :sswitch_c
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 645
    :sswitch_d
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xc

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getPollingInterval()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .end local v6    # "lsoImage":Landroid/app/enterprise/lso/LSOItemImage;
    :pswitch_2
    move-object/from16 v4, p1

    .line 653
    check-cast v4, Landroid/app/enterprise/lso/LSOItemContainer;

    .line 654
    .local v4, "lsoContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_3

    goto/16 :goto_2

    .line 660
    :sswitch_e
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xd

    aget-object v11, v10, v11

    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getOrientation()Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    move-result-object v10

    sget-object v12, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    if-ne v10, v12, :cond_2

    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 656
    :sswitch_f
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 660
    :cond_2
    const/4 v10, 0x1

    goto :goto_3

    .end local v4    # "lsoContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    :pswitch_3
    move-object/from16 v9, p1

    .line 667
    check-cast v9, Landroid/app/enterprise/lso/LSOItemWidget;

    .line 668
    .local v9, "lsoWidget":Landroid/app/enterprise/lso/LSOItemWidget;
    aget v10, v5, v3

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_2

    .line 670
    :pswitch_4
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xe

    aget-object v10, v10, v11

    invoke-virtual {v9}, Landroid/app/enterprise/lso/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 684
    .end local v9    # "lsoWidget":Landroid/app/enterprise/lso/LSOItemWidget;
    :cond_3
    if-eqz v2, :cond_4

    .line 685
    const/4 v0, 0x0

    :cond_4
    move-object v1, v0

    .line 688
    .restart local v1    # "cv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 584
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch

    .line 614
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 617
    :sswitch_data_1
    .sparse-switch
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_a
        0x400 -> :sswitch_9
    .end sparse-switch

    .line 636
    :sswitch_data_2
    .sparse-switch
        0x80 -> :sswitch_b
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
    .end sparse-switch

    .line 654
    :sswitch_data_3
    .sparse-switch
        0x80 -> :sswitch_e
        0x100 -> :sswitch_f
    .end sparse-switch

    .line 668
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_4
    .end packed-switch
.end method

.method private deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 505
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_0

    .line 506
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 508
    :cond_0
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdminUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName"

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "adminUid":I
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Configured admin UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v0
.end method

.method private insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 488
    const-string v1, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 490
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 491
    .local v2, "row_id":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 492
    const-string v1, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Failed to insert record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 495
    :cond_0
    return-wide v2
.end method

.method private loadContainerData(Landroid/app/enterprise/lso/LSOItemContainer;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemContainer;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 434
    const/16 v7, 0x9

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "img":Ljava/lang/String;
    const/16 v7, 0xd

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 437
    .local v6, "val":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 438
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 439
    :cond_0
    if-eqz v6, :cond_1

    .line 440
    sget-object v7, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v7}, Landroid/app/enterprise/lso/LSOItemContainer;->setOrientation(Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;)V

    .line 442
    :cond_1
    const-string v7, "LSO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadContainerData -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 444
    .local v1, "id":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v4, "selectionValues":Landroid/content/ContentValues;
    const-string v7, "Item_ParentId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v7, "LOCKSCREEN_OVERLAY"

    sget-object v8, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v4, v9}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 448
    .local v0, "containerCursor":Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 470
    :goto_0
    return-void

    .line 452
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 453
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 457
    :cond_3
    const/4 v5, 0x0

    .line 458
    .local v5, "type":B
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 459
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-byte v5, v7

    .line 461
    invoke-static {v5}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(B)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    .line 462
    .local v3, "lsoChildData":Landroid/app/enterprise/lso/LSOItemData;
    if-eqz v3, :cond_4

    .line 465
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V

    .line 466
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    goto :goto_1

    .line 469
    .end local v3    # "lsoChildData":Landroid/app/enterprise/lso/LSOItemData;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadImageData(Landroid/app/enterprise/lso/LSOItemImage;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemImage;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 415
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "img":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    .line 420
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 421
    .local v2, "val":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 422
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemImage;->setScaleType(I)V

    .line 424
    :cond_0
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 425
    .local v1, "pollingPeriod":I
    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    int-to-long v4, v1

    invoke-virtual {p1, v0, v4, v5}, Landroid/app/enterprise/lso/LSOItemImage;->setURL(Ljava/lang/String;J)V

    .line 430
    .end local v1    # "pollingPeriod":I
    .end local v2    # "val":I
    :cond_1
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadImageData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, -0x1

    const/16 v5, -0x63

    .line 340
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "strVal":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setId(Ljava/lang/String;)V

    .line 344
    :cond_0
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 345
    .local v3, "val":I
    if-eq v3, v5, :cond_1

    .line 346
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setWidth(I)V

    .line 348
    :cond_1
    const/4 v4, 0x4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 349
    if-eq v3, v5, :cond_2

    .line 350
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setHeight(I)V

    .line 352
    :cond_2
    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 353
    .local v1, "fVal":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    .line 354
    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    .line 356
    :cond_3
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 357
    if-eq v3, v6, :cond_4

    .line 358
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setBgColor(I)V

    .line 360
    :cond_4
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 361
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadItemData -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    :goto_0
    return-void

    .line 365
    .restart local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    :cond_5
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 366
    if-eq v3, v6, :cond_6

    .line 367
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 369
    :cond_6
    const/16 v4, 0xf

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 370
    .local v0, "bytes":[B
    if-eqz v0, :cond_7

    .line 371
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/enterprise/lso/LSOItemData;->setAttrs(Landroid/app/enterprise/lso/LSOAttributeSet;)V

    .line 374
    :cond_7
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    check-cast p1, Landroid/app/enterprise/lso/LSOItemText;

    .end local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Landroid/app/enterprise/lso/LSOItemText;Landroid/database/Cursor;)V

    goto :goto_0

    .line 380
    .restart local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    :pswitch_1
    check-cast p1, Landroid/app/enterprise/lso/LSOItemImage;

    .end local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Landroid/app/enterprise/lso/LSOItemImage;Landroid/database/Cursor;)V

    goto :goto_0

    .line 384
    .restart local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    :pswitch_2
    check-cast p1, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Landroid/app/enterprise/lso/LSOItemContainer;Landroid/database/Cursor;)V

    goto :goto_0

    .line 388
    .restart local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    :pswitch_3
    check-cast p1, Landroid/app/enterprise/lso/LSOItemWidget;

    .end local p1    # "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Landroid/app/enterprise/lso/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadTextData(Landroid/app/enterprise/lso/LSOItemText;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemText;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    .line 395
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemText;->setText(Ljava/lang/String;)V

    .line 399
    :cond_0
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 400
    .local v2, "val":I
    if-eq v2, v4, :cond_1

    .line 401
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemText;->setTextColor(I)V

    .line 403
    :cond_1
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 404
    if-eq v2, v4, :cond_2

    .line 405
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 407
    :cond_2
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 408
    .local v0, "fVal":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_3

    .line 409
    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(F)V

    .line 411
    :cond_3
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadTextData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private loadWidgetData(Landroid/app/enterprise/lso/LSOItemWidget;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemWidget;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 474
    const/16 v1, 0xe

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 479
    :cond_0
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadWidgetData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z
    .locals 11
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "layer"    # I
    .param p3, "parentId"    # J

    .prologue
    const/4 v4, 0x0

    .line 534
    if-nez p1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v4

    .line 538
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Landroid/app/enterprise/lso/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object v0

    .line 539
    .local v0, "cv":Landroid/content/ContentValues;
    if-nez v0, :cond_2

    .line 540
    const-string v5, "LSO"

    const-string v8, "Cannot construct content values"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    const-string v5, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 545
    .local v6, "row_id":J
    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 549
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v3

    .line 550
    .local v3, "item_type":B
    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    .line 551
    const/4 v4, 0x1

    goto :goto_0

    .line 554
    :cond_3
    const/4 v0, 0x0

    .line 555
    const/4 v4, 0x1

    .local v4, "result":Z
    move-object v2, p1

    .line 556
    check-cast v2, Landroid/app/enterprise/lso/LSOItemContainer;

    .line 557
    .local v2, "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    const/4 v1, 0x0

    .line 558
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v5

    if-ge v1, v5, :cond_4

    if-eqz v4, :cond_4

    .line 559
    invoke-virtual {v2, v1}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v5

    invoke-direct {p0, v5, p2, v6, v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z

    move-result v4

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    :cond_4
    if-nez v4, :cond_0

    .line 563
    const-string v5, "LSO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to store LSOItemData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with ParendId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 520
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert/Update record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 522
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 523
    .local v1, "rowsAffected":I
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of rows updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-gtz v1, :cond_0

    .line 526
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Failed to insert record - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 530
    :cond_0
    return v1
.end method

.method private wipeLayerData(I)V
    .locals 5
    .param p1, "layer"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->remove(Ljava/lang/String;)Z

    .line 219
    :goto_0
    const-string v2, "LSO"

    const-string v3, "LOCKSCREEN_OVERLAY - cleaned"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 210
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "Item_Layer"

    aput-object v2, v0, v3

    .line 213
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 216
    .local v1, "sValues":[Ljava/lang/String;
    const-string v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 148
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "accountObject"

    aput-object v5, v3, v7

    .line 151
    .local v3, "resultColumns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v4, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "policyName"

    const-string v6, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "ADMIN_REF"

    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v2

    .line 160
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 161
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 162
    .local v0, "buffer":[B
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "pref":Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v0, :cond_0

    .line 166
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    goto :goto_0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 118
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 124
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 126
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 9
    .param p1, "layer"    # I

    .prologue
    const/4 v5, 0x0

    .line 300
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v3, "selectionValues":Landroid/content/ContentValues;
    const-string v6, "Item_ParentId"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v6, "Item_Layer"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 308
    .local v2, "lsoData":Landroid/app/enterprise/lso/LSOItemData;
    :try_start_0
    const-string v6, "LOCKSCREEN_OVERLAY"

    sget-object v7, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v3, v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 310
    if-nez v0, :cond_1

    .line 311
    const-string v6, "LSO"

    const-string v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_0
    :goto_0
    return-object v5

    .line 314
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 315
    const-string v6, "LSO"

    const-string v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 319
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 321
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v4, v6

    .line 322
    .local v4, "type":B
    invoke-static {v4}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(B)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v2

    .line 324
    if-nez v2, :cond_3

    .line 325
    const-string v6, "LSO"

    const-string v7, "Invalid Item type"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 329
    :cond_3
    :try_start_3
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    if-eqz v0, :cond_4

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v4    # "type":B
    :cond_4
    :goto_1
    move-object v5, v2

    .line 336
    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "LSO"

    const-string/jumbo v6, "getOverlay() falied"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 333
    if-eqz v0, :cond_4

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method

.method public getOverlayAdminUid()I
    .locals 1

    .prologue
    .line 133
    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWallpaperAdminUid()I
    .locals 1

    .prologue
    .line 137
    const-string v0, "LOCKSCREEN_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 113
    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetOverlayData(I)V
    .locals 3
    .param p1, "layer"    # I

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 225
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN_OVERLAY"

    aput-object v2, v0, v1

    .line 230
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 235
    :cond_0
    const-string v1, "LSO"

    const-string v2, "LOCKSCREEN_OVERLAY - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public resetWallpaperData()V
    .locals 3

    .prologue
    .line 239
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN_WALLPAPER"

    aput-object v2, v0, v1

    .line 242
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 244
    const-string v1, "LSO"

    const-string v2, "LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z
    .locals 9
    .param p1, "adminUID"    # J
    .param p3, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p4, "layer"    # I
    .param p5, "pref"    # Landroid/app/enterprise/lso/LSOAttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    .line 249
    if-eqz p3, :cond_0

    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    .line 250
    :cond_0
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Parameter cannot be null"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    .line 254
    .local v1, "overlayAdminUID":I
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 256
    const-wide/16 v4, 0x0

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z

    move-result v2

    .line 257
    .local v2, "result":Z
    if-nez v2, :cond_3

    .line 258
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 274
    :cond_2
    :goto_0
    return v2

    .line 260
    :cond_3
    int-to-long v4, v1

    cmp-long v4, v4, p1

    if-eqz v4, :cond_2

    .line 261
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "policyName"

    const-string v5, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v4, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    if-eqz p5, :cond_4

    .line 265
    const-string v4, "accountObject"

    invoke-virtual {p5}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 268
    :cond_4
    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 269
    :goto_1
    if-nez v2, :cond_2

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 268
    goto :goto_1
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .locals 7
    .param p1, "adminUID"    # J
    .param p3, "imageFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 279
    if-eqz p3, :cond_0

    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 280
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_1
    const/4 v1, 0x0

    .line 284
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "policyName"

    const-string v3, "LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v2, "ADMIN_REF"

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 292
    :goto_0
    if-nez v1, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 296
    :cond_2
    return v1

    .line 291
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z
    .locals 7
    .param p1, "pref"    # Landroid/app/enterprise/lso/LSOAttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 173
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 177
    const-string v4, "accountObject"

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 182
    :goto_0
    const-string/jumbo v3, "policyName=?"

    .line 183
    .local v3, "whereClause":Ljava/lang/String;
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "LOCKSCREEN_OVERLAY"

    aput-object v4, v2, v5

    .line 188
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 191
    .local v1, "result":Z
    :goto_1
    return v1

    .line 179
    .end local v1    # "result":Z
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_0
    const-string v6, "accountObject"

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .restart local v2    # "whereArgs":[Ljava/lang/String;
    .restart local v3    # "whereClause":Ljava/lang/String;
    :cond_1
    move v1, v5

    .line 188
    goto :goto_1
.end method
