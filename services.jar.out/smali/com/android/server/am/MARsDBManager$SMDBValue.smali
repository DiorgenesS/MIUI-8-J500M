.class public Lcom/android/server/am/MARsDBManager$SMDBValue;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMDBValue"
.end annotation


# instance fields
.field public strAutoRun:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strIsSMFreezed:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strPkgType:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strResetTime"    # Ljava/lang/String;
    .param p4, "_strExtras"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strIsSMFreezed"    # Ljava/lang/String;
    .param p4, "_strResetTime"    # Ljava/lang/String;
    .param p5, "_strExtras"    # Ljava/lang/String;
    .param p6, "_strPkgType"    # Ljava/lang/String;
    .param p7, "_strAutoRun"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    .line 222
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 223
    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 224
    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 225
    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 226
    return-void
.end method
