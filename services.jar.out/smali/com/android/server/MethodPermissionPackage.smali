.class Lcom/android/server/MethodPermissionPackage;
.super Lcom/android/server/PermissionPackage;
.source "ServiceKeeper.java"


# instance fields
.field isSterileMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/android/server/PermissionPackage;-><init>()V

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 726
    return-void
.end method
