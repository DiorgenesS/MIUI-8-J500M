.class public Landroid/provider/MoodLight;
.super Ljava/lang/Object;
.source "MoodLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MoodLight$COLOR;,
        Landroid/provider/MoodLight$ColorValues;,
        Landroid/provider/MoodLight$MoodLightRepeatValue;
    }
.end annotation


# static fields
.field public static final COLOR_PACKAGE_SEPARATOR:Ljava/lang/String; = ":"

.field public static final MOOD_LIGHT_ALL_DAY_ALERTS:Ljava/lang/String; = "ml_all_day"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_BATTERY_STATUS:Ljava/lang/String; = "ml_aa_battery_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_BATTERY_VALUE:Ljava/lang/String; = "ml_aa_battery_value"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_DATA_USAGE_STATUS:Ljava/lang/String; = "ml_aa_du_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_STATUS:Ljava/lang/String; = "ml_aa_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_STORAGE_STATUS:Ljava/lang/String; = "ml_aa_storage_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_STORAGE_VALUE:Ljava/lang/String; = "ml_aa_storage_value"

.field public static final MOOD_LIGHT_DISCLAIMER_STATUS:Ljava/lang/String; = "ml_disclaimer"

.field public static final MOOD_LIGHT_END_TIME:Ljava/lang/String; = "ml_end_time"

.field public static final MOOD_LIGHT_NOTIFICATIONS_BATTERY_CHARGING_STATUS:Ljava/lang/String; = "ml_battery_charging"

.field public static final MOOD_LIGHT_PACKAGE_NOT_FOUND:I = -0x1

.field public static final MOOD_LIGHT_PRIORITY_NOTIFIER_PACKAGE_LIST:Ljava/lang/String; = "ml_pn_package"

.field public static final MOOD_LIGHT_PRIORITY_NOTIFIER_STATUS:Ljava/lang/String; = "ml_pn_status"

.field public static final MOOD_LIGHT_REPEAT_VALUE:Ljava/lang/String; = "ml_repeat_value"

.field public static final MOOD_LIGHT_SELECT_NOTIFICATIONS_EMAIL:Ljava/lang/String; = "ml_email"

.field public static final MOOD_LIGHT_SELECT_NOTIFICATIONS_MESSAGE:Ljava/lang/String; = "ml_message"

.field public static final MOOD_LIGHT_SELECT_NOTIFICATIONS_MISSED_CALL:Ljava/lang/String; = "ml_missed_call"

.field public static final MOOD_LIGHT_START_TIME:Ljava/lang/String; = "ml_start_time"

.field public static final MOOD_LIGHT_STATUS:Ljava/lang/String; = "ml_status"

.field public static final MOOD_LIGHT_STORAGE_PATH_SELFIE_ASSIST_PICTURES:Ljava/lang/String; = "ml_storage_path"

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String; = ";"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    return-void
.end method

.method public static getColorForAssistiveAlert(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 397
    const-string/jumbo v0, "ml_color_assistive"

    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_RED:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$000()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getColorForIndex(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "colorIndex"    # I

    .prologue
    const/high16 v2, -0x1000000

    .line 423
    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_BLACK:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$100()I

    move-result v0

    .line 425
    .local v0, "color":I
    packed-switch p1, :pswitch_data_0

    .line 444
    :goto_0
    return v0

    .line 427
    :pswitch_0
    const-string/jumbo v1, "ml_color_1"

    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_GREEN:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$200()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 429
    goto :goto_0

    .line 431
    :pswitch_1
    const-string/jumbo v1, "ml_color_2"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 434
    goto :goto_0

    .line 436
    :pswitch_2
    const-string/jumbo v1, "ml_color_3"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 438
    goto :goto_0

    .line 440
    :pswitch_3
    const-string/jumbo v1, "ml_color_4"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setColorForAssistiveAlert(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "color"    # I

    .prologue
    .line 392
    const-string/jumbo v0, "ml_color_assistive"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    return-void
.end method

.method public static setColorForIndex(Landroid/content/ContentResolver;II)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "colorIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 419
    :goto_0
    return-void

    .line 405
    :pswitch_0
    const-string/jumbo v0, "ml_color_1"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 408
    :pswitch_1
    const-string/jumbo v0, "ml_color_2"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 412
    :pswitch_2
    const-string/jumbo v0, "ml_color_3"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 415
    :pswitch_3
    const-string/jumbo v0, "ml_color_4"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
