.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ApplicationLoaders;->IS_ELASTIC_ENABLED:Z

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/ClassLoader;
    .locals 8
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "isElasticApp"    # Z

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 64
    .local v0, "baseParent":Ljava/lang/ClassLoader;
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 65
    if-nez p3, :cond_0

    .line 66
    move-object p3, v0

    .line 74
    :cond_0
    if-ne p3, v0, :cond_2

    .line 75
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 76
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    .line 77
    monitor-exit v4

    move-object v2, v1

    .line 105
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v2

    .line 80
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    const-wide/16 v6, 0x40

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 86
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-direct {v2, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 89
    .local v2, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 91
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v4

    goto :goto_0

    .line 106
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 95
    :cond_2
    const-wide/16 v6, 0x40

    :try_start_1
    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 101
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-direct {v2, p1, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 104
    .restart local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 105
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
