.class Lcom/android/server/enterprise/container/SmartCardAccessPolicy$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SmartCardAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/SmartCardAccessPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/SmartCardAccessPolicy;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy$1;->this$0:Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 237
    # getter for: Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPackageDataObserver : onRemoveCompleted"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
