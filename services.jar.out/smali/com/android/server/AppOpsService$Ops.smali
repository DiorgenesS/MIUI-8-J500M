.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public final isPrivileged:Z

.field public final isPrivilegedCredible:Z

.field public final packageName:Ljava/lang/String;

.field public final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V
    .locals 1
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p3, "_isPrivileged"    # Z

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 160
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;ZZ)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p3, "_isPrivileged"    # Z
    .param p4, "_isPrivilegedCredible"    # Z

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 166
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 167
    iput-boolean p4, p0, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    .line 168
    return-void
.end method
