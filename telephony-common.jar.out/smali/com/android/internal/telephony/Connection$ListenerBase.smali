.class public abstract Lcom/android/internal/telephony/Connection$ListenerBase;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQualityChanged(I)V
    .locals 0
    .param p1, "audioQuality"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onCallSubstateChanged(I)V
    .locals 0
    .param p1, "callSubstate"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onConferenceMergedFailed()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onConferenceParticipantsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 93
    return-void
.end method

.method public onLocalVideoCapabilityChanged(Z)V
    .locals 0
    .param p1, "capable"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public onMultipartyStateChanged(Z)V
    .locals 0
    .param p1, "isMultiParty"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onRemoteVideoCapabilityChanged(Z)V
    .locals 0
    .param p1, "capable"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 81
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onWifiChanged(Z)V
    .locals 0
    .param p1, "isWifi"    # Z

    .prologue
    .line 78
    return-void
.end method
