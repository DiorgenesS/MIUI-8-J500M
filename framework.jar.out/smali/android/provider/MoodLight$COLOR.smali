.class public final Landroid/provider/MoodLight$COLOR;
.super Ljava/lang/Object;
.source "MoodLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MoodLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COLOR"
.end annotation


# static fields
.field private static final CODE_BLACK:I

.field public static final CODE_EMPTY_COLOR:I = -0x1000000

.field private static final CODE_GREEN:I

.field private static final CODE_LIGHT_BLUE:I

.field private static final CODE_MAGENTA:I

.field private static final CODE_RED:I

.field private static final CODE_SKY_BLUE:I

.field private static final CODE_YELLOW_GREEN:I

.field public static final INDEX_COLOR_1:I = 0x1

.field public static final INDEX_COLOR_2:I = 0x2

.field public static final INDEX_COLOR_3:I = 0x3

.field public static final INDEX_COLOR_4:I = 0x4

.field public static final KEY_COLOR_1:Ljava/lang/String; = "ml_color_1"

.field public static final KEY_COLOR_2:Ljava/lang/String; = "ml_color_2"

.field public static final KEY_COLOR_3:Ljava/lang/String; = "ml_color_3"

.field public static final KEY_COLOR_4:Ljava/lang/String; = "ml_color_4"

.field public static final KEY_COLOR_ASSISTIVE:Ljava/lang/String; = "ml_color_assistive"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 370
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_BLACK:I

    .line 371
    const/16 v0, 0xd2

    const/16 v1, 0xf1

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_SKY_BLUE:I

    .line 372
    const/16 v0, 0x70

    const/16 v1, 0xae

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_YELLOW_GREEN:I

    .line 373
    const/16 v0, 0x26

    const/16 v1, 0x4d

    const/16 v2, 0xf5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_LIGHT_BLUE:I

    .line 374
    const/16 v0, 0xde

    const/16 v1, 0x37

    const/16 v2, 0xb9

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_MAGENTA:I

    .line 375
    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_RED:I

    .line 376
    invoke-static {v3, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_GREEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 368
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_RED:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 368
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_BLACK:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 368
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_GREEN:I

    return v0
.end method
