.class public Landroid/os/PlusFreqBoost;
.super Ljava/lang/Object;
.source "PlusFreqBoost.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "PlusFreqBoost"

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_j5x_xx_static"

.field private static context:Landroid/content/Context;


# instance fields
.field mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

.field mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

.field mBUSFrequencyTable:[I

.field mCPUFrequencyTable:[I

.field mGPUFrequencyTable:[I

.field private mPlusFreqLaunchPackagesOn5:[Ljava/lang/String;

.field private mPlusFreqLevelOn5:[I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 28
    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 30
    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 32
    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mCPUFrequencyTable:[I

    .line 34
    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mGPUFrequencyTable:[I

    .line 36
    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mBUSFrequencyTable:[I

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x17

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Landroid/os/PlusFreqBoost;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Landroid/os/PlusFreqBoost;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mPlusFreqLaunchPackagesOn5:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mPlusFreqLevelOn5:[I

    .line 40
    sput-object p1, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    .line 41
    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x19
        0xe
        0x9
    .end array-data

    .line 53
    :array_2
    .array-data 4
        0x941df8
        0x8f7e60
    .end array-data
.end method

.method private x([I)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # [I

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 90
    aget v2, p1, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected isPackageExistInAppPlusFreq(Ljava/lang/String;)I
    .locals 11
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, -0x1

    .line 56
    const/4 v6, 0x0

    .line 57
    .local v6, "ret":I
    const/4 v4, 0x0

    .line 59
    .local v4, "match":Z
    new-array v5, v9, [Ljava/lang/String;

    .line 60
    .local v5, "pack":[Ljava/lang/String;
    new-array v3, v9, [I

    .line 62
    .local v3, "level":[I
    const-string/jumbo v9, "island"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 63
    const-string/jumbo v9, "ssrm_j5x_xx_static"

    const-string/jumbo v10, "on5lte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 64
    iget-object v9, p0, Landroid/os/PlusFreqBoost;->mPlusFreqLaunchPackagesOn5:[Ljava/lang/String;

    invoke-virtual {v9}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "pack":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 65
    .restart local v5    # "pack":[Ljava/lang/String;
    iget-object v9, p0, Landroid/os/PlusFreqBoost;->mPlusFreqLevelOn5:[I

    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "level":[I
    check-cast v3, [I

    .line 73
    .restart local v3    # "level":[I
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, v0, v1

    .line 74
    .local v7, "s":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 75
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 76
    const/4 v4, 0x1

    .line 81
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    .line 82
    add-int/lit8 v8, v6, -0x1

    aget v8, v3, v8

    .line 84
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    return v8

    .line 73
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v7    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected launchBoost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "boostType"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v9, 0x0

    .line 98
    .local v9, "mPlusCPUBoost":Landroid/os/DVFSHelper;
    const/4 v10, 0x0

    .line 99
    .local v10, "mPlusGPUBoost":Landroid/os/DVFSHelper;
    const/4 v8, 0x0

    .line 100
    .local v8, "mPlusBUSBoost":Landroid/os/DVFSHelper;
    const/4 v6, -0x1

    .line 106
    .local v6, "freq_level":I
    invoke-virtual {p0, p2}, Landroid/os/PlusFreqBoost;->isPackageExistInAppPlusFreq(Ljava/lang/String;)I

    move-result v6

    .line 108
    if-gez v6, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "PlusFreqBoost"

    const-string v1, "enable plus freq mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    const-string v2, "PLUS_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 118
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mCPUFrequencyTable:[I

    .line 119
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 120
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 125
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_8

    .line 126
    div-int/lit16 v0, v6, 0x2710

    rem-int/lit8 v7, v0, 0xa

    .line 127
    .local v7, "level":I
    const v0, 0x186a0

    div-int v0, v6, v0

    rem-int/lit8 v0, v0, 0xa

    mul-int/lit16 v11, v0, 0x3e8

    .line 129
    .local v11, "time":I
    new-instance v9, Landroid/os/DVFSHelper;

    .end local v9    # "mPlusCPUBoost":Landroid/os/DVFSHelper;
    sget-object v0, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-direct {v9, v0, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 130
    .restart local v9    # "mPlusCPUBoost":Landroid/os/DVFSHelper;
    const-string v0, "CPU"

    iget-object v1, p0, Landroid/os/PlusFreqBoost;->mCPUFrequencyTable:[I

    aget v1, v1, v7

    int-to-long v2, v1

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 132
    if-eqz v9, :cond_3

    .line 133
    invoke-virtual {v9, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 140
    .end local v7    # "level":I
    .end local v11    # "time":I
    :cond_3
    :goto_2
    const-string v0, "G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    .line 143
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    const-string v2, "PLUS_APP_BOOSTER_GPU"

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 145
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mGPUFrequencyTable:[I

    .line 146
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 152
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_a

    .line 153
    div-int/lit8 v0, v6, 0x64

    rem-int/lit8 v7, v0, 0xa

    .line 154
    .restart local v7    # "level":I
    div-int/lit16 v0, v6, 0x3e8

    rem-int/lit8 v0, v0, 0xa

    mul-int/lit16 v11, v0, 0x3e8

    .line 156
    .restart local v11    # "time":I
    new-instance v10, Landroid/os/DVFSHelper;

    .end local v10    # "mPlusGPUBoost":Landroid/os/DVFSHelper;
    sget-object v0, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-direct {v10, v0, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 157
    .restart local v10    # "mPlusGPUBoost":Landroid/os/DVFSHelper;
    const-string v0, "GPU"

    iget-object v1, p0, Landroid/os/PlusFreqBoost;->mGPUFrequencyTable:[I

    aget v1, v1, v7

    int-to-long v2, v1

    invoke-virtual {v10, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 159
    if-eqz v10, :cond_5

    .line 160
    invoke-virtual {v10, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 167
    .end local v7    # "level":I
    .end local v11    # "time":I
    :cond_5
    :goto_4
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_6

    .line 170
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    const-string v2, "PLUS_APP_BOOSTER_BUS"

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 172
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PlusFreqBoost;->mBUSFrequencyTable:[I

    .line 173
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 179
    :cond_6
    :goto_5
    iget-object v0, p0, Landroid/os/PlusFreqBoost;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_c

    .line 180
    rem-int/lit8 v7, v6, 0xa

    .line 181
    .restart local v7    # "level":I
    div-int/lit8 v0, v6, 0xa

    rem-int/lit8 v0, v0, 0xa

    mul-int/lit16 v11, v0, 0x3e8

    .line 183
    .restart local v11    # "time":I
    new-instance v8, Landroid/os/DVFSHelper;

    .end local v8    # "mPlusBUSBoost":Landroid/os/DVFSHelper;
    sget-object v0, Landroid/os/PlusFreqBoost;->context:Landroid/content/Context;

    const/16 v1, 0x13

    invoke-direct {v8, v0, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 184
    .restart local v8    # "mPlusBUSBoost":Landroid/os/DVFSHelper;
    const-string v0, "BUS"

    iget-object v1, p0, Landroid/os/PlusFreqBoost;->mBUSFrequencyTable:[I

    aget v1, v1, v7

    int-to-long v2, v1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 186
    if-eqz v8, :cond_0

    .line 187
    invoke-virtual {v8, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 122
    .end local v7    # "level":I
    .end local v11    # "time":I
    :cond_7
    const-string v0, "PlusFreqBoost"

    const-string/jumbo v1, "on_PLUS_APP_BOOSTER_CPU:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 136
    :cond_8
    const-string v0, "PlusFreqBoost"

    const-string/jumbo v1, "mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 149
    :cond_9
    const-string v0, "PlusFreqBoost"

    const-string/jumbo v1, "on_PLUS_APP_BOOSTER_GPU:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 163
    :cond_a
    const-string v0, "PlusFreqBoost"

    const-string/jumbo v1, "mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 176
    :cond_b
    const-string v0, "PlusFreqBoost"

    const-string/jumbo v1, "on_PLUS_APP_BOOSTER_BUS:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 190
    :cond_c
    const-string v0, "PlusFreqBoost"

    const-string/jumbo v1, "mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
