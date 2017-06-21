.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 1

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 2204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2208
    monitor-enter p0

    .line 2209
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->finished:Z

    .line 2210
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    .line 2211
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    .line 2212
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2213
    monitor-exit p0

    .line 2214
    return-void

    .line 2213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
