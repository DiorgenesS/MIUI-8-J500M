.class Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;
.super Lcom/android/server/NativeDaemonConnectorException;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeDaemonFailureException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/android/server/NativeDaemonEvent;

    .prologue
    .line 527
    invoke-direct {p0, p1, p2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    .line 528
    return-void
.end method
