.class Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalAutoBrightness"
.end annotation


# instance fields
.field private final BASIS_LUX:F

.field private final HBM_LUX:F

.field private final SIZE_DEFAULT_LIST:I

.field private mOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field private mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->BASIS_LUX:F

    .line 1906
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->HBM_LUX:F

    .line 1907
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->SIZE_DEFAULT_LIST:I

    .line 1913
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->init()V

    .line 1914
    return-void
.end method

.method private addSubOffsetPointsIfNeededLocked(I)V
    .locals 5
    .param p1, "addedIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 2203
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllSubOffsetPointsLocked()V

    .line 2206
    const/4 v0, 0x1

    .line 2207
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 2209
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->checkReversePointsByUsingAutoBrightnessTableValue(I)I

    move-result v3

    if-lez v3, :cond_0

    move v0, v2

    .line 2207
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2209
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2211
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->printOffsetList(Ljava/util/ArrayList;)V

    .line 2226
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    .line 2227
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB] 4-[CHECK POINT] : Too Many Sub Points. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_2
    return-void
.end method

.method private addToListAfterBoundaryCheckLocked(FIF)I
    .locals 7
    .param p1, "lux"    # F
    .param p2, "cd"    # I
    .param p3, "offset"    # F

    .prologue
    .line 1960
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    .line 1961
    .local v0, "index":I
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] 1-index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_0

    .line 1965
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 1966
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] 1-change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :goto_0
    return v0

    .line 1967
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    .line 1968
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 1969
    const-string v5, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] 1-change : ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1971
    :cond_1
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x1

    invoke-direct {v2, v4, p1, p3, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 1974
    .local v2, "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1975
    .local v1, "nextOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v4, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mHighBoundary:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v4, :cond_2

    .line 1976
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] 1-remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1979
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1980
    .local v3, "prevOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v4, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLowBoundary:F

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v4, :cond_3

    .line 1981
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] 1-remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1983
    add-int/lit8 v0, v0, -0x1

    .line 1987
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1988
    const-string v5, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] 1-add : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkReversePointsByUsingAutoBrightnessTableValue(I)I
    .locals 26
    .param p1, "addedIndex"    # I

    .prologue
    .line 2099
    const/4 v8, 0x0

    .line 2103
    .local v8, "changedCount":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2104
    .local v21, "reverseScanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController;->access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 2105
    .local v10, "defaultTableLux":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController;->access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 2106
    .local v11, "defaultTableValue":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 2109
    .local v18, "notStableOffsetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 2110
    aget v22, v10, v12

    const/16 v23, 0x2710

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 2117
    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_3

    .line 2118
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v13

    .line 2119
    .local v13, "indexForAdd":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v22, v23, v22

    if-nez v22, :cond_2

    .line 2121
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2117
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2113
    .end local v13    # "indexForAdd":I
    :cond_1
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    aget v23, v10, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aget v24, v10, v12

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v24

    const/16 v25, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2114
    .local v20, "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2123
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .restart local v13    # "indexForAdd":I
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 2129
    .end local v13    # "indexForAdd":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, p1

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 2130
    const-string v22, "AutomaticBrightnessController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[PAB] Index ERROR : addedIndex = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " size = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2197
    .end local v8    # "changedCount":I
    .local v9, "changedCount":I
    :goto_3
    return v9

    .line 2133
    .end local v9    # "changedCount":I
    .restart local v8    # "changedCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    move/from16 v22, v0

    add-float v7, v23, v22

    .line 2134
    .local v7, "addedValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2135
    .local v6, "addedLux":F
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v22

    add-int/lit8 v12, v22, -0x1

    :goto_4
    if-ltz v12, :cond_a

    .line 2136
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v16, v0

    .line 2137
    .local v16, "loopOrgCd":F
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2138
    .local v15, "loopOffset":F
    add-float v17, v16, v15

    .line 2139
    .local v17, "loopValue":F
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2141
    .local v14, "loopLux":F
    cmpl-float v22, v17, v7

    if-ltz v22, :cond_6

    .line 2142
    const/16 v22, 0x0

    cmpl-float v22, v14, v22

    if-nez v22, :cond_7

    const/16 v19, 0x0

    .line 2143
    .local v19, "offsetType":I
    :goto_5
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    sub-float v23, v7, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2144
    .restart local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    .line 2145
    .local v5, "addIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    .line 2146
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2154
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 2135
    .end local v5    # "addIndex":I
    .end local v19    # "offsetType":I
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_4

    .line 2142
    :cond_7
    const/16 v19, 0x2

    goto :goto_5

    .line 2148
    .restart local v5    # "addIndex":I
    .restart local v19    # "offsetType":I
    .restart local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_9

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v23, v7, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2150
    const-string v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[PAB] 4-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2152
    :cond_9
    const-string v22, "AutomaticBrightnessController"

    const-string v23, "[PAB] 4-2ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2159
    .end local v5    # "addIndex":I
    .end local v14    # "loopLux":F
    .end local v15    # "loopOffset":F
    .end local v16    # "loopOrgCd":F
    .end local v17    # "loopValue":F
    .end local v19    # "offsetType":I
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v12

    :goto_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_14

    .line 2160
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v16, v0

    .line 2161
    .restart local v16    # "loopOrgCd":F
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2162
    .restart local v15    # "loopOffset":F
    add-float v17, v16, v15

    .line 2163
    .restart local v17    # "loopValue":F
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2165
    .restart local v14    # "loopLux":F
    cmpg-float v22, v17, v7

    if-gez v22, :cond_f

    .line 2166
    const v22, 0x461c4000    # 10000.0f

    cmpl-float v22, v14, v22

    if-nez v22, :cond_c

    const/16 v19, 0x0

    .line 2167
    .restart local v19    # "offsetType":I
    :goto_8
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    sub-float v23, v7, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2168
    .restart local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    .line 2169
    .restart local v5    # "addIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    .line 2170
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2178
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 2159
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 2166
    .end local v5    # "addIndex":I
    .end local v19    # "offsetType":I
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_c
    const/16 v19, 0x2

    goto :goto_8

    .line 2172
    .restart local v5    # "addIndex":I
    .restart local v19    # "offsetType":I
    .restart local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_e

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v23, v7, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2174
    const-string v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[PAB] 4-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2176
    :cond_e
    const-string v22, "AutomaticBrightnessController"

    const-string v23, "[PAB] 4-2ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2180
    .end local v5    # "addIndex":I
    .end local v19    # "offsetType":I
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_f
    move/from16 v7, v17

    .line 2181
    const v22, 0x461c4000    # 10000.0f

    cmpl-float v22, v14, v22

    if-nez v22, :cond_11

    const/16 v19, 0x0

    .line 2182
    .restart local v19    # "offsetType":I
    :goto_b
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    .line 2183
    .restart local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    .line 2184
    .restart local v5    # "addIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_12

    .line 2185
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2193
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    .line 2181
    .end local v5    # "addIndex":I
    .end local v19    # "offsetType":I
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_11
    const/16 v19, 0x2

    goto :goto_b

    .line 2187
    .restart local v5    # "addIndex":I
    .restart local v19    # "offsetType":I
    .restart local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_13

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2189
    const-string v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[PAB] 4-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2191
    :cond_13
    const-string v22, "AutomaticBrightnessController"

    const-string v23, "[PAB] 4-2ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .end local v5    # "addIndex":I
    .end local v14    # "loopLux":F
    .end local v15    # "loopOffset":F
    .end local v16    # "loopOrgCd":F
    .end local v17    # "loopValue":F
    .end local v19    # "offsetType":I
    .end local v20    # "op":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_14
    move v9, v8

    .line 2197
    .end local v8    # "changedCount":I
    .restart local v9    # "changedCount":I
    goto/16 :goto_3
.end method

.method private getIndex(Ljava/util/ArrayList;F)I
    .locals 5
    .param p2, "lux"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;F)I"
        }
    .end annotation

    .prologue
    .line 2241
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    const/4 v0, 0x0

    .line 2242
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2243
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2244
    .local v1, "listSize":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2245
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v2, v2

    float-to-int v4, p2

    if-lt v2, v4, :cond_2

    .line 2249
    :cond_0
    if-le v0, v1, :cond_1

    .line 2250
    move v0, v1

    .line 2252
    :cond_1
    monitor-exit v3

    .line 2253
    return v0

    .line 2244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2252
    .end local v1    # "listSize":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSlope(FFFF)F
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/4 v2, 0x0

    .line 2311
    const/4 v0, 0x0

    .line 2312
    .local v0, "slope":F
    cmpl-float v1, p1, p3

    if-eqz v1, :cond_2

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_2

    .line 2313
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    const p1, 0x3f7fbe77    # 0.999f

    .line 2314
    :cond_0
    cmpl-float v1, p3, v2

    if-nez v1, :cond_1

    const p3, 0x3f7fbe77    # 0.999f

    .line 2315
    :cond_1
    sub-float v1, p4, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    .line 2317
    :cond_2
    return v0
.end method

.method private getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2365
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2366
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2367
    .local v1, "listSize":I
    const-string v2, ""

    .line 2368
    .local v2, "strLuxList":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2370
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n[PAB] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2372
    :cond_1
    monitor-exit v4

    return-object v2

    .line 2373
    .end local v0    # "i":I
    .end local v1    # "listSize":I
    .end local v2    # "strLuxList":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private init()V
    .locals 6

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1919
    :try_start_0
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1920
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v3, 0x453b7000    # 2999.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 1921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    .line 1922
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1923
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1924
    const-string v0, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB] init : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    monitor-exit v1

    .line 1926
    return-void

    .line 1925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private printOffsetList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2353
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 2354
    .local v0, "strLuxList":Ljava/lang/String;
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB] Offset List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return-void
.end method

.method private refreshFixedOffsetPointsLocked(I)V
    .locals 7
    .param p1, "addedIndex"    # I

    .prologue
    const/4 v3, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    .line 2047
    if-gez p1, :cond_1

    .line 2048
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 2049
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB] 3-[CHECK POINT] ERROR. index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2053
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2054
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    .line 2055
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    .line 2056
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 2057
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    .line 2059
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_9

    .line 2061
    if-eqz p1, :cond_4

    .line 2062
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2063
    .local v0, "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    .line 2064
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_5

    .line 2065
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 2066
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2081
    .end local v0    # "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2082
    .local v1, "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_7

    .line 2084
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    .line 2069
    .end local v1    # "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .restart local v0    # "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_5
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 2070
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    .line 2074
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 2075
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    .line 2086
    .end local v0    # "next0point":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .restart local v1    # "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_7
    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_8

    .line 2087
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    .line 2089
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    .line 2093
    .end local v1    # "opBeforeFinal":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_9
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB] 3-[CHECK POINT] Fixed points are missing. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    goto/16 :goto_0
.end method

.method private removeAllReverseUserOffsetPointsLocked(I)I
    .locals 10
    .param p1, "addedIndex"    # I

    .prologue
    const/4 v9, 0x1

    .line 1994
    if-gez p1, :cond_1

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 1996
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] 2-[CHECK POINT] ERROR. index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const/4 v0, 0x0

    .line 2043
    :cond_0
    return v0

    .line 1999
    :cond_1
    const/4 v0, 0x0

    .line 2001
    .local v0, "countRemovedSmallerThanAddedPoints":I
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2002
    .local v5, "latestOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v6, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v6, v7

    .line 2003
    .local v4, "latestCd":F
    if-lez p1, :cond_5

    .line 2004
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 2005
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2006
    .local v3, "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v2, v6, v7

    .line 2007
    .local v2, "iCd":F
    cmpl-float v6, v2, v4

    if-lez v6, :cond_2

    .line 2008
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v6, v9, :cond_3

    .line 2009
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2011
    add-int/lit8 v0, v0, 0x1

    .line 2004
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2012
    :cond_3
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v6, :cond_4

    .line 2014
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float v6, v4, v6

    iput v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    .line 2016
    :cond_4
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2023
    .end local v1    # "i":I
    .end local v2    # "iCd":F
    .end local v3    # "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-le v1, p1, :cond_0

    .line 2024
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2025
    .restart local v3    # "iOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v2, v6, v7

    .line 2026
    .restart local v2    # "iCd":F
    cmpg-float v6, v2, v4

    if-gez v6, :cond_6

    .line 2027
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v6, v9, :cond_7

    .line 2028
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2023
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2030
    :cond_7
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v6, :cond_9

    .line 2031
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_8

    .line 2032
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_3

    .line 2035
    :cond_8
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] 2-ERROR.  i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", i.offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2038
    :cond_9
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method private removeAllSubOffsetPointsLocked()V
    .locals 3

    .prologue
    .line 2233
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2234
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2235
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2233
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2238
    :cond_1
    return-void
.end method


# virtual methods
.method public addPoint(FI)V
    .locals 6
    .param p1, "lux"    # F
    .param p2, "cd"    # I

    .prologue
    .line 1932
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    const v3, 0x453b8000    # 3000.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1933
    :cond_0
    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB] Do not add Point : lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :goto_0
    return-void

    .line 1938
    :cond_1
    if-gez p2, :cond_3

    .line 1939
    const/4 p2, 0x0

    .line 1944
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 1945
    .local v2, "orgCd":F
    int-to-float v3, p2

    sub-float v1, v3, v2

    .line 1947
    .local v1, "offset":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1949
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllSubOffsetPointsLocked()V

    .line 1950
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addToListAfterBoundaryCheckLocked(FIF)I

    move-result v0

    .line 1951
    .local v0, "addedIndex":I
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllReverseUserOffsetPointsLocked(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1952
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->refreshFixedOffsetPointsLocked(I)V

    .line 1953
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addSubOffsetPointsIfNeededLocked(I)V

    .line 1955
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->printOffsetList(Ljava/util/ArrayList;)V

    .line 1956
    monitor-exit v4

    goto :goto_0

    .end local v0    # "addedIndex":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1940
    .end local v1    # "offset":F
    .end local v2    # "orgCd":F
    :cond_3
    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    .line 1941
    const/16 p2, 0xff

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2358
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, "strLuxList":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2360
    const-string v1, "[PAB] Personal Auto Brightness:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    return-void
.end method

.method public getOffset(F)F
    .locals 12
    .param p1, "lux"    # F

    .prologue
    const v8, 0x453b8000    # 3000.0f

    const/4 v1, 0x0

    .line 2268
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2269
    cmpg-float v6, p1, v1

    if-gtz v6, :cond_0

    .line 2270
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    monitor-exit v7

    .line 2307
    :goto_0
    return v1

    .line 2271
    :cond_0
    cmpl-float v6, p1, v8

    if-ltz v6, :cond_1

    .line 2272
    monitor-exit v7

    goto :goto_0

    .line 2306
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2273
    :cond_1
    const v6, 0x453b7000    # 2999.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_2

    cmpg-float v6, p1, v8

    if-gez v6, :cond_2

    .line 2274
    const p1, 0x453b7000    # 2999.0f

    .line 2277
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    .line 2278
    .local v0, "index":I
    if-gtz v0, :cond_3

    .line 2279
    const-string v6, "AutomaticBrightnessController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB] getOffset: index error. index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lux="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    monitor-exit v7

    goto :goto_0

    .line 2282
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_4

    .line 2283
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2306
    .local v1, "offset":F
    :goto_1
    monitor-exit v7

    goto :goto_0

    .line 2285
    .end local v1    # "offset":F
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v6, v6, v1

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v6, v6, v1

    if-nez v6, :cond_5

    .line 2288
    const/4 v1, 0x0

    .restart local v1    # "offset":F
    goto :goto_1

    .line 2290
    .end local v1    # "offset":F
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2291
    .local v5, "y2":F
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2292
    .local v4, "y1":F
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2293
    .local v3, "x2":F
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    .line 2294
    .local v2, "x1":F
    cmpl-float v6, v3, v2

    if-eqz v6, :cond_6

    cmpl-float v6, v5, v4

    if-nez v6, :cond_7

    .line 2295
    :cond_6
    move v1, v5

    .restart local v1    # "offset":F
    goto :goto_1

    .line 2298
    .end local v1    # "offset":F
    :cond_7
    cmpl-float v6, v2, v1

    if-nez v6, :cond_8

    const v2, 0x3f7fbe77    # 0.999f

    .line 2299
    :cond_8
    cmpl-float v6, p1, v1

    if-nez v6, :cond_9

    const p1, 0x3f7fbe77    # 0.999f

    .line 2300
    :cond_9
    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getSlope(FFFF)F

    move-result v6

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float v1, v6, v4

    .restart local v1    # "offset":F
    goto :goto_1
.end method

.method public getPersonalAutoBrightnessHighHysteresis(F)F
    .locals 2
    .param p1, "cd"    # F

    .prologue
    .line 2348
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v0

    .line 2349
    .local v0, "highHysteresis":F
    return v0
.end method

.method public getPersonalAutoBrightnessLowHysteresis(F)F
    .locals 2
    .param p1, "cd"    # F

    .prologue
    .line 2343
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v0

    .line 2344
    .local v0, "lowHysteresis":F
    return v0
.end method

.method public getPersonalScreenAutoBrightness(F)F
    .locals 8
    .param p1, "lux"    # F

    .prologue
    .line 2321
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2322
    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 2323
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v7, v7, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v0, v5, v7

    monitor-exit v6

    .line 2338
    :goto_0
    return v0

    .line 2326
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    .line 2327
    .local v3, "prevOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v5, v7

    .line 2330
    .local v4, "prevValue":F
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 2331
    .local v2, "optBrightness":F
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v1

    .line 2332
    .local v1, "offset":F
    add-float v0, v2, v1

    .line 2334
    .local v0, "currentValue":F
    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    .line 2338
    :cond_1
    monitor-exit v6

    goto :goto_0

    .line 2339
    .end local v0    # "currentValue":F
    .end local v1    # "offset":F
    .end local v2    # "optBrightness":F
    .end local v3    # "prevOp":Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
    .end local v4    # "prevValue":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public resetPersonalAutoBrightness()V
    .locals 4

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2259
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2260
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    .line 2261
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2262
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2263
    monitor-exit v1

    .line 2264
    return-void

    .line 2263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
