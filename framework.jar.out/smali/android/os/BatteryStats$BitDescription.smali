.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final shortName:Ljava/lang/String;

.field public final shortValues:[Ljava/lang/String;

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "shift"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "shortName"    # Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/String;
    .param p6, "shortValues"    # [Ljava/lang/String;

    .prologue
    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 1558
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 1559
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 1560
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 1561
    iput-object p5, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 1562
    iput-object p6, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 1563
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 1548
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 1549
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 1550
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 1551
    iput-object v1, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 1552
    iput-object v1, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 1553
    return-void
.end method
