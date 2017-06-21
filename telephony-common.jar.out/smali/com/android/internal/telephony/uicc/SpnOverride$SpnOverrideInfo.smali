.class Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpnOverrideInfo"
.end annotation


# instance fields
.field private final fake_home_on:[Ljava/lang/String;

.field private final fake_roaming_on:[Ljava/lang/String;

.field private final fake_sim_spn:Ljava/lang/String;

.field private final imsi_subset:Ljava/lang/String;

.field private final numeric:Ljava/lang/String;

.field private final spn:Ljava/lang/String;

.field private final spn_display_rule:Ljava/lang/String;

.field private final spn_override_only_on:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "spn_display_rule"    # Ljava/lang/String;
    .param p4, "spn_override_only_on"    # Ljava/lang/String;
    .param p5, "fake_home_on"    # Ljava/lang/String;
    .param p6, "imsi_subset"    # Ljava/lang/String;
    .param p7, "fake_roaming_on"    # Ljava/lang/String;
    .param p8, "fake_sim_spn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    .line 58
    if-eqz p4, :cond_0

    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    .line 59
    if-eqz p5, :cond_1

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    .line 60
    if-eqz p6, :cond_2

    .end local p6    # "imsi_subset":Ljava/lang/String;
    :goto_2
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    .line 61
    if-eqz p7, :cond_3

    const-string v0, ","

    invoke-virtual {p7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    .line 62
    if-eqz p8, :cond_4

    .end local p8    # "fake_sim_spn":Ljava/lang/String;
    :goto_4
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_sim_spn:Ljava/lang/String;

    .line 63
    return-void

    .restart local p6    # "imsi_subset":Ljava/lang/String;
    .restart local p8    # "fake_sim_spn":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .line 58
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string p6, ""

    goto :goto_2

    .end local p6    # "imsi_subset":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 61
    goto :goto_3

    :cond_4
    move-object p8, v1

    .line 62
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    return-object v0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    return-object v0
.end method

.method public getFakeSimSpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_sim_spn:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSubset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnDisplayRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnOverrideOnlyOn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpnOverrideInfo [numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn_display_rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn_override_only_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_home_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi_subset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_roaming_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_sim_spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->fake_sim_spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
