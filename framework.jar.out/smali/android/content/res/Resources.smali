.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$ThemeKey;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$ProcessPriorityThreadFactory;,
        Landroid/content/res/Resources$RCCallable;
    }
.end annotation


# static fields
.field private static final CACHE_NOT_THEMED:Ljava/lang/String; = ""

.field private static final CACHE_NULL_THEME:Ljava/lang/String; = "null_theme"

.field private static CONCURRENCY:I = 0x0

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_RC:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field private static final LAYOUT_DIR_CONFIG:I

.field private static final NULL_THEME_KEY:Ljava/lang/String; = "[2131623959, 2131623959, 2131623959, 2131623959]"

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final THREAD_PRIORITY:I = -0xb

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final TYPE_APP_NAME:Ljava/lang/String; = "AppName"

.field private static final TYPE_DEFAULT_VALUE:Ljava/lang/String; = "Def="

.field private static final TYPE_FORMATTED_STRING:Ljava/lang/String; = "Formatted"

.field private static final TYPE_INT_ARRAY_POSITION:Ljava/lang/String; = "IntPoz="

.field private static final TYPE_MENU_ITEM_TITLE:Ljava/lang/String; = "Menu"

.field private static final TYPE_PREFERENCES:Ljava/lang/String; = "Pref"

.field private static final TYPE_QUANTITY:Ljava/lang/String; = "Quantity="

.field private static final TYPE_QUANTITY_ID_OTHER:Ljava/lang/String; = "QuantityIdOther="

.field private static final TYPE_STRING_ARRAY_POSITION:Ljava/lang/String; = "StringPoz="

.field private static final TYPE_TEXT:Ljava/lang/String; = "Text"

.field private static final TYPE_TEXT_ARRAY_POSITION:Ljava/lang/String; = "TextPoz="

.field private static date:Ljava/util/Date;

.field static mScreenResources:Landroid/content/res/Resources;

.field private static mStartStoringRL:I

.field static mSystem:Landroid/content/res/Resources;

.field static mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTAG:Ljava/lang/String;

.field private static notificationStringsOriginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLoadDensityDpi:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private appAndWidgetStringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private ecs:Ljava/util/concurrent/ExecutorService;

.field private volatile file:Ljava/io/File;

.field private final mALDC:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public mAppIconResId:I

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field final mMetrics:Landroid/util/DisplayMetrics;

.field public mPackageName:Ljava/lang/String;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field public mResPackageName:Ljava/lang/String;

.field public mResUserId:I

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTmpValue:Landroid/util/TypedValue;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field private refThemeKey:Ljava/lang/String;

.field private resourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private resourcesMapType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 179
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->date:Ljava/util/Date;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceCaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/Resources;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/res/Resources;->mTAG:Ljava/lang/String;

    .line 182
    sput v3, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/Resources;->CONCURRENCY:I

    .line 196
    const/16 v1, 0x2000

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v1

    sput v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 207
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sCachedDrawables:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 219
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 222
    sput-object v0, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 227
    sput-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    .line 231
    sput v3, Landroid/content/res/Resources;->sLoadDensityDpi:I

    .line 265
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/LongSparseArray;

    sput-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 266
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v2, v1, v3

    .line 267
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v3, v1, v2

    .line 337
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sput-object v0, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedValue:Ljava/util/List;

    .line 187
    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 216
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 240
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 241
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 242
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 244
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 246
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 253
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 254
    new-array v0, v4, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 257
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 259
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 262
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 282
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    .line 294
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    .line 320
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iput-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    .line 1085
    iput-object v1, p0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1087
    iput-object v1, p0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    .line 1094
    iput v3, p0, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1096
    iput v3, p0, Landroid/content/res/Resources;->mUserId:I

    .line 4534
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 4538
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 4539
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 4540
    invoke-virtual {p0, v1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 4541
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 4542
    return-void

    :cond_0
    move-object v0, v1

    .line 282
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 294
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 320
    goto :goto_2

    .line 253
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1368
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1369
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedValue:Ljava/util/List;

    .line 187
    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 216
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 240
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 241
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 242
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 244
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 246
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 253
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 254
    new-array v0, v4, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 257
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 259
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 262
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 282
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    .line 294
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    .line 320
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iput-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    .line 1085
    iput-object v1, p0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1087
    iput-object v1, p0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    .line 1094
    iput v3, p0, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1096
    iput v3, p0, Landroid/content/res/Resources;->mUserId:I

    .line 1384
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 1385
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1386
    if-eqz p4, :cond_0

    .line 1387
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1389
    :cond_0
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1390
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 1391
    return-void

    :cond_1
    move-object v0, v1

    .line 282
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 294
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 320
    goto :goto_2

    .line 253
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private varargs addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "formattedString"    # Ljava/lang/String;
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1061
    const-string v8, "Formatted"

    invoke-direct {p0, p2, p1, v8}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1063
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 1064
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 1063
    .end local v3    # "i$":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 1068
    :cond_1
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1070
    .local v6, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    .line 1074
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1075
    .local v5, "resId":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1076
    .local v7, "typeKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, p2, v9, v8}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    goto :goto_1

    .line 1079
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "resId":Ljava/lang/Integer;
    .end local v6    # "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "typeKey":Ljava/lang/String;
    .restart local v3    # "i$":I
    :cond_2
    return-void
.end method

.method private addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "stringName"    # Ljava/lang/CharSequence;

    .prologue
    .line 382
    iget-object v4, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v4

    .line 383
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 384
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .local v2, "temp":Ljava/lang/CharSequence;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :try_start_2
    monitor-exit v4

    .line 406
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 400
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v3, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    monitor-exit v4

    goto :goto_1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 396
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v2    # "temp":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "resid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v5, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v5

    .line 353
    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 354
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    .local v2, "temp":I
    if-ne p2, v2, :cond_0

    .line 357
    monitor-exit v5

    .line 369
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":I
    :goto_0
    return-void

    .line 361
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "typKey":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v4, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    monitor-exit v5

    goto :goto_0

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "typKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private addToNotiMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "stringName"    # Ljava/lang/CharSequence;

    .prologue
    .line 419
    sget-object v4, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    monitor-enter v4

    .line 420
    :try_start_0
    sget-object v3, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 421
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 422
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 423
    .local v2, "temp":Ljava/lang/CharSequence;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    monitor-exit v4

    .line 433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v3, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v4

    goto :goto_0

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 3569
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3573
    .local v2, "separator":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3574
    move-object v0, p0

    .line 3575
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 3581
    .local v1, "remainder":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3577
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3578
    .restart local v0    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainder":Ljava/lang/String;
    goto :goto_0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .param p0, "quantityCode"    # I

    .prologue
    .line 1543
    packed-switch p0, :pswitch_data_0

    .line 1549
    const v0, 0x1000004

    :goto_0
    return v0

    .line 1544
    :pswitch_0
    const v0, 0x1000005

    goto :goto_0

    .line 1545
    :pswitch_1
    const v0, 0x1000006

    goto :goto_0

    .line 1546
    :pswitch_2
    const v0, 0x1000007

    goto :goto_0

    .line 1547
    :pswitch_3
    const v0, 0x1000008

    goto :goto_0

    .line 1548
    :pswitch_4
    const v0, 0x1000009

    goto :goto_0

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4211
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 4212
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v5, :cond_1

    .line 4241
    :cond_0
    :goto_0
    return-void

    .line 4216
    :cond_1
    iget-boolean v1, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v1, :cond_4

    .line 4217
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 4218
    .local v0, "changingConfigs":I
    if-eqz p2, :cond_2

    .line 4219
    const/4 v1, 0x0

    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "drawable"

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4220
    sget-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4223
    :cond_2
    sget v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "drawable"

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4225
    sget v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 4228
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4229
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4232
    :cond_3
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4237
    .end local v0    # "changingConfigs":I
    :cond_4
    iget-object v7, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v7

    move-object v1, p3

    move-wide v2, p6

    move-object v4, p4

    move v6, p5

    .line 4238
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    iget-boolean v1, p0, Landroid/content/res/Resources;->mCaching:Z

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    sget-object v1, Landroid/content/res/Resources;->sCachedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3397
    const v0, 0xfffffff

    .line 3398
    .local v0, "configChanges":I
    if-eqz p1, :cond_2

    .line 3399
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3400
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3401
    .local v2, "density":I
    if-nez v2, :cond_0

    .line 3402
    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v3, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 3405
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2, v4}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 3407
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_3

    .line 3408
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3409
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3428
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3434
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v0

    .line 3439
    .end local v2    # "density":I
    :cond_2
    return v0

    .line 3413
    .restart local v2    # "density":I
    :cond_3
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3414
    .local v1, "country":Ljava/lang/String;
    const-string v3, "ZG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3415
    const-string v3, "ZG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3416
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    sget-object v4, Ljava/util/Locale;->MYANMAR_UNICODE:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3417
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_0

    .line 3419
    :cond_4
    const-string v3, "MM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3420
    const-string v3, "ZG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3421
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    sget-object v4, Ljava/util/Locale;->MYANMAR_ZAWGYI:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3422
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private clearDrawableCacheLocked(Landroid/util/LongSparseArray;I)V
    .locals 5
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 3530
    .local p1, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3531
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3532
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 3533
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_0

    .line 3534
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3535
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 3536
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3544
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 3531
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3555
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    return-void
.end method

.method private clearDrawableCachesLocked(Landroid/util/ArrayMap;I)V
    .locals 3
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 3515
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3519
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3520
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p2}, Landroid/content/res/Resources;->clearDrawableCacheLocked(Landroid/util/LongSparseArray;I)V

    .line 3519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3522
    :cond_0
    return-void
.end method

.method private clearRCCachedDrawableLocked(Landroid/util/LongSparseArray;I)V
    .locals 6
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 3456
    .local p1, "futureCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3461
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3463
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3464
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3465
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 3466
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3475
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 3461
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3485
    :cond_1
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3486
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->removeAt(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3489
    :catch_0
    move-exception v2

    .line 3490
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "Resources"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3491
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 3492
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "Resources"

    const-string v5, "ExecutionException"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3495
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_2
    return-void
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 1534
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1535
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 1536
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 1538
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRCCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p2, "key"    # J
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;J",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, "drawableCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    const/4 v7, 0x0

    .line 4181
    const/4 v2, 0x0

    .line 4182
    .local v2, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources$ThemeKey;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4183
    .local v5, "mThemeKey":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    move-object v6, v7

    .line 4205
    :goto_1
    return-object v6

    .line 4182
    .end local v5    # "mThemeKey":Ljava/lang/String;
    :cond_0
    const-string v5, "[2131623959, 2131623959, 2131623959, 2131623959]"

    goto :goto_0

    .line 4185
    .restart local v5    # "mThemeKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 4186
    .local v4, "futureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v4, :cond_3

    .line 4188
    :try_start_0
    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 4189
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_3

    .line 4190
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v0

    .line 4191
    if-eqz v2, :cond_2

    .line 4192
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 4196
    :cond_2
    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_3
    :goto_2
    move-object v6, v7

    .line 4205
    goto :goto_1

    .line 4199
    :catch_0
    move-exception v1

    .line 4200
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v6, "Resources"

    const-string v8, "InterruptedException"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4201
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 4202
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v6, "Resources"

    const-string v8, "ExecutionException"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getScreenResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 1841
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1842
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    .line 1843
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 1844
    new-instance v0, Landroid/content/res/Resources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 1845
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    .line 1847
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1848
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getStringName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 672
    .local v2, "stringName":Ljava/lang/CharSequence;
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    :goto_0
    return-object v3

    .line 676
    :cond_0
    iget v3, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 677
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 679
    goto :goto_0

    .line 683
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 685
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 687
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v3, :cond_3

    .line 688
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 689
    if-eqz v2, :cond_3

    move-object v3, v2

    .line 690
    goto :goto_0

    .line 683
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 698
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_3
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 702
    :cond_4
    iget v3, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v3, :cond_5

    .line 703
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_5

    move-object v3, v2

    .line 705
    goto :goto_0

    .line 713
    :cond_5
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 717
    :cond_6
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 718
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 719
    if-eqz v2, :cond_7

    move-object v3, v2

    .line 720
    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    .line 724
    goto/16 :goto_0
.end method

.method private getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "labelRes"    # I
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 741
    const/4 v2, 0x0

    .line 743
    .local v2, "stringName":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 746
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 751
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v3, v2

    .line 754
    :goto_0
    return-object v3

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/MiuiResources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V

    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/miui/ResourcesManager;->initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSystem(I)Landroid/content/res/Resources;
    .locals 3
    .param p0, "displayId"    # I

    .prologue
    .line 1433
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1434
    :try_start_0
    sget-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    if-nez v1, :cond_0

    .line 1435
    new-instance v1, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 1437
    :cond_0
    sget-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 1438
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 1439
    new-instance v0, Landroid/content/res/Resources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 1440
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sget-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1443
    :cond_1
    monitor-exit v2

    return-object v0

    .line 1444
    .end local v0    # "ret":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadAppNames(Landroid/content/pm/PackageManager;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 584
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 586
    return-void
.end method

.method private loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const-wide/16 v8, 0x2000

    .line 4373
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 4374
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t convert to color state list: type=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/util/TypedValue;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4378
    :cond_0
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4397
    .local v2, "file":Ljava/lang/String;
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4398
    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4400
    :try_start_0
    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "colorstatelist"

    invoke-virtual {p0, v2, p2, v5, v6}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 4402
    .local v4, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v4, p3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 4403
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4418
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4420
    return-object v0

    .line 4404
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v4    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 4405
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4406
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from color state list resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4409
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4410
    throw v3

    .line 4413
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4414
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from drawable resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": .xml extension required"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 4247
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v9, :cond_0

    .line 4248
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resource \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is not a Drawable (color or path): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4252
    :cond_0
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4271
    .local v2, "file":Ljava/lang/String;
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4273
    :try_start_0
    const-string v9, ".xml"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4274
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v10, "drawable"

    invoke-virtual {p0, v2, p2, v9, v10}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 4276
    .local v8, "rp":Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0, p1, v8, p2, p3}, Landroid/content/res/Resources;->createFromXml(Landroid/util/TypedValue;Landroid/content/res/XmlResourceParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4277
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4301
    .end local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :goto_0
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 4303
    return-object v0

    .line 4279
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    iget-object v9, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v10, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 4281
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {p0, p1, v4, v2, p2}, Landroid/content/res/Resources;->createFromResourceStream(Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4282
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4284
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 4285
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 4286
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4288
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4290
    iget-object v9, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v6

    .line 4291
    .local v6, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 4292
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4293
    .local v5, "overlay":Ljava/lang/String;
    const-string v9, "Resources"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resources overlayPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4296
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "overlay":Ljava/lang/String;
    :cond_2
    const-string v9, "Resources"

    const-string v10, "Resources overlays is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    :cond_3
    throw v7
.end method

.method private loadNamesFromMetaData(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 606
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {p3, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 613
    :goto_0
    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_1
    return-void

    .line 609
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 617
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 619
    .local v1, "contextRes":Landroid/content/res/Resources;
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 621
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 626
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 635
    .end local v7    # "type":I
    :cond_3
    :goto_2
    const/4 v8, 0x0

    const-string v9, "description"

    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 636
    .local v3, "id":I
    if-eqz v3, :cond_0

    .line 637
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "stringName":Ljava/lang/String;
    invoke-direct {p0, v6, v5}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 628
    .end local v3    # "id":I
    .end local v5    # "stringName":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 629
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 630
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 631
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private mClearALDCLocked(Landroid/util/ArrayMap;I)V
    .locals 3
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 3444
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    if-eqz p1, :cond_1

    .line 3445
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3446
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3447
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3448
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p2}, Landroid/content/res/Resources;->clearRCCachedDrawableLocked(Landroid/util/LongSparseArray;I)V

    .line 3446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3451
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchFormattedStringToKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "formattedString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 796
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "%"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v4

    .line 802
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%d|%s|%[0-9]?[0-9]?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[s,d]?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 809
    .local v5, "splited":[Ljava/lang/String;
    array-length v6, v5

    if-eqz v6, :cond_0

    .line 813
    const/4 v4, 0x1

    .line 815
    .local v4, "match":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 816
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 817
    const/4 v4, 0x0

    .line 818
    goto :goto_0

    .line 815
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 4506
    if-nez p1, :cond_0

    .line 4507
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4509
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private resetStringNames(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 766
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 772
    iget-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    iget-object v1, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 775
    monitor-exit v1

    .line 777
    :cond_0
    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resourceHasPackage(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 3722
    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchAppAndWidgetStringNames(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "stringNames"    # Ljava/lang/StringBuilder;
    .param p2, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    iget-object v5, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v5

    .line 503
    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 504
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    if-eqz v1, :cond_1

    .line 506
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 512
    .local v3, "temp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v2, "names":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 515
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v4, "AppName"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 504
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "names":Ljava/lang/StringBuilder;
    .end local v3    # "temp":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 522
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method private searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v5, "stringNames":Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v8

    .line 449
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 450
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz v2, :cond_0

    .line 452
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 455
    .local v4, "resid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v3, "names":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "typKey":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 450
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "names":Ljava/lang/StringBuilder;
    .end local v4    # "resid":I
    .end local v6    # "typKey":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 465
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v8

    .line 466
    :try_start_2
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 467
    .local v1, "key":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Landroid/content/res/Resources;->matchFormattedStringToKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 470
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "stringNames":Ljava/lang/StringBuilder;
    monitor-exit v8

    .line 484
    .end local v1    # "key":Ljava/lang/CharSequence;
    :goto_1
    return-object v5

    .line 471
    .restart local v1    # "key":Ljava/lang/CharSequence;
    .restart local v5    # "stringNames":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 474
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "stringNames":Ljava/lang/StringBuilder;
    monitor-exit v8

    goto :goto_1

    .line 477
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/CharSequence;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v5    # "stringNames":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    :cond_4
    invoke-direct {p0, v5, p1}, Landroid/content/res/Resources;->searchAppAndWidgetStringNames(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 482
    invoke-direct {p0, v5, p1}, Landroid/content/res/Resources;->searchNotificationStringName(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private searchNotificationStringName(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "stringNames"    # Ljava/lang/StringBuilder;
    .param p2, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    sget-object v5, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    monitor-enter v5

    .line 540
    :try_start_0
    sget-object v4, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 541
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    if-eqz v1, :cond_1

    .line 543
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 550
    .local v3, "temp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v2, "names":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 553
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 541
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "names":Ljava/lang/StringBuilder;
    .end local v3    # "temp":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 558
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 1301
    const v2, 0x1030005

    const v3, 0x103006b

    const v4, 0x1030128

    const v5, 0x103013f

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .prologue
    .line 1311
    if-eqz p0, :cond_0

    .line 1323
    .end local p0    # "curTheme":I
    :goto_0
    return p0

    .line 1314
    .restart local p0    # "curTheme":I
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 1315
    goto :goto_0

    .line 1317
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 1318
    goto :goto_0

    .line 1320
    :cond_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_3

    move p0, p4

    .line 1321
    goto :goto_0

    :cond_3
    move p0, p5

    .line 1323
    goto :goto_0
.end method

.method public static setLoadDensityDpi(I)V
    .locals 0
    .param p0, "loadDensityDpi"    # I

    .prologue
    .line 4529
    sput p0, Landroid/content/res/Resources;->sLoadDensityDpi:I

    .line 4530
    return-void
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "quantityCode"    # I

    .prologue
    .line 1554
    packed-switch p0, :pswitch_data_0

    .line 1560
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 1555
    :pswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 1556
    :pswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 1557
    :pswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 1558
    :pswitch_3
    const-string v0, "few"

    goto :goto_0

    .line 1559
    :pswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 1554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateScreenConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1854
    sget-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1855
    sget-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1857
    :cond_0
    return-void
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3601
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 3602
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 3607
    :cond_0
    return-void
.end method

.method public static updateSystemDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p0, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 4518
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 4519
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->updateDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 4521
    :cond_0
    return-void
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 5
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 3968
    const v2, -0x40001001    # -1.9995116f

    and-int/2addr v2, p1

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 3972
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3978
    .local v1, "resName":Ljava/lang/String;
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    const/4 v2, 0x0

    .line 3994
    .end local v1    # "resName":Ljava/lang/String;
    :goto_1
    return v2

    .line 3973
    :catch_0
    move-exception v0

    .line 3974
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 3994
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addAccountsNames(Landroid/content/Context;[Landroid/accounts/AuthenticatorDescription;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    .line 989
    sget-boolean v12, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v12, :cond_4

    .line 990
    iget-object v13, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v13

    .line 994
    const/4 v3, 0x0

    .line 995
    .local v3, "firstAdd":Z
    :try_start_0
    iget-object v12, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 996
    const/4 v3, 0x1

    .line 998
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 999
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v1, p2

    .local v1, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v0, v1, v4

    .line 1000
    .local v0, "ad":Landroid/accounts/AuthenticatorDescription;
    iget v6, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 1001
    .local v6, "labelId":I
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .local v8, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1004
    .local v10, "res":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1008
    :goto_1
    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    .line 1009
    :try_start_2
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1010
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    .line 1011
    .local v11, "stringName":Ljava/lang/String;
    invoke-direct {p0, v5, v11}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 999
    .end local v5    # "label":Ljava/lang/String;
    .end local v11    # "stringName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1017
    .end local v0    # "ad":Landroid/accounts/AuthenticatorDescription;
    .end local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i$":I
    .end local v6    # "labelId":I
    .end local v7    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1014
    .restart local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz v3, :cond_3

    .line 1015
    :try_start_3
    invoke-direct {p0, v9}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 1017
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1019
    .end local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "firstAdd":Z
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void
.end method

.method public addAppsNames(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_4

    .line 908
    iget-object v8, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v8

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "firstAdd":Z
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 914
    const/4 v1, 0x1

    .line 916
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 917
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 918
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-direct {p0, v5, p2}, Landroid/content/res/Resources;->getStringName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 919
    .local v6, "stringName":Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v6}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 920
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 921
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 922
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 925
    .local v3, "keyset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 926
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, v5, p1}, Landroid/content/res/Resources;->loadNamesFromMetaData(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 935
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keyset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "stringName":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 932
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_3

    .line 933
    :try_start_1
    invoke-direct {p0, p2}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 935
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    .end local v1    # "firstAdd":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public addAppsNames(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_3

    .line 954
    iget-object v6, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v6

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "firstAdd":Z
    :try_start_0
    iget-object v5, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 960
    const/4 v0, 0x1

    .line 962
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 963
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 964
    .local v2, "item":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I

    invoke-direct {p0, v5, v7, v3}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 966
    .local v4, "stringName":Ljava/lang/CharSequence;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 971
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "stringName":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 968
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 969
    :try_start_1
    invoke-direct {p0, v3}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 971
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    .end local v0    # "firstAdd":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    return-void
.end method

.method public addMenuItemTitle(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 872
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 873
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 875
    .local v0, "itemTitle":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 876
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    .line 878
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "Menu"

    invoke-direct {p0, v1, v2, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 883
    .end local v0    # "itemTitle":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method public addNotificationString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "stringNames"    # Ljava/lang/CharSequence;

    .prologue
    .line 1035
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1

    .line 1036
    move-object v0, p2

    .line 1038
    .local v0, "stringName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1039
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1042
    :cond_0
    if-eqz v0, :cond_1

    .line 1043
    invoke-direct {p0, p1, v0}, Landroid/content/res/Resources;->addToNotiMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1046
    .end local v0    # "stringName":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public addPreferenceString(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "resid"    # I

    .prologue
    .line 858
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 859
    const-string v0, "Pref"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 861
    :cond_0
    return-void
.end method

.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 3949
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 3950
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 3951
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 3953
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 3912
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 3914
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 3915
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3916
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 3917
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 3918
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 3919
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 3921
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 3915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3923
    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 3924
    return-void

    .line 3923
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2436
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2319
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2320
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2321
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 2322
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2324
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2325
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_2

    .line 2327
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2329
    :cond_2
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2332
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2205
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2206
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2207
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 2208
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2210
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2211
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 2213
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2214
    iget v2, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    .line 2230
    :goto_0
    return v2

    .line 2215
    :cond_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    .line 2216
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2221
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2220
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2221
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2224
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2225
    :try_start_2
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_3

    .line 2226
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2228
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2230
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_0

    .line 2228
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2253
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2254
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2255
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorStateList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "unresolved theme attributes! Consider using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resources.getColorStateList(int, Theme) or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Context.getColorStateList(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2285
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2286
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2287
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 2288
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2292
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2293
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2296
    .local v0, "res":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2297
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 2298
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2300
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2302
    return-object v0

    .line 2290
    .end local v0    # "res":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2293
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2300
    .restart local v0    # "res":Landroid/content/res/ColorStateList;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 3670
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 3659
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1821
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1822
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1823
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1824
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1826
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1827
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1828
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1830
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1833
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1880
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1881
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1882
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1883
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1885
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1886
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1887
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1890
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1893
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1917
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1918
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1919
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1920
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1922
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1923
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1924
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1927
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1930
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 3618
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2001
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2002
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2003
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unresolved theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Context.getDrawable(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2007
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2034
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2035
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2036
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_2

    .line 2037
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2041
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2042
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2047
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 2050
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2051
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_1

    .line 2052
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2054
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2055
    return-object v0

    .line 2039
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2042
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2054
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2087
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 2107
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2108
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2109
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2110
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_3

    .line 2111
    new-instance v2, Landroid/util/TypedValue;

    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2115
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 2124
    iget v3, v2, Landroid/util/TypedValue;->density:I

    if-lez v3, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->density:I

    const v5, 0xffff

    if-eq v3, v5, :cond_0

    .line 2125
    iget v3, v2, Landroid/util/TypedValue;->density:I

    if-ne v3, p2, :cond_4

    .line 2126
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/util/TypedValue;->density:I

    .line 2131
    :cond_0
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    invoke-virtual {p0, v2, p1, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2134
    .local v1, "res":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 2135
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 2137
    :cond_1
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2138
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v3, :cond_2

    .line 2139
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2141
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2142
    return-object v1

    .line 2113
    .end local v1    # "res":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2131
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2128
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "value":Landroid/util/TypedValue;
    :cond_4
    :try_start_3
    iget v3, v2, Landroid/util/TypedValue;->density:I

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v3, v5

    div-int/2addr v3, p2

    iput v3, v2, Landroid/util/TypedValue;->density:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2141
    .restart local v1    # "res":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public getFloat(I)F
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 2377
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2378
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2379
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 2380
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2382
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2383
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 2384
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    monitor-exit v2

    return v1

    .line 2386
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2388
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .prologue
    .line 1951
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1952
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1953
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1954
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1956
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1957
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 1958
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1960
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1963
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 3705
    if-nez p1, :cond_0

    .line 3706
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3709
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3713
    :goto_0
    return v0

    .line 3710
    :catch_0
    move-exception v0

    .line 3713
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getIntArray(I)[I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1762
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v1

    .line 1763
    .local v1, "res":[I
    if-eqz v1, :cond_0

    .line 1764
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1766
    aget v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IntPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1771
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Int array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1769
    :cond_1
    return-object v1
.end method

.method public getInteger(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2347
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2348
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2349
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 2350
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2352
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2353
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    .line 2355
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 2357
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2360
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2412
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2154
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 2155
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 2157
    .local v1, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2162
    :goto_0
    return-object v1

    .line 2159
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3959
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1674
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1644
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1645
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, "formatted":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_0

    .line 1647
    invoke-direct {p0, p1, v0, p3}, Landroid/content/res/Resources;->addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    :cond_0
    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v6, 0x1000004

    .line 1510
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v3

    .line 1511
    .local v3, "rule":Llibcore/icu/NativePluralRules;
    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v3, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1513
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1514
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_0

    .line 1515
    invoke-static {p2}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, "quantityCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .end local v0    # "quantityCode":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 1526
    .end local v1    # "res":Ljava/lang/CharSequence;
    .local v2, "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    .line 1520
    .end local v2    # "res":Ljava/lang/CharSequence;
    .restart local v1    # "res":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v4, p1, v6}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1521
    if-eqz v1, :cond_3

    .line 1522
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_2

    .line 1523
    invoke-static {v6}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1524
    .restart local v0    # "quantityCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuantityIdOther="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .end local v0    # "quantityCode":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 1526
    .end local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "res":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1528
    .end local v2    # "res":Ljava/lang/CharSequence;
    .restart local v1    # "res":Ljava/lang/CharSequence;
    :cond_3
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Plural resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " quantity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3797
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 3798
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3799
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3740
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 3741
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3742
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3759
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3760
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3761
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3778
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 3779
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3780
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1581
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1582
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1584
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1610
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, "formatted":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_0

    .line 1612
    invoke-direct {p0, p1, v0, p2}, Landroid/content/res/Resources;->addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1614
    :cond_0
    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1737
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1738
    .local v1, "res":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1739
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1741
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StringPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_1
    return-object v1
.end method

.method public getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 839
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 840
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 842
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1477
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1478
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 1479
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 1480
    const-string v1, "Text"

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1482
    :cond_0
    return-object v0

    .line 1484
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 1692
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1693
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_0
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Def="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1696
    :cond_0
    if-eqz v0, :cond_2

    .end local v0    # "res":Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 1692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "res":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, p2

    .line 1696
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1711
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1712
    .local v1, "res":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1713
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1714
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1715
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1720
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1718
    :cond_1
    return-object v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2594
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2595
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 2596
    return-void

    .line 2598
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2646
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2647
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 2648
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2649
    return-void

    .line 2651
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2617
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2618
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 2619
    return-void

    .line 2621
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2461
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public isStoringRL()I
    .locals 1

    .prologue
    .line 1451
    sget v0, Landroid/content/res/Resources;->mStartStoringRL:I

    return v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4317
    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    iget v3, p1, Landroid/util/TypedValue;->data:I

    int-to-long v8, v3

    or-long v4, v6, v8

    .line 4322
    .local v4, "key":J
    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v3, v6, :cond_2

    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_2

    .line 4324
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    .line 4326
    .local v2, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_1

    .line 4327
    invoke-virtual {v2}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v1, v3

    .line 4369
    .end local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 4330
    .restart local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_1
    iget v3, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4332
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_0

    .line 4333
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v7, "color"

    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4335
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4342
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .end local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_2
    iget-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 4343
    .local v0, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ColorStateList;>;"
    invoke-virtual {v0, v4, v5, p3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 4344
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    if-nez v1, :cond_0

    .line 4348
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    .line 4350
    .restart local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_3

    .line 4351
    invoke-virtual {v2, p0, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 4354
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_3
    if-nez v1, :cond_4

    .line 4355
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4358
    :cond_4
    if-eqz v1, :cond_0

    .line 4359
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_5

    .line 4360
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v7, "color"

    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4362
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4365
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v0, v4, v5, p3, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 28
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4015
    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/res/Resources;->mAppIconResId:I

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4017
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v13

    .line 4018
    .local v13, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {v13, v4, v5}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v18

    .line 4019
    .local v18, "imageData":[B
    const/16 v16, 0x0

    .line 4020
    .local v16, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_0

    .line 4021
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4023
    .local v19, "is":Ljava/io/ByteArrayInputStream;
    new-instance v25, Landroid/util/TypedValue;

    invoke-direct/range {v25 .. v25}, Landroid/util/TypedValue;-><init>()V

    .line 4024
    .local v25, "typedValue":Landroid/util/TypedValue;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/util/TypedValue;->density:I

    .line 4026
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4027
    .local v22, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v0, v22

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 4029
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4031
    const-string v4, "Resources"

    const-string v5, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4175
    .end local v13    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v16    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v18    # "imageData":[B
    .end local v19    # "is":Ljava/io/ByteArrayInputStream;
    .end local v22    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v25    # "typedValue":Landroid/util/TypedValue;
    :goto_0
    return-object v16

    .line 4036
    :catch_0
    move-exception v17

    .line 4037
    .local v17, "e":Ljava/lang/Exception;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EDM: Get Icon EX: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    .line 4047
    const/4 v6, 0x1

    .line 4048
    .local v6, "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 4049
    .local v7, "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->data:I

    int-to-long v10, v4

    .line 4058
    .local v10, "key":J
    :goto_1
    const/16 v20, 0x0

    .line 4059
    .local v20, "mDR":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v4, :cond_7

    .line 4062
    move-object/from16 v0, p3

    invoke-virtual {v7, v10, v11, v0}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 4063
    .local v14, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_2

    move-object/from16 v16, v14

    .line 4064
    goto :goto_0

    .line 4051
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v10    # "key":J
    .end local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v20    # "mDR":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v6, 0x0

    .line 4052
    .restart local v6    # "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 4053
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    move-object/from16 v0, p1

    iget v8, v0, Landroid/util/TypedValue;->data:I

    int-to-long v0, v8

    move-wide/from16 v26, v0

    or-long v10, v4, v26

    .restart local v10    # "key":J
    goto :goto_1

    .line 4069
    .restart local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "mDR":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v10, v11, v1}, Landroid/content/res/Resources;->getRCCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 4070
    if-eqz v20, :cond_3

    move-object/from16 v16, v20

    .line 4077
    goto :goto_0

    .line 4097
    :cond_3
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources$ThemeKey;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4098
    .local v21, "mThemeKey":Ljava/lang/String;
    :goto_2
    const-string v4, "[2131623959, 2131623959, 2131623959, 2131623959]"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4099
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 4103
    :cond_4
    sget v4, Landroid/content/res/Resources;->mStartStoringRL:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Landroid/app/ActivityThread;->getCurrActivityFromThread()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 4105
    const/16 v23, 0x0

    .line 4107
    .local v23, "out":Ljava/io/FileWriter;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v4, :cond_5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4109
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "rList-"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityThread;->getCurrActivityFromThread()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 4112
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4113
    new-instance v24, Ljava/io/FileWriter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4114
    .end local v23    # "out":Ljava/io/FileWriter;
    .local v24, "out":Ljava/io/FileWriter;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4115
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v23, v24

    .line 4120
    .end local v24    # "out":Ljava/io/FileWriter;
    .restart local v23    # "out":Ljava/io/FileWriter;
    :cond_6
    if-eqz v23, :cond_7

    .line 4122
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4137
    .end local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v21    # "mThemeKey":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/FileWriter;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    sget v5, Landroid/content/res/Resources;->sPreloadedDensity:I

    if-eq v4, v5, :cond_c

    .line 4138
    const/4 v15, 0x0

    .line 4149
    .local v15, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_4
    if-eqz v15, :cond_d

    if-nez p4, :cond_d

    .line 4151
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 4161
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v9, 0x1

    .line 4162
    .local v9, "canApplyTheme":Z
    :goto_6
    if-eqz v9, :cond_8

    if-eqz p3, :cond_8

    .line 4163
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 4164
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 4165
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 4170
    :cond_8
    if-eqz v12, :cond_9

    .line 4171
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    .line 4172
    invoke-direct/range {v4 .. v12}, Landroid/content/res/Resources;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    :cond_9
    move-object/from16 v16, v12

    .line 4175
    goto/16 :goto_0

    .line 4097
    .end local v9    # "canApplyTheme":Z
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    const-string v21, "[2131623959, 2131623959, 2131623959, 2131623959]"

    goto/16 :goto_2

    .line 4123
    .restart local v21    # "mThemeKey":Ljava/lang/String;
    .restart local v23    # "out":Ljava/io/FileWriter;
    :catch_1
    move-exception v17

    .line 4124
    .local v17, "e":Ljava/io/IOException;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " IOException"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4117
    .end local v17    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v17

    .line 4118
    .restart local v17    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_4
    const-string v4, "Resources"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4120
    if-eqz v23, :cond_7

    .line 4122
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 4123
    :catch_3
    move-exception v17

    .line 4124
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " IOException"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4120
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_8
    if-eqz v23, :cond_b

    .line 4122
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 4125
    :cond_b
    :goto_9
    throw v4

    .line 4123
    :catch_4
    move-exception v17

    .line 4124
    .restart local v17    # "e":Ljava/io/IOException;
    const-string v5, "Resources"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " IOException"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4139
    .end local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "e":Ljava/io/IOException;
    .end local v21    # "mThemeKey":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/FileWriter;
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v11, v1}, Landroid/content/res/Resources;->getPreloadedDrawable(JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v15

    .restart local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto/16 :goto_4

    .line 4143
    :cond_d
    if-eqz v6, :cond_e

    .line 4153
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v12, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 4155
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/content/res/Resources;->loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 4161
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 4120
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "mThemeKey":Ljava/lang/String;
    .restart local v24    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object/from16 v23, v24

    .end local v24    # "out":Ljava/io/FileWriter;
    .restart local v23    # "out":Ljava/io/FileWriter;
    goto :goto_8

    .line 4117
    .end local v23    # "out":Ljava/io/FileWriter;
    .restart local v24    # "out":Ljava/io/FileWriter;
    :catch_5
    move-exception v17

    move-object/from16 v23, v24

    .end local v24    # "out":Ljava/io/FileWriter;
    .restart local v23    # "out":Ljava/io/FileWriter;
    goto/16 :goto_7
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4425
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4426
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 4427
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 4428
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 4430
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4431
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 4432
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 4435
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4438
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4443
    if-eqz p2, :cond_7

    .line 4446
    :try_start_0
    iget-object v9, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4448
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v8

    .line 4449
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4450
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v8, v8, v2

    if-ne v8, p2, :cond_1

    .line 4453
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 4454
    .local v6, "result":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_0

    .line 4455
    invoke-interface {v6, p1}, Landroid/content/res/XmlResourceParser;->setFilePath(Ljava/lang/String;)V

    .line 4457
    :cond_0
    monitor-exit v9

    .line 4481
    :goto_1
    return-object v6

    .line 4449
    .end local v6    # "result":Landroid/content/res/XmlResourceParser;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4463
    :cond_2
    iget-object v8, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v8, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 4465
    .local v0, "block":Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_6

    .line 4466
    iget v8, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v8, 0x1

    .line 4467
    .local v5, "pos":I
    if-lt v5, v3, :cond_3

    const/4 v5, 0x0

    .line 4468
    :cond_3
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 4469
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v8, v5

    .line 4470
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_4

    .line 4471
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 4473
    :cond_4
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v8, v5

    .line 4474
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v8, v5

    .line 4477
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 4478
    .restart local v6    # "result":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_5

    .line 4479
    invoke-interface {v6, p1}, Landroid/content/res/XmlResourceParser;->setFilePath(Ljava/lang/String;)V

    .line 4481
    :cond_5
    monitor-exit v9

    goto :goto_1

    .line 4483
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v5    # "pos":I
    .end local v6    # "result":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4484
    :catch_0
    move-exception v1

    .line 4485
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4488
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4489
    throw v7

    .line 4483
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "block":Landroid/content/res/XmlBlock;
    .restart local v2    # "i":I
    .restart local v3    # "num":I
    :cond_6
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4493
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_7
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from xml type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 3187
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 3203
    array-length v7, p2

    .line 3204
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    .line 3210
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    .line 3211
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    .line 3214
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1790
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 1791
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 1792
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1796
    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1797
    .local v0, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 1798
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v2

    return-object v2
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2480
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2481
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2482
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 2483
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2487
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 2489
    .local v0, "res":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2490
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 2491
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2493
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2494
    return-object v0

    .line 2485
    .end local v0    # "res":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2487
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2493
    .restart local v0    # "res":Ljava/io/InputStream;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2512
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2515
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2517
    :catch_0
    move-exception v0

    .line 2518
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2520
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2521
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2549
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2550
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2551
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_1

    .line 2552
    new-instance v2, Landroid/util/TypedValue;

    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2556
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2557
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2559
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 2569
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2570
    :try_start_2
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_0

    .line 2571
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2573
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 2554
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2557
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2573
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2561
    :catch_0
    move-exception v0

    .line 2562
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2567
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2569
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2570
    :try_start_6
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_2

    .line 2571
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2573
    :cond_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3858
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3861
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3863
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3864
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3865
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3870
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3872
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 3873
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 3874
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3875
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3896
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3897
    return-void

    .line 3876
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 3877
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 3878
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 3880
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3881
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 3882
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 3884
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3885
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3890
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3891
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 3816
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 3819
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 3820
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 3824
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3825
    .local v0, "nodeName":Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3826
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3827
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3830
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3833
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3678
    if-eqz p1, :cond_0

    .line 3679
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3680
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3682
    :cond_0
    return-void
.end method

.method public setRCable(ILjava/io/File;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "fileName"    # Ljava/io/File;

    .prologue
    .line 1456
    sput p1, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 1457
    iput-object p2, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1458
    return-void
.end method

.method public setRLRable(Ljava/lang/String;)V
    .locals 6
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1201
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1202
    .local v0, "bool":Ljava/lang/Boolean;
    if-eqz p1, :cond_2

    .line 1205
    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1206
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rList-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1207
    :cond_0
    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1210
    const-string v1, "Resources"

    const-string v2, "Read-only is not set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_1
    sput v5, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 1216
    :cond_2
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 3932
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3933
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_0

    .line 3934
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3936
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 3937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 3938
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 3939
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3940
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3941
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3942
    return-void
.end method

.method public startRC(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "rFile"    # Ljava/io/File;

    .prologue
    .line 1105
    sget v3, Landroid/content/res/Resources;->CONCURRENCY:I

    new-instance v4, Landroid/content/res/Resources$ProcessPriorityThreadFactory;

    const/16 v7, -0xb

    invoke-direct {v4, v7}, Landroid/content/res/Resources$ProcessPriorityThreadFactory;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    .line 1106
    const/4 v12, 0x0

    .line 1107
    .local v12, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v13, 0x0

    .line 1108
    .local v13, "in":Ljava/io/BufferedReader;
    const-wide/16 v8, 0x0

    .line 1109
    .local v8, "key":J
    const/16 v16, 0x0

    .line 1110
    .local v16, "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1113
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1114
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "rList-"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1115
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Landroid/content/res/Resources;->mStartStoringRL:I

    if-nez v3, :cond_8

    .line 1116
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    .end local v13    # "in":Ljava/io/BufferedReader;
    .local v14, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 1118
    const-string v3, "/"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1122
    .local v2, "arrayString":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1123
    .local v18, "resourceId":I
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1124
    const-string v3, "[2131623959, 2131623959, 2131623959, 2131623959]"

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 1130
    :goto_1
    if-eqz v18, :cond_1

    .line 1131
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1132
    .local v5, "mTmp":Landroid/util/TypedValue;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1133
    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 1134
    iget v3, v5, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const/16 v3, 0x20

    shl-long v20, v20, v3

    iget v3, v5, Landroid/util/TypedValue;->data:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    or-long v8, v20, v22

    .line 1138
    const/4 v10, 0x0

    .line 1139
    .local v10, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    check-cast v10, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1140
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v10, :cond_2

    .line 1145
    :cond_2
    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1146
    .local v6, "file":Ljava/lang/String;
    const-wide/16 v20, 0x0

    cmp-long v3, v8, v20

    if-ltz v3, :cond_1

    if-eqz v6, :cond_1

    const-string v3, ".jpg"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".xml"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongSparseArray;

    move-object/from16 v16, v0

    .line 1148
    if-nez v16, :cond_3

    .line 1149
    new-instance v17, Landroid/util/LongSparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/LongSparseArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1150
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .local v17, "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v17

    .line 1152
    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_3
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v12, v0

    .line 1153
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_4
    if-nez v10, :cond_1

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v0

    new-instance v3, Landroid/content/res/Resources$RCCallable;

    move-object/from16 v4, p0

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v9}, Landroid/content/res/Resources$RCCallable;-><init>(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/content/res/Resources;J)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v12

    .line 1160
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9, v12}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1169
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_0
    move-exception v11

    move-object v13, v14

    .line 1170
    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/InterruptedException;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v3, "Resources"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1180
    if-eqz v13, :cond_5

    .line 1182
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1194
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_3
    return-void

    .line 1126
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v18    # "resourceId":I
    :cond_6
    const/4 v3, 0x1

    :try_start_6
    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 1171
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_1
    move-exception v11

    move-object v13, v14

    .line 1172
    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :goto_4
    :try_start_7
    const-string v3, "Resources"

    const-string v4, "ExecutionException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1180
    if-eqz v13, :cond_5

    .line 1182
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    .line 1184
    :catch_2
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_7
    move-object v13, v14

    .line 1180
    .end local v14    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :cond_8
    if-eqz v13, :cond_5

    .line 1182
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 1184
    :catch_3
    move-exception v11

    .line 1185
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1186
    .end local v11    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 1187
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1184
    .local v11, "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1186
    .local v11, "e":Ljava/lang/InterruptedException;
    :catch_6
    move-exception v11

    .line 1187
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1186
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    :catch_7
    move-exception v11

    .line 1187
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1173
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v11

    .line 1174
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_a
    const-string v3, "Resources"

    const-string v4, "RunTimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1180
    if-eqz v13, :cond_5

    .line 1182
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_3

    .line 1184
    :catch_9
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1186
    .local v11, "e":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v11

    .line 1187
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1175
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v11

    .line 1176
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_c
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1180
    if-eqz v13, :cond_5

    .line 1182
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_3

    .line 1184
    :catch_c
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1186
    .local v11, "e":Ljava/io/FileNotFoundException;
    :catch_d
    move-exception v11

    .line 1187
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1177
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_e
    move-exception v11

    .line 1178
    .local v11, "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1180
    if-eqz v13, :cond_5

    .line 1182
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    goto/16 :goto_3

    .line 1184
    :catch_f
    move-exception v11

    .line 1185
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1186
    :catch_10
    move-exception v11

    .line 1187
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1180
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v13, :cond_9

    .line 1182
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1183
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_12

    .line 1188
    :cond_9
    :goto_9
    throw v3

    .line 1184
    :catch_11
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/io/IOException;
    const-string v4, "Resources"

    const-string v7, "IOException"

    invoke-static {v4, v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1186
    .end local v11    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v11

    .line 1187
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v4, "Resources"

    const-string v7, "RuntimeException"

    invoke-static {v4, v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1180
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catchall_2
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_8

    .line 1177
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_13
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_14
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1175
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_15
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_16
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 1173
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_17
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_18
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 1171
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_19
    move-exception v11

    goto/16 :goto_4

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_1a
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1169
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_1b
    move-exception v11

    goto/16 :goto_2

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_1c
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 3224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 3225
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 24
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3233
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->resetStringNames(Landroid/content/res/Configuration;)V

    .line 3240
    if-eqz p3, :cond_0

    .line 3241
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3243
    :cond_0
    if-eqz p2, :cond_1

    .line 3244
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 3255
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 3258
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 3259
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v22, v0

    .line 3260
    .local v22, "oldDensityDpi":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v21, v0

    .line 3261
    .local v21, "newDensityDpi":I
    if-lez v22, :cond_2

    if-lez v21, :cond_2

    move/from16 v0, v22

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 3262
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v2}, Landroid/content/res/DrawableCache;->clearAllCaches()V

    .line 3263
    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3264
    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3268
    .end local v21    # "newDensityDpi":I
    .end local v22    # "oldDensityDpi":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v20

    .line 3269
    .local v20, "configChanges":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_3

    .line 3270
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3271
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3273
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_4

    .line 3274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3277
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 3279
    const/4 v5, 0x0

    .line 3280
    .local v5, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_5

    .line 3281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/Resources;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3285
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_8

    .line 3286
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3287
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3296
    .local v13, "height":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 3298
    const/4 v10, 0x3

    .line 3308
    .local v10, "keyboardHidden":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 3309
    .local v8, "loadDensityDpi":I
    sget v2, Landroid/content/res/Resources;->sLoadDensityDpi:I

    if-eqz v2, :cond_6

    .line 3310
    sget v8, Landroid/content/res/Resources;->sLoadDensityDpi:I

    .line 3312
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 3333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 3334
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 3336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 3337
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->mClearALDCLocked(Landroid/util/ArrayMap;I)V

    .line 3350
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 3351
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3352
    sget-object v3, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 3353
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_7

    .line 3354
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 3356
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3357
    return-void

    .line 3290
    .end local v8    # "loadDensityDpi":I
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3292
    .restart local v12    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13    # "height":I
    goto/16 :goto_0

    .line 3300
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .restart local v10    # "keyboardHidden":I
    goto/16 :goto_1

    .line 3351
    .end local v5    # "locale":Ljava/lang/String;
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v20    # "configChanges":I
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3356
    .restart local v5    # "locale":Ljava/lang/String;
    .restart local v8    # "loadDensityDpi":I
    .restart local v10    # "keyboardHidden":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    .restart local v20    # "configChanges":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public updateConfiguration(Landroid/view/Display;)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 3370
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 3371
    .local v1, "displayId":I
    if-ltz v1, :cond_0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 3390
    :cond_0
    :goto_0
    return-void

    .line 3376
    :cond_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3377
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3379
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3380
    .local v0, "config":Landroid/content/res/Configuration;
    iput v1, v0, Landroid/content/res/Configuration;->displayId:I

    .line 3381
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3382
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3383
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3389
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public updateDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 3503
    iget-object v1, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3504
    if-eqz p1, :cond_0

    .line 3505
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 3507
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 3508
    monitor-exit v1

    .line 3509
    return-void

    .line 3508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
