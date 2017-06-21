.class public Lcom/sec/android/secvision/sef/SEF;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;,
        Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;,
        Lcom/sec/android/secvision/sef/SEF$Options;,
        Lcom/sec/android/secvision/sef/SEF$KeyName;,
        Lcom/sec/android/secvision/sef/SEF$DataType;,
        Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;,
        Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;,
        Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;,
        Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SEF_VERSION:Ljava/lang/String; = "1.03"

.field private static final TAG:Ljava/lang/String; = "SEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    return-void
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1113
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1137
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_0
    return v4

    .line 1141
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1142
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 1147
    :cond_4
    const-string v0, "SEF"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1151
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1169
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1193
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_0
    return v4

    .line 1197
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1198
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1202
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1203
    :cond_4
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I
    .locals 9
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 947
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 954
    .local v5, "dataFileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 955
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_0
    return v8

    .line 959
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 960
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 964
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 965
    :cond_4
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SEF Data File name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 969
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v8

    :goto_1
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1

    .line 972
    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v8

    :goto_2
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, v8

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto :goto_0

    :cond_8
    array-length v4, p3

    goto :goto_2

    .line 975
    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    .line 976
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v8

    :goto_3
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto :goto_0

    :cond_a
    array-length v4, p3

    goto :goto_3

    .line 979
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v8

    :goto_4
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto/16 :goto_0

    :cond_c
    array-length v4, p3

    goto :goto_4
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I
    .locals 10
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 885
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 892
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :goto_0
    return v9

    .line 895
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 896
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-gtz v1, :cond_5

    .line 900
    :cond_4
    const-string v1, "SEF"

    const-string v2, "Invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v9

    :goto_1
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1

    .line 907
    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v9

    :goto_2
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto :goto_0

    :cond_8
    array-length v4, p3

    goto :goto_2

    .line 910
    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    .line 911
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v9

    :goto_3
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto :goto_0

    :cond_a
    array-length v4, p3

    goto :goto_3

    .line 914
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v9

    :goto_4
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto/16 :goto_0

    :cond_c
    array-length v4, p3

    goto :goto_4
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 999
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1021
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1022
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_0
    return v4

    .line 1025
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1026
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1029
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 1030
    :cond_4
    const-string v0, "SEF"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1034
    :cond_5
    const/16 v0, 0x10

    if-ne p5, v0, :cond_7

    .line 1035
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    array-length v6, p2

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1

    .line 1038
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    :goto_2
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_8
    array-length v4, p3

    goto :goto_2
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1057
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1080
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1081
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :goto_0
    return v4

    .line 1085
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1086
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1090
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1091
    :cond_4
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyNames"    # [Ljava/lang/String;
    .param p2, "dataFileNames"    # [Ljava/lang/String;
    .param p3, "dataTypes"    # [I
    .param p4, "option"    # I

    .prologue
    .line 1229
    array-length v6, p1

    .line 1230
    .local v6, "dataCount":I
    array-length v0, p2

    if-eq v6, v0, :cond_2

    .line 1231
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataFileNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1237
    :cond_1
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/4 v0, 0x0

    .line 1246
    :goto_1
    return v0

    .line 1232
    :cond_2
    array-length v0, p3

    if-eq v6, v0, :cond_0

    .line 1233
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataTypes data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_3
    array-length v0, p1

    new-array v2, v0, [I

    .line 1242
    .local v2, "keynamesLength":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 1243
    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v2, v7

    .line 1242
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1246
    invoke-static/range {v0 .. v6}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I

    move-result v0

    goto :goto_1
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2535
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2536
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const/4 v0, 0x0

    .line 2540
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    move-result-object v0

    goto :goto_0
.end method

.method public static clearAudioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2469
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2470
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/4 v0, 0x0

    .line 2474
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearFastSEFData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1456
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1457
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v0, 0x0

    .line 1460
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearQdioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2491
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2492
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const/4 v0, 0x0

    .line 2496
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearSEFData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1436
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1437
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v0, 0x0

    .line 1440
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static compact(Ljava/io/File;)Z
    .locals 2
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "Invalid_Data"

    invoke-static {p0, v1}, Lcom/sec/android/secvision/sef/SEF;->deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    const/4 v1, 0x1

    .line 1481
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2654
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2655
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :goto_0
    return v0

    .line 2659
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2660
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2664
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static copyAllSEFData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2148
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 2149
    .local v1, "srcFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2155
    .local v0, "dstFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2156
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid src file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :goto_0
    return v2

    .line 2160
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 2161
    :cond_2
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dst file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2165
    :cond_3
    invoke-static {v1, v0}, Lcom/sec/android/secvision/sef/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2183
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2184
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_0
    return v0

    .line 2188
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2189
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2193
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static copyAudioData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2626
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2627
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :goto_0
    return v0

    .line 2631
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2632
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2636
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteAllSEFData(Ljava/io/File;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1375
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/secvision/sef/SEF;->deleteAllSEFData(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static deleteAllSEFData(Ljava/io/File;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1387
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1393
    :cond_0
    const-string v1, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1417
    :cond_1
    :goto_0
    return v1

    .line 1398
    :cond_2
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 1399
    invoke-static {v0}, Lcom/sec/android/secvision/sef/QdioJNI;->DeleteQdioFromFile(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1402
    goto :goto_0

    .line 1407
    :cond_3
    const/16 v3, 0x10

    if-ne p1, v3, :cond_4

    .line 1408
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1411
    goto :goto_0

    .line 1414
    :cond_4
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1417
    goto :goto_0
.end method

.method public static deleteAudioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2424
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2425
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    const/4 v0, 0x0

    .line 2429
    :goto_0
    return v0

    :cond_1
    const-string v0, "SoundShot_000"

    const-string v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteFastSEFData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1350
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1351
    :cond_0
    const-string v0, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1363
    :cond_1
    :goto_0
    return v0

    .line 1355
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1356
    :cond_3
    const-string v0, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1357
    goto :goto_0

    .line 1360
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/sec/android/secvision/sef/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    .line 1363
    goto :goto_0
.end method

.method public static deleteQdioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2447
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2448
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const/4 v0, 0x0

    .line 2452
    :goto_0
    return v0

    :cond_1
    const-string v0, "SoundShot_000"

    const-string v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1324
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1325
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_0
    return v0

    .line 1329
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1330
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1334
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1266
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/secvision/sef/SEF;->deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1279
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1285
    :cond_0
    const-string v1, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1304
    :cond_1
    :goto_0
    return v1

    .line 1289
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 1290
    :cond_3
    const-string v1, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1291
    goto :goto_0

    .line 1294
    :cond_4
    const/16 v3, 0x10

    if-ne p2, v3, :cond_5

    .line 1295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, p1, v3}, Lcom/sec/android/secvision/sef/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1298
    goto :goto_0

    .line 1301
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, p1, v3}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1304
    goto :goto_0
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2513
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2514
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/4 v0, 0x0

    .line 2518
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioDataInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2557
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2576
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getDataPositionArray(Ljava/io/File;Ljava/lang/String;)[J
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1625
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1631
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :goto_0
    return-object v2

    .line 1635
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1636
    :cond_2
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 1640
    check-cast v0, [J

    .line 1643
    .local v0, "PositionData":[J
    invoke-static {v1}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1644
    invoke-static {v1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioDataPositionArray(Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0

    .line 1648
    :cond_4
    invoke-static {v1, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 1649
    if-nez v0, :cond_5

    .line 1650
    const-string v3, "SEF"

    const-string v4, "No SEF data matching to given keyName is found in file."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object v2, v0

    .line 1654
    goto :goto_0
.end method

.method public static getMajorDataType(Ljava/lang/String;)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 2104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 2105
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_1
    :goto_0
    return v2

    .line 2109
    :cond_2
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2112
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 2113
    .local v0, "dataTypes":[I
    if-nez v0, :cond_3

    .line 2114
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2118
    :cond_3
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v2, :cond_5

    .line 2119
    aget v3, v0, v1

    const/16 v4, 0x800

    if-lt v3, v4, :cond_4

    aget v3, v0, v1

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_4

    aget v3, v0, v1

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_4

    .line 2122
    aget v2, v0, v1

    goto :goto_0

    .line 2118
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2126
    :cond_5
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No major data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSEFData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 19
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1806
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 1811
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_2

    .line 1812
    :cond_0
    const-string v16, "SEF"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid file name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/4 v11, 0x0

    .line 1873
    :cond_1
    :goto_0
    return-object v11

    .line 1816
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_4

    .line 1817
    :cond_3
    const-string v16, "SEF"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid key name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 v11, 0x0

    goto :goto_0

    .line 1821
    :cond_4
    const/4 v11, 0x0

    .line 1822
    .local v11, "sefData":[B
    const/4 v7, 0x0

    .line 1825
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v6}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1826
    invoke-static {v6}, Lcom/sec/android/secvision/sef/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    move-result-object v10

    .line 1828
    .local v10, "qdioJpegData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B

    move-result-object v11

    .line 1829
    goto :goto_0

    .line 1834
    .end local v10    # "qdioJpegData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :cond_5
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/sec/android/secvision/sef/SEF;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;

    move-result-object v2

    .line 1836
    .local v2, "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    if-nez v2, :cond_6

    .line 1837
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1838
    const/4 v11, 0x0

    .line 1867
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1868
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1841
    .restart local v11    # "sefData":[B
    :cond_6
    :try_start_2
    iget-wide v14, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->offset:J

    .line 1842
    .local v14, "startOffset":J
    iget-wide v0, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 1848
    .local v4, "endOffset":J
    iget-wide v0, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v11, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1849
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_7

    .line 1850
    const/4 v11, 0x0

    .line 1867
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1868
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1852
    .restart local v11    # "sefData":[B
    :cond_7
    :try_start_3
    invoke-virtual {v8, v14, v15}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 1853
    .local v12, "skipCheck":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_8

    .line 1854
    const/4 v11, 0x0

    .line 1867
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1868
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1859
    .restart local v11    # "sefData":[B
    :cond_8
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    .line 1860
    .local v9, "length":I
    if-nez v9, :cond_9

    .line 1861
    const/4 v11, 0x0

    .line 1867
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1868
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1867
    .restart local v11    # "sefData":[B
    :cond_9
    if-eqz v8, :cond_b

    .line 1868
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1864
    .end local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v9    # "length":I
    .end local v12    # "skipCheck":J
    .end local v14    # "startOffset":J
    :catch_0
    move-exception v3

    .line 1865
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1867
    if-eqz v7, :cond_1

    .line 1868
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1867
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_2
    if-eqz v7, :cond_a

    .line 1868
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_a
    throw v16

    .line 1867
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1864
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .restart local v4    # "endOffset":J
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    .restart local v12    # "skipCheck":J
    .restart local v14    # "startOffset":J
    :cond_b
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1892
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_2

    .line 1893
    :cond_0
    const-string v14, "SEF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid file name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v9, 0x0

    .line 1944
    :cond_1
    :goto_0
    return-object v9

    .line 1897
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_4

    .line 1898
    :cond_3
    const-string v14, "SEF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid key name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v9, 0x0

    goto :goto_0

    .line 1902
    :cond_4
    const/4 v9, 0x0

    .line 1903
    .local v9, "sefData":[B
    const/4 v6, 0x0

    .line 1905
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/sec/android/secvision/sef/SEF;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;

    move-result-object v2

    .line 1907
    .local v2, "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    if-nez v2, :cond_5

    .line 1908
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1909
    const/4 v9, 0x0

    .line 1938
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1939
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1912
    .restart local v9    # "sefData":[B
    :cond_5
    :try_start_2
    iget-wide v12, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->offset:J

    .line 1913
    .local v12, "startOffset":J
    iget-wide v14, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    add-long v4, v12, v14

    .line 1919
    .local v4, "endOffset":J
    iget-wide v14, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    long-to-int v14, v14

    new-array v9, v14, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1920
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_6

    .line 1921
    const/4 v9, 0x0

    .line 1938
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1939
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1923
    .restart local v9    # "sefData":[B
    :cond_6
    :try_start_3
    invoke-virtual {v7, v12, v13}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v10

    .line 1924
    .local v10, "skipCheck":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_7

    .line 1925
    const/4 v9, 0x0

    .line 1938
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1939
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1930
    .restart local v9    # "sefData":[B
    :cond_7
    :try_start_4
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    .line 1931
    .local v8, "length":I
    if-nez v8, :cond_8

    .line 1932
    const/4 v9, 0x0

    .line 1938
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1939
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1938
    .restart local v9    # "sefData":[B
    :cond_8
    if-eqz v7, :cond_a

    .line 1939
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1935
    .end local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v8    # "length":I
    .end local v10    # "skipCheck":J
    .end local v12    # "startOffset":J
    :catch_0
    move-exception v3

    .line 1936
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1938
    if-eqz v6, :cond_1

    .line 1939
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1938
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v6, :cond_9

    .line 1939
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_9
    throw v14

    .line 1938
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1935
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .restart local v4    # "endOffset":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "length":I
    .restart local v10    # "skipCheck":J
    .restart local v12    # "startOffset":J
    :cond_a
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public static getSEFDataCount(Ljava/io/File;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1955
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1956
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1957
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/4 v1, -0x1

    .line 1967
    :goto_0
    return v1

    .line 1961
    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    .line 1967
    .local v1, "ret":I
    goto :goto_0
.end method

.method public static getSEFDataCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1980
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1981
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const/4 v0, -0x1

    .line 1991
    :goto_0
    return v0

    .line 1985
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v0

    .line 1991
    .local v0, "ret":I
    goto :goto_0
.end method

.method public static getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1594
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1595
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :goto_0
    return-object v1

    .line 1599
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1600
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1604
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1605
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 1606
    const-string v2, "SEF"

    const-string v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1610
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;-><init>()V

    .line 1611
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->offset:I

    .line 1612
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->length:I

    goto :goto_0
.end method

.method public static getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1702
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1703
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :goto_0
    return-object v1

    .line 1707
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1708
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1712
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 1713
    .local v0, "posArray":[J
    if-nez v0, :cond_4

    .line 1714
    const-string v2, "SEF"

    const-string v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1718
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;-><init>()V

    .line 1719
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->offset:J

    .line 1720
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    goto :goto_0
.end method

.method public static getSEFDataPositionArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1670
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1671
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1686
    :cond_1
    :goto_0
    return-object v0

    .line 1675
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1676
    :cond_3
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1677
    goto :goto_0

    .line 1680
    :cond_4
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1681
    .local v0, "posArray":[I
    if-nez v0, :cond_1

    .line 1682
    const-string v2, "SEF"

    const-string v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1683
    goto :goto_0
.end method

.method public static getSEFDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2003
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2009
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :goto_0
    return v1

    .line 2013
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2014
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2018
    :cond_3
    invoke-static {v0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2036
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2037
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :goto_0
    return v0

    .line 2041
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2042
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2046
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1738
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1739
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :goto_0
    return-object v1

    .line 1743
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1744
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1748
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1749
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 1750
    const-string v2, "SEF"

    const-string v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1754
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;-><init>()V

    .line 1755
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;->offset:I

    .line 1756
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;->length:I

    goto :goto_0
.end method

.method public static getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1774
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1775
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :goto_0
    return-object v1

    .line 1779
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1780
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1784
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 1785
    .local v0, "posArray":[J
    if-nez v0, :cond_4

    .line 1786
    const-string v2, "SEF"

    const-string v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1790
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;-><init>()V

    .line 1791
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;->offset:J

    .line 1792
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;->length:J

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 657
    invoke-static {}, Lcom/sec/android/secvision/sef/SEFJNI;->getNativeVersion()I

    move-result v0

    .line 658
    .local v0, "native_version":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.03_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static hasDataType(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 825
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ne p1, v4, :cond_2

    .line 826
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_1
    :goto_0
    return v2

    .line 830
    :cond_2
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 833
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 834
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 835
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 839
    :cond_3
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v4, :cond_1

    .line 840
    aget v3, v0, v1

    if-ne p1, v3, :cond_4

    .line 841
    const/4 v2, 0x1

    goto :goto_0

    .line 839
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static hasSEFData(Ljava/io/File;I)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 741
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-ne p1, v5, :cond_2

    .line 747
    :cond_0
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Data Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_1
    :goto_0
    return v3

    .line 751
    :cond_2
    invoke-static {v1}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 754
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    .line 755
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 756
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_3
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-le v2, v5, :cond_1

    .line 761
    aget v4, v0, v2

    if-ne p1, v4, :cond_4

    .line 762
    const/4 v3, 0x1

    goto :goto_0

    .line 760
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static hasSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 779
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 785
    :cond_0
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_1
    :goto_0
    return v3

    .line 789
    :cond_2
    invoke-static {v1}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 792
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "currentTypes":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 794
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    :cond_3
    array-length v4, v0

    if-gtz v4, :cond_4

    if-eqz v0, :cond_4

    .line 797
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_4
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 802
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 803
    const/4 v3, 0x1

    goto :goto_0

    .line 801
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static isAudioJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2593
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2610
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSEFFile(Ljava/io/File;)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 681
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v1, 0x0

    .line 696
    :goto_0
    return v1

    .line 686
    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 687
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 689
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public static isSEFFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 713
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 714
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x0

    .line 729
    :goto_0
    return v0

    .line 719
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 720
    const/4 v0, 0x0

    .local v0, "ret":Z
    goto :goto_0

    .line 722
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static listKeyNames(Ljava/io/File;)[Ljava/lang/String;
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1507
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const/4 v1, 0x0

    .line 1511
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static listKeyNames(Ljava/io/File;I)[Ljava/lang/String;
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1529
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v1, 0x0

    .line 1533
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1550
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1551
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/4 v0, 0x0

    .line 1555
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    .line 1573
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1574
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const/4 v0, 0x0

    .line 1578
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static listSEFDataTypes(Ljava/io/File;)[I
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2057
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2062
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2063
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/4 v1, 0x0

    .line 2067
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static listSEFDataTypes(Ljava/lang/String;)[I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2084
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2085
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const/4 v0, 0x0

    .line 2089
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "audioStream"    # [B

    .prologue
    .line 2394
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    .line 2395
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    if-eqz p2, :cond_1

    .line 2397
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAudioJPEG input parameter is null :  audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :goto_0
    const/4 v0, 0x0

    .line 2404
    :goto_1
    return v0

    .line 2399
    :cond_1
    const-string v0, "SEF"

    const-string v1, "saveAudioJPEG input parameter is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2404
    :cond_2
    array-length v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->saveAudioJPEG(Ljava/lang/String;[BILjava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "audiostream"    # [B

    .prologue
    .line 2375
    const-string v0, "SoundShot_000"

    invoke-static {p0, v0, p1}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public static showSEFDataList(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2677
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2678
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2692
    :cond_2
    return-void
.end method
