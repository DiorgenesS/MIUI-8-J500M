.class public Lcom/android/server/am/MARsDBManager$SCPMDBValue;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMDBValue"
.end annotation


# instance fields
.field public strAction:Ljava/lang/String;

.field public strCallee:Ljava/lang/String;

.field public strCaller:Ljava/lang/String;

.field public strCategory:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strCallee"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strCallee"    # Ljava/lang/String;
    .param p3, "_strCaller"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strCallee"    # Ljava/lang/String;
    .param p3, "_strCaller"    # Ljava/lang/String;
    .param p4, "_strAction"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    .line 267
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_Category"    # Ljava/lang/String;
    .param p3, "_strCallee"    # Ljava/lang/String;
    .param p4, "_strCaller"    # Ljava/lang/String;
    .param p5, "_strAction"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 273
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    .line 274
    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    .line 275
    return-void
.end method
