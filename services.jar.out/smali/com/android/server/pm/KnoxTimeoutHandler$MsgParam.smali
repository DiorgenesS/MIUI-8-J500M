.class Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgParam"
.end annotation


# instance fields
.field fullscreen:Z

.field isMutiwindowRecord:Z

.field multiwindowstyle:I

.field showWhenLocked:Z

.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZ)V
    .locals 1
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 88
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 91
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 95
    iput p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 96
    iput-boolean p3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 97
    iput-boolean p4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZI)V
    .locals 1
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z
    .param p5, "mws"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 88
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 91
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 102
    iput p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 103
    iput-boolean p3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 104
    iput-boolean p4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 105
    iput p5, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZZ)V
    .locals 1
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z
    .param p5, "isMutiwindowRecord"    # Z

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 88
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 91
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    .line 109
    iput p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 110
    iput-boolean p3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 111
    iput-boolean p4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    .line 112
    iput-boolean p5, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    .line 113
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MsgParam] userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fullscreen is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " showWhenlocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
