.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method checkLengthLegal(II)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "expectLength"    # I

    .prologue
    .line 844
    if-ge p1, p2, :cond_0

    .line 845
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM MIPUPP format error, length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected length at least ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x0

    .line 849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    const-string v0, "EF_CSIM_MIPUPP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 856
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v2, v14

    check-cast v2, [B

    .line 858
    .local v2, "data":[B
    array-length v14, v2

    const/4 v15, 0x1

    if-ge v14, v15, :cond_1

    .line 859
    const-string v14, "RuimRecords"

    const-string v15, "MIPUPP read error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 865
    .local v1, "bitStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v14, 0x8

    :try_start_0
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 867
    .local v6, "mipUppLength":I
    shl-int/lit8 v6, v6, 0x3

    .line 869
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 873
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 874
    .local v13, "retryInfoInclude":I
    add-int/lit8 v6, v6, -0x1

    .line 876
    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 877
    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 880
    const/16 v14, 0xb

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 882
    add-int/lit8 v6, v6, -0xb

    .line 885
    :cond_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 888
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 889
    .local v12, "numNai":I
    add-int/lit8 v6, v6, -0x4

    .line 892
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v12, :cond_0

    .line 893
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 896
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 897
    .local v10, "naiEntryIndex":I
    add-int/lit8 v6, v6, -0x4

    .line 899
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 902
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 903
    .local v11, "naiLength":I
    add-int/lit8 v6, v6, -0x8

    .line 905
    if-nez v10, :cond_4

    .line 907
    shl-int/lit8 v14, v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 910
    new-array v9, v11, [C

    .line 911
    .local v9, "naiCharArray":[C
    const/4 v5, 0x0

    .local v5, "index1":I
    :goto_2
    if-ge v5, v11, :cond_3

    .line 912
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    int-to-char v14, v14

    aput-char v14, v9, v5

    .line 911
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 914
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$902(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 915
    const-string v14, "RuimRecords"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 916
    const-string v14, "RuimRecords"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MIPUPP Nai = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$900(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 954
    .end local v4    # "index":I
    .end local v5    # "index1":I
    .end local v6    # "mipUppLength":I
    .end local v9    # "naiCharArray":[C
    .end local v10    # "naiEntryIndex":I
    .end local v11    # "naiLength":I
    .end local v12    # "numNai":I
    .end local v13    # "retryInfoInclude":I
    :catch_0
    move-exception v3

    .line 955
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "RuimRecords"

    const-string v15, "MIPUPP read Exception error!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 921
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "index":I
    .restart local v6    # "mipUppLength":I
    .restart local v10    # "naiEntryIndex":I
    .restart local v11    # "naiLength":I
    .restart local v12    # "numNai":I
    .restart local v13    # "retryInfoInclude":I
    :cond_4
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 924
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x65

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 925
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 926
    .local v7, "mnAaaSpiIndicator":I
    shl-int/lit8 v14, v11, 0x3

    add-int/lit8 v14, v14, 0x66

    sub-int/2addr v6, v14

    .line 928
    const/4 v14, 0x1

    if-ne v7, v14, :cond_5

    .line 929
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 932
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 933
    add-int/lit8 v6, v6, -0x20

    .line 937
    :cond_5
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 940
    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 941
    add-int/lit8 v6, v6, -0x4

    .line 942
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 943
    .local v8, "mnHaSpiIndicator":I
    add-int/lit8 v6, v6, -0x1

    .line 945
    const/4 v14, 0x1

    if-ne v8, v14, :cond_6

    .line 946
    const/16 v14, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 949
    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 950
    add-int/lit8 v6, v6, -0x20

    .line 892
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method
