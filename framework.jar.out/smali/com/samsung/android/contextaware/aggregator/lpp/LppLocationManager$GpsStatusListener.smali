.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStatusListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 1625
    packed-switch p1, :pswitch_data_0

    .line 1649
    :goto_0
    :pswitch_0
    return-void

    .line 1629
    :pswitch_1
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1634
    :pswitch_2
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    :pswitch_3
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine calcuates first fix"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
