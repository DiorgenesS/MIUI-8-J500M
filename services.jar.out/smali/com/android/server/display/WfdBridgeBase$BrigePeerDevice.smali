.class public Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;
.super Landroid/net/wifi/p2p/WifiP2pDevice;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrigePeerDevice"
.end annotation


# static fields
.field public static final SUPPORT_RVF_SINK:I = 0x1

.field public static final SUPPORT_RVF_SOURCE:I = 0x2

.field public static final SUPPORT_SIDESYNC_SINK:I = 0x4

.field public static final SUPPORT_SIDESYNC_SOURCE:I = 0x8


# instance fields
.field private mSupportedDevice:I

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->mSupportedDevice:I

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 107
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->mSupportedDevice:I

    .line 108
    return-void
.end method


# virtual methods
.method public parseSupportedType(Ljava/util/StringTokenizer;)V
    .locals 0
    .param p1, "st"    # Ljava/util/StringTokenizer;

    .prologue
    .line 112
    return-void
.end method
