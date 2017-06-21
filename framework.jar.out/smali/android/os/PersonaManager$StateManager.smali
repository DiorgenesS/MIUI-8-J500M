.class public Landroid/os/PersonaManager$StateManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;

.field private userId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;
    .param p3, "userId"    # I

    .prologue
    .line 2975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2976
    iput-object p2, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    .line 2977
    iput-object p1, p0, Landroid/os/PersonaManager$StateManager;->mContext:Landroid/content/Context;

    .line 2978
    iput p3, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    .line 2979
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;ILandroid/os/PersonaManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/os/IPersonaManager;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/PersonaManager$1;

    .prologue
    .line 2970
    invoke-direct {p0, p1, p2, p3}, Landroid/os/PersonaManager$StateManager;-><init>(Landroid/content/Context;Landroid/os/IPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;
    .locals 3
    .param p1, "event"    # Landroid/content/pm/PersonaNewEvent;

    .prologue
    .line 3020
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3023
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3028
    :goto_0
    return-object v1

    .line 3024
    :catch_0
    move-exception v0

    .line 3025
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3028
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousState()Landroid/content/pm/PersonaState;
    .locals 3

    .prologue
    .line 2995
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2998
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPreviousState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3003
    :goto_0
    return-object v1

    .line 2999
    :catch_0
    move-exception v0

    .line 3000
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3003
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Landroid/content/pm/PersonaState;
    .locals 3

    .prologue
    .line 2983
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2985
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getState(I)Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2990
    :goto_0
    return-object v1

    .line 2986
    :catch_0
    move-exception v0

    .line 2987
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2990
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inState(Landroid/content/pm/PersonaState;)Z
    .locals 3
    .param p1, "state"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 3009
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3011
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->inState(Landroid/content/pm/PersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3016
    :goto_0
    return v1

    .line 3012
    :catch_0
    move-exception v0

    .line 3013
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 3044
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3047
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3052
    :goto_0
    return v1

    .line 3048
    :catch_0
    move-exception v0

    .line 3049
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3052
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 3032
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3035
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager$StateManager;->mService:Landroid/os/IPersonaManager;

    iget v2, p0, Landroid/os/PersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3040
    :goto_0
    return v1

    .line 3036
    :catch_0
    move-exception v0

    .line 3037
    .local v0, "re":Landroid/os/RemoteException;
    # getter for: Landroid/os/PersonaManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/os/PersonaManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3040
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
