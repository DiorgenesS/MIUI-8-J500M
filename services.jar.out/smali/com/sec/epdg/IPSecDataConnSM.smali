.class public Lcom/sec/epdg/IPSecDataConnSM;
.super Lcom/android/internal/util/StateMachine;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecDataConnSM$1;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;,
        Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;,
        Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    }
.end annotation


# static fields
.field private static final CHECK_HO_W2L_DELAY:I = 0x1388

.field private static final DPD_DELAYED_MASSAGE_TIMEOUT:I = 0x1

.field private static final INTENT_EPDG_IKE_AUTHFAIL_3TIMES:Ljava/lang/String; = "com.sec.epdgservice.IKE_AUTHFAIL_3TIMES"

.field private static final MAX_DNS_AND_L2W_TIMEOUT:I = 0xea60

.field private static final MAX_L2W_TIMEOUT:I = 0x4e20

.field private static final MAX_W2L_TIMEOUT:I = 0x27100

.field private static final TAG:Ljava/lang/String; = "[IPSECDATACONNSM]"

.field private static mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# instance fields
.field private final mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private final mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

.field private final mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

.field private mExpiredTimeTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

.field private final mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

.field private final mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

.field private final mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

.field private final mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

.field private final mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

.field private mIsExistPendingConnReq:Z

.field private mIsHandOver:Z

.field private mIsNeededL2WHO:Z

.field private mIsW2LRequested:Z

.field private mIsWifiConnected:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

.field private mPendingConnReqObj:Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

.field private mRetryCount:I

.field private mRilCid:I

.field private final mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

.field private final mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

.field private final mePdgHandler:Landroid/os/Handler;

.field private final smHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V

    sput-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p4, "hdlr"    # Landroid/os/Handler;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 235
    invoke-direct {p0, p1, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 64
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    .line 65
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    .line 67
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    .line 69
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    .line 70
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    .line 72
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    .line 74
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    .line 75
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    .line 77
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    .line 87
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    .line 88
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z

    .line 89
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    .line 90
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    .line 95
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    .line 236
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    .line 237
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    .line 238
    iput-object p4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    .line 240
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapterForEris;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    .line 242
    iput-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    .line 248
    :goto_0
    iput-object p3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 249
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 251
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 254
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 255
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 256
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 257
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 258
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 259
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 260
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 261
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 263
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 264
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 265
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 266
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    .line 267
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 268
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 269
    return-void

    .line 244
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    .line 245
    iput-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->sendEpdgPermanantFailBroadcast()V

    return-void
.end method

.method static synthetic access$3102(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPendingConnReqObj:Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFrameworkWOIntent(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/epdg/IPSecDataConnSM;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/IPSecDataConnSM;->handleEnableEpdgFailure(III)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrantDelay(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrantDelay(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private checkConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1665
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1666
    .local v0, "conncid":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapterForEris;->postCheckConnectionMessage(IILjava/lang/Object;)V

    .line 1671
    :goto_0
    return-void

    .line 1669
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postCheckConnectionMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method private checkDnsRetryRequired(Z)Z
    .locals 6
    .param p1, "dnsCheck"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1627
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Enter checkDnsRetryRequired"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgServerSelection;->checkCachedEpdgServerIpForDnsQuery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1650
    :goto_0
    return v1

    .line 1634
    :cond_0
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    .line 1635
    .local v0, "count":I
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Throttle Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const/4 v3, -0x1

    if-ne v3, v0, :cond_1

    .line 1637
    const-string v3, "[IPSECDATACONNSM]"

    const-string/jumbo v4, "mCurrentTimer not correctly updated inside Throttle Manager."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    :cond_1
    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    .line 1640
    const-string v1, "[IPSECDATACONNSM]"

    const-string v3, "DNS RESET might be REQUIRED.Posting Message to EPDG service for additional checks"

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sec/epdg/EpdgCommands;->postDnsRetryRequest(ILjava/lang/Boolean;)V

    move v1, v2

    .line 1643
    goto :goto_0

    .line 1644
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1645
    const-string v1, "[IPSECDATACONNSM]"

    const-string v3, "DNS TTL check might be REQUIRED."

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sec/epdg/EpdgCommands;->postDnsRetryRequest(ILjava/lang/Boolean;)V

    move v1, v2

    .line 1647
    goto :goto_0

    .line 1649
    :cond_3
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Exit checkDnsRetryRequired: DNS RESET NOT REQUIRED"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configureApnContext(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1706
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1707
    .local v2, "cid":I
    const/4 v0, 0x0

    .line 1710
    .local v0, "apnName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 1715
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1716
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "apnName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1728
    .restart local v0    # "apnName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1729
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed Connect request for Cid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(no apnname)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    :cond_1
    :goto_1
    return-void

    .line 1717
    :cond_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    .line 1718
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1719
    .local v1, "asyncRes":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 1720
    .local v3, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    if-eqz v3, :cond_0

    .line 1721
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getApnName()Ljava/lang/String;

    move-result-object v0

    .line 1722
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4, v2}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    .line 1723
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv6Addr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv4Addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/epdg/IWlanApnContext;->setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1733
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    .end local v3    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_3
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect request is received for cid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 1738
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0.0.0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1743
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto/16 :goto_1
.end method

.method private disconnectEpdgConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1654
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1655
    .local v0, "conncid":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/epdg/IPSecAdapterForEris;->postDisconnectMessage(IILjava/lang/Object;)V

    .line 1660
    :goto_0
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Moving to Disconnecting State"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1662
    return-void

    .line 1658
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/epdg/IPSecAdapter;->postDisconnectMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mApnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p3, "mEpdgHandler"    # Landroid/os/Handler;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 274
    new-instance v0, Lcom/sec/epdg/IPSecDataConnSM;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/IPSecDataConnSM;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V

    return-object v0
.end method

.method private handleConnectRequest()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1748
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter handleConnectRequest()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1750
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, " No APN settings to drive the State machine in Inactive state. Critical Failure !!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    move v4, v3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 1818
    :cond_0
    :goto_0
    return v3

    .line 1755
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1757
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgConnectionBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1758
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Block connect request as Network side maximum ePDG APN connection limit reached"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    .line 1760
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 1766
    :cond_2
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1769
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1770
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "HandOver Request Received"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1775
    .local v7, "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1778
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1781
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1784
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq v7, v0, :cond_6

    .line 1785
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1792
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/IWlanApnSetting;->setmIpSecIpType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V

    .line 1796
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    .line 1798
    .local v4, "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1799
    .local v2, "conncid":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1800
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapterForEris:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/IPSecAdapterForEris;->postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :goto_2
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1809
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1788
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    .restart local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_6
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_1

    .line 1804
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v2    # "conncid":I
    .restart local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/IPSecAdapter;->postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1811
    :cond_8
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1814
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_9
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Connect Request is Throttled in InActive State."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    .line 1816
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0
.end method

.method private handleEnableEpdgFailure(III)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "handoverAct"    # I
    .param p3, "handoverState"    # I

    .prologue
    .line 226
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside handleEnableEpdgFailure, cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverAct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z

    .line 230
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEnableEpdgFailure(I)V

    .line 231
    return-void
.end method

.method private handleTCRules(ZI)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "cid"    # I

    .prologue
    const/4 v5, 0x1

    .line 1864
    const/4 v1, 0x0

    .line 1865
    .local v1, "error":Z
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-nez v2, :cond_0

    .line 1866
    const-string v2, "[IPSECDATACONNSM]"

    const-string/jumbo v3, "mIWlanApnContext null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :goto_0
    return v1

    .line 1868
    :cond_0
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending iptables rules mIWlanApnContext.getbIprulesStatus() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    if-ne v5, p1, :cond_2

    .line 1873
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1874
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1876
    :cond_1
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling enable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1879
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1883
    const/4 v1, 0x1

    .line 1886
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1887
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    const/4 v1, 0x1

    .line 1892
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1898
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1899
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are not enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1901
    :cond_3
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling disable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :try_start_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1904
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 1906
    :catch_2
    move-exception v0

    .line 1907
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1908
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1909
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 1910
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1911
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleWifiConnect(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isSsidChanged"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1686
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiConnect: SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSsidChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1688
    if-eqz p1, :cond_0

    .line 1689
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    .line 1690
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_0
    return-void
.end method

.method private handleWifiStateChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1695
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1696
    .local v1, "isWifiConnected":Z
    :goto_0
    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    .line 1697
    if-nez v1, :cond_1

    .line 1703
    :goto_1
    return-void

    .end local v1    # "isWifiConnected":Z
    :cond_0
    move v1, v3

    .line 1695
    goto :goto_0

    .line 1700
    .restart local v1    # "isWifiConnected":Z
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 1701
    .local v0, "isSsidChanged":Z
    :goto_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->handleWifiConnect(ZLjava/lang/String;)V

    goto :goto_1

    .end local v0    # "isSsidChanged":Z
    :cond_2
    move v0, v3

    .line 1700
    goto :goto_2
.end method

.method private informHandoverFailureToRilAndFramework(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    const/4 v3, 0x0

    .line 193
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter informHandoverFailureToRilAndFramework:  Sending Call Status failed to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 196
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V

    .line 198
    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    .line 202
    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 204
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Exit informHandoverFailureToRilAndFramework"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private informHandoverFailureToRilAndFrameworkWOIntent(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    const/4 v3, 0x0

    .line 209
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter informHandoverFailureToRilAndFrameworkWOIntent:  Sending Call Status failed to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 212
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 214
    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    .line 216
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Exit informHandoverFailureToRilAndFrameworkWOIntent"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private initConnectionParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 278
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRetryCount(I)V

    .line 280
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 281
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 282
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 283
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 284
    return-void
.end method

.method private notifyL2WRegistrant(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1829
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyL2WRegistrant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1833
    return-void

    .line 1830
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyL2WRegistrantDelay(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1843
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyL2WRegistrant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrantsDelay(IILjava/lang/String;)V

    .line 1847
    return-void

    .line 1844
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyW2LRegistrant(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 1822
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyW2LRegistrant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1826
    return-void

    .line 1823
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyW2LRegistrantDelay(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 1836
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyW2LRegistrant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrantsDelay(IILjava/lang/String;)V

    .line 1840
    return-void

    .line 1837
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetThrottleState()V
    .locals 2

    .prologue
    .line 1681
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Reset throttle state of State Machine"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method private sendEpdgPermanantFailBroadcast()V
    .locals 3

    .prologue
    .line 1961
    const-string v1, "[IPSECDATACONNSM]"

    const-string/jumbo v2, "sendEpdgPermanantFailBroadcast 3times Fail"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.epdgservice.IKE_AUTHFAIL_3TIMES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1963
    .local v0, "permantFailIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1964
    return-void
.end method

.method private sendKeepAlive()V
    .locals 3

    .prologue
    .line 1674
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1675
    .local v0, "conncid":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingErisVpnClient()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->postSendKeepAliveMessage(I)V

    .line 1678
    :cond_0
    return-void
.end method

.method private sendWifiRssiIntentDelayToEpdg(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1933
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v1

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_1

    .line 1935
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1936
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWifiRssiIntentDelayToEpdg: value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1938
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x49

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1939
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1940
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1943
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 1939
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEpdgInterfaceDropRule(ZI)V
    .locals 3
    .param p1, "add"    # Z
    .param p2, "cid"    # I

    .prologue
    .line 1924
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    :goto_0
    return-void

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exception while setEpdgInterfaceDropRule"

    invoke-static {v1, v2, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1927
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private transition(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 189
    return-void
.end method

.method private updatePermanentFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1850
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermanentFail, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V

    .line 1854
    :cond_0
    return-void
.end method


# virtual methods
.method public IsExistExpiredTimeTable(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    .local v0, "isExist":Z
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v0
.end method

.method public IsTimerExpired(I)Z
    .locals 8
    .param p1, "key"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 133
    .local v2, "leftTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 134
    .local v0, "isExpired":Z
    :goto_0
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v0

    .line 133
    .end local v0    # "isExpired":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deferTransitionTo(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 185
    return-void
.end method

.method public getApnContextDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnName(), mIWlanApnContext.getIWlanSetting() is null, returning apn name as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnType(), mIWlanApnContext.getIWlanSetting() is null, returning apn type as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIWlanState()Lcom/sec/epdg/IWlanState;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getCurrentIWlanState: mIWlanApnContext  is null, IWanState as Inactive"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 145
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    goto :goto_0
.end method

.method public getDataConnectionHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getExpiredTime(I)J
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 120
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 121
    .local v0, "expiredTime":J
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expiredTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-wide v0
.end method

.method public declared-synchronized getIsW2LRequested()Z
    .locals 1

    .prologue
    .line 1857
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getPeriodicDpdTimer: mIWlanApnContext.getIWlanSetting()  is null, dpd value as 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmRetryCount()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRetryCount:I

    return v0
.end method

.method public getmRilCid()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method public isHandOver()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    return v0
.end method

.method public setIsHandOver(Z)V
    .locals 0
    .param p1, "isHandOver"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    .line 117
    return-void
.end method

.method public declared-synchronized setIsW2LRequested(Z)V
    .locals 1
    .param p1, "mIsW2LRequested"    # Z

    .prologue
    .line 1861
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    monitor-exit p0

    return-void

    .line 1861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setmRetryCount(I)V
    .locals 0
    .param p1, "mRetryCount"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRetryCount:I

    .line 109
    return-void
.end method

.method public setmRilCid(I)V
    .locals 0
    .param p1, "mRilCid"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    .line 292
    return-void
.end method

.method public triggerPendingAttachReq()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1945
    iget-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    if-nez v1, :cond_0

    .line 1946
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "No pending AttachReq"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    :goto_0
    return-void

    .line 1949
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1950
    .local v0, "apnAttachReq":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1951
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1953
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 1954
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPendingConnReqObj:Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    invoke-direct {v1, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1955
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    .line 1956
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    .line 1957
    const-string v1, "[IPSECDATACONNSM]"

    const-string/jumbo v2, "send pending AttachReq."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
