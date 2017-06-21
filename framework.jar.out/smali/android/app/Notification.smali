.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_ORIGINATING_USERID:Ljava/lang/String; = "android.originatingUserId"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_DISABLE_STATUS_BAR_OPEN_FULLSCREEN:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_IS_NEGATIVE:I = 0x2

.field public static final FLAG_IS_ZERO:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final FLAG_SYNCED:I = 0x1

.field public static final FORCE_LED_BLINKING:I = 0x400

.field public static final HEADS_UP_ALLOWED:I = 0x1

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final HEADS_UP_REQUESTED:I = 0x2

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final MAGIC_NUMBER_HIDE_ACTION_BUTTON_ICON:I = 0x20202020

.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400

.field public static final PACKAGE_VISIBILITY_HIDE_ON_INDICATOR:I = 0x4

.field public static final PACKAGE_VISIBILITY_HIDE_ON_LOCKSCREEN:I = 0x2

.field public static final PACKAGE_VISIBILITY_PRIVATE:I = 0x1

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final SEC_FLAG_APP_GROUP_SUMMARY:I = 0x10

.field public static final SEC_FLAG_FORCE_NOTIFICATION_LED:I = 0x8

.field public static final SEC_FLAG_HIDE_ACTION_BUTTON_ICON:I = 0x4

.field public static final SEC_FLAG_HIDE_NOTIFICATION_ICON:I = 0x2

.field public static final SEC_FLAG_HIDE_NOTIFICATION_ON_PANEL:I = 0x1

.field public static final SEC_PRIORITY_DEFAULT:I = 0x0

.field public static final SEC_PRIORITY_HIGH:I = 0xa

.field public static final SEC_PRIORITY_MAX:I = 0x14

.field public static final STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Notification"

.field public static final TWQUICKPANEL_NOTIFICATION_CALL:I = 0x1

.field public static final TWQUICKPANEL_NOTIFICATION_CMAS:I = 0x200

.field public static final TWQUICKPANEL_NOTIFICATION_CONTEXTAWARE:I = 0x10

.field public static final TWQUICKPANEL_NOTIFICATION_INVISIBLE_ICON:I = 0x40

.field public static final TWQUICKPANEL_NOTIFICATION_KIDSMODE:I = 0x100

.field public static final TWQUICKPANEL_NOTIFICATION_KNOXMODE:I = 0x80

.field public static final TWQUICKPANEL_NOTIFICATION_MUSIC:I = 0x2

.field public static final TWQUICKPANEL_NOTIFICATION_MUSICHUB:I = 0x20

.field public static final TWQUICKPANEL_NOTIFICATION_NETWORKBOOSTER:I = 0x108

.field public static final TWQUICKPANEL_NOTIFICATION_RADIO:I = 0x8

.field public static final TWQUICKPANEL_NOTIFICATION_SMARTREMOTE:I = 0x101

.field public static final TWQUICKPANEL_NOTIFICATION_STALKIE:I = 0x102

.field public static final TWQUICKPANEL_NOTIFICATION_TOOLBOX:I = 0x104

.field public static final TWQUICKPANEL_NOTIFICATION_VOICERECORD:I = 0x4

.field public static final VISIBILITY_HIDE_ON_LOCKSCREEN:I = -0x2

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public audioAttributes:Landroid/media/AudioAttributes;

.field public audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bigContentView:Landroid/widget/RemoteViews;

.field public category:Ljava/lang/String;

.field public color:I

.field public commonValue:I

.field public contactCharSeq:Ljava/lang/CharSequence;

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public haptic:I

.field public headsUpContentView:Landroid/widget/RemoteViews;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public iconLevel:I

.field public knoxFlags:I

.field public largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field private mAppGroupKey:Ljava/lang/String;

.field private mGroupKey:Ljava/lang/String;

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSortKey:Ljava/lang/String;

.field public missedCount:I

.field public number:I

.field public originalPackageName:Ljava/lang/CharSequence;

.field public originalUserId:I

.field public priority:I

.field public publicVersion:Landroid/app/Notification;

.field public secFlags:I

.field public secPriority:I

.field public sound:Landroid/net/Uri;

.field private stringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public threadId:J

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public twQuickPanelEvent:I

.field public vibrate:[J

.field public visibility:I

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/app/Notification;->DEBUG:Z

    .line 334
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 1884
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 342
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 547
    iput v2, p0, Landroid/app/Notification;->color:I

    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6283
    iput v2, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 1403
    iput v2, p0, Landroid/app/Notification;->priority:I

    .line 1404
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 3
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 342
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 547
    iput v1, p0, Landroid/app/Notification;->color:I

    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6283
    iput v1, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1437
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 1438
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1439
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 1440
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 342
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 547
    iput v1, p0, Landroid/app/Notification;->color:I

    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6283
    iput v1, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1412
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 1420
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v5, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 328
    const/4 v5, -0x1

    iput v5, p0, Landroid/app/Notification;->audioStreamType:I

    .line 342
    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 547
    iput v6, p0, Landroid/app/Notification;->color:I

    .line 736
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6283
    iput v6, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1449
    .local v4, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/app/Notification;->when:J

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1451
    sget-object v5, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    iput-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 1452
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1453
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->icon:I

    .line 1456
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->number:I

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1458
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1460
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1461
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1463
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1464
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1466
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 1467
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1469
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1470
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1472
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1473
    sget-object v5, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    iput-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 1475
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->defaults:I

    .line 1476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->flags:I

    .line 1477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 1478
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1481
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->audioStreamType:I

    .line 1482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1483
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioAttributes;

    iput-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1485
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->vibrate:[J

    .line 1486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledARGB:I

    .line 1487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledOnMS:I

    .line 1488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledOffMS:I

    .line 1489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->iconLevel:I

    .line 1491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 1492
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1495
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->priority:I

    .line 1497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 1501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    .line 1503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 1505
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1507
    sget-object v5, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/Notification$Action;

    iput-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 1510
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1513
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 1514
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1517
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->visibility:I

    .line 1519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 1520
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    iput-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 1523
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->color:I

    .line 1528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 1529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->commonValue:I

    .line 1530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->missedCount:I

    .line 1531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 1532
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1535
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->haptic:I

    .line 1536
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/app/Notification;->threadId:J

    .line 1537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->secFlags:I

    .line 1538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->secPriority:I

    .line 1543
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_f

    .line 1544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1545
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_f

    .line 1546
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1547
    .local v1, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1548
    .local v3, "value":Ljava/lang/CharSequence;
    iget-object v5, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/CharSequence;
    .end local v2    # "size":I
    .end local v3    # "value":Ljava/lang/CharSequence;
    .end local v4    # "version":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1551
    .restart local v4    # "version":I
    :cond_f
    return-void
.end method

.method static synthetic access$2800(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Landroid/app/Notification;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic access$600(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Landroid/app/Notification;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    return-object p1
.end method

.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 5938
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 5939
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v2, v0, [Landroid/app/Notification;

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 5940
    :cond_0
    check-cast v0, [Landroid/app/Notification;

    .end local v0    # "array":[Landroid/os/Parcelable;
    check-cast v0, [Landroid/app/Notification;

    move-object v1, v0

    .line 5945
    :goto_0
    return-object v1

    .line 5942
    .restart local v0    # "array":[Landroid/os/Parcelable;
    :cond_1
    array-length v2, v0

    const-class v3, [Landroid/app/Notification;

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification;

    .line 5944
    .local v1, "typedArray":[Landroid/app/Notification;
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "pri"    # I

    .prologue
    .line 2053
    packed-switch p0, :pswitch_data_0

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2055
    :pswitch_0
    const-string v0, "MIN"

    goto :goto_0

    .line 2057
    :pswitch_1
    const-string v0, "LOW"

    goto :goto_0

    .line 2059
    :pswitch_2
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 2061
    :pswitch_3
    const-string v0, "HIGH"

    goto :goto_0

    .line 2063
    :pswitch_4
    const-string v0, "MAX"

    goto :goto_0

    .line 2053
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x1400

    .line 1708
    if-nez p0, :cond_1

    .line 1718
    .end local p0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 1709
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1710
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1712
    :cond_2
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1713
    const-string v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "vis"    # I

    .prologue
    .line 2037
    packed-switch p0, :pswitch_data_0

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2039
    :pswitch_0
    const-string v0, "PRIVATE"

    goto :goto_0

    .line 2041
    :pswitch_1
    const-string v0, "PUBLIC"

    goto :goto_0

    .line 2043
    :pswitch_2
    const-string v0, "SECRET"

    goto :goto_0

    .line 2037
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1555
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1556
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1557
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .locals 9
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1566
    iget-wide v6, p0, Landroid/app/Notification;->when:J

    iput-wide v6, p1, Landroid/app/Notification;->when:J

    .line 1567
    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v5, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 1568
    iget v5, p0, Landroid/app/Notification;->number:I

    iput v5, p1, Landroid/app/Notification;->number:I

    .line 1571
    iget-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1572
    iget-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1573
    iget-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1575
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 1576
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1578
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_1

    .line 1579
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1581
    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_2

    .line 1582
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1584
    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_3

    .line 1585
    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v5, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 1587
    :cond_3
    iget v5, p0, Landroid/app/Notification;->iconLevel:I

    iput v5, p1, Landroid/app/Notification;->iconLevel:I

    .line 1588
    iget-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1589
    iget v5, p0, Landroid/app/Notification;->audioStreamType:I

    iput v5, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1590
    iget-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v5, :cond_4

    .line 1591
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    iget-object v6, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1594
    :cond_4
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    .line 1595
    .local v4, "vibrate":[J
    if-eqz v4, :cond_5

    .line 1596
    array-length v0, v4

    .line 1597
    .local v0, "N":I
    new-array v3, v0, [J

    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    .line 1598
    .local v3, "vib":[J
    invoke-static {v4, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1601
    .end local v0    # "N":I
    .end local v3    # "vib":[J
    :cond_5
    iget v5, p0, Landroid/app/Notification;->ledARGB:I

    iput v5, p1, Landroid/app/Notification;->ledARGB:I

    .line 1602
    iget v5, p0, Landroid/app/Notification;->ledOnMS:I

    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1603
    iget v5, p0, Landroid/app/Notification;->ledOffMS:I

    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1604
    iget v5, p0, Landroid/app/Notification;->defaults:I

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1606
    iget v5, p0, Landroid/app/Notification;->flags:I

    iput v5, p1, Landroid/app/Notification;->flags:I

    .line 1608
    iget v5, p0, Landroid/app/Notification;->priority:I

    iput v5, p1, Landroid/app/Notification;->priority:I

    .line 1610
    iget-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1612
    iget-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 1614
    iget-object v5, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    .line 1616
    iget-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 1618
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 1620
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1622
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_7

    .line 1630
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    new-array v5, v5, [Landroid/app/Notification$Action;

    iput-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1631
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 1632
    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v6, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1631
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1623
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1624
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not unparcel extras from notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1625
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    .line 1636
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_7
    if-eqz p2, :cond_8

    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_8

    .line 1637
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1640
    :cond_8
    if-eqz p2, :cond_9

    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_9

    .line 1641
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1644
    :cond_9
    iget v5, p0, Landroid/app/Notification;->visibility:I

    iput v5, p1, Landroid/app/Notification;->visibility:I

    .line 1646
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v5, :cond_a

    .line 1647
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 1648
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v6, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v5, v6, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1651
    :cond_a
    iget v5, p0, Landroid/app/Notification;->color:I

    iput v5, p1, Landroid/app/Notification;->color:I

    .line 1653
    if-nez p2, :cond_b

    .line 1654
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 1660
    :cond_b
    iget v5, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    iput v5, p1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 1661
    iget v5, p0, Landroid/app/Notification;->missedCount:I

    iput v5, p1, Landroid/app/Notification;->missedCount:I

    .line 1662
    iget-object v5, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    iput-object v5, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1663
    iget v5, p0, Landroid/app/Notification;->haptic:I

    iput v5, p1, Landroid/app/Notification;->haptic:I

    .line 1664
    iget-wide v6, p0, Landroid/app/Notification;->threadId:J

    iput-wide v6, p1, Landroid/app/Notification;->threadId:J

    .line 1665
    iget v5, p0, Landroid/app/Notification;->secFlags:I

    iput v5, p1, Landroid/app/Notification;->secFlags:I

    .line 1667
    iget v5, p0, Landroid/app/Notification;->commonValue:I

    const v6, 0x20202020

    if-ne v5, v6, :cond_d

    .line 1668
    iget v5, p1, Landroid/app/Notification;->secFlags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p1, Landroid/app/Notification;->secFlags:I

    .line 1674
    :cond_c
    :goto_2
    iget v5, p0, Landroid/app/Notification;->commonValue:I

    iput v5, p1, Landroid/app/Notification;->commonValue:I

    .line 1675
    iget v5, p0, Landroid/app/Notification;->secPriority:I

    iput v5, p1, Landroid/app/Notification;->secPriority:I

    .line 1679
    return-void

    .line 1669
    :cond_d
    iget v5, p0, Landroid/app/Notification;->commonValue:I

    const v6, -0x7f7f7f80

    if-ne v5, v6, :cond_e

    .line 1670
    iget v5, p1, Landroid/app/Notification;->secFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/app/Notification;->secFlags:I

    goto :goto_2

    .line 1671
    :cond_e
    iget v5, p0, Landroid/app/Notification;->commonValue:I

    const v6, 0x10101010

    if-ne v5, v6, :cond_c

    .line 1672
    iget v5, p1, Landroid/app/Notification;->secFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p1, Landroid/app/Notification;->secFlags:I

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1722
    const/4 v0, 0x0

    return v0
.end method

.method public getAppGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 2078
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAppGroupChild()Z
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->secFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppGroupSummary()Z
    .locals 1

    .prologue
    .line 2118
    iget v0, p0, Landroid/app/Notification;->secFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupChild()Z
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupSummary()Z
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 2104
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lightenPayload()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1687
    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1688
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1689
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1690
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1691
    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 1692
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.bigText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1700
    :cond_0
    return-void
.end method

.method public setAppGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "appGroupKey"    # Ljava/lang/String;

    .prologue
    .line 706
    iput-object p1, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public setKnoxFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 6318
    iget v0, p0, Landroid/app/Notification;->knoxFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification;->knoxFlags:I

    .line 6319
    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1920
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1924
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1925
    iget v1, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1926
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1927
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1928
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 1929
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1930
    iget v1, p0, Landroid/app/Notification;->flags:I

    # setter for: Landroid/app/Notification$Builder;->mFlags:I
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$302(Landroid/app/Notification$Builder;I)I

    .line 1931
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 1932
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1933
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1934
    iget-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1937
    if-eqz p2, :cond_0

    .line 1938
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1940
    :cond_0
    if-eqz p3, :cond_1

    .line 1941
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1943
    :cond_1
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1944
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 1945
    return-void
.end method

.method public setOriginalPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 6326
    iput-object p1, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    .line 6327
    return-void
.end method

.method public setOriginalUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 6334
    iput p1, p0, Landroid/app/Notification;->originalUserId:I

    .line 6335
    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2086
    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2087
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1950
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Notification(pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1952
    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_7

    .line 1954
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    :goto_0
    const-string v3, " vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 1962
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    :goto_1
    const-string v3, " sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    .line 1979
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    :goto_2
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 1986
    const-string v3, " tick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    :cond_0
    const-string v3, " defaults=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    const-string v3, " color=0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroid/app/Notification;->color:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1994
    const-string v3, " category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :cond_1
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1998
    const-string v3, " groupKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    :cond_2
    iget-object v3, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2004
    const-string v3, " appGroupKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    iget-object v3, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2010
    const-string v3, " sortKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    :cond_4
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_5

    .line 2014
    const-string v3, " actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2017
    :cond_5
    const-string v3, " vis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    iget v3, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v3, :cond_6

    .line 2020
    const-string v3, " publicVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    :cond_6
    const-string v3, " secFlags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    iget v3, p0, Landroid/app/Notification;->secFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    const-string v3, " secPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    iget v3, p0, Landroid/app/Notification;->secPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2029
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1958
    :cond_7
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1963
    :cond_8
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_b

    .line 1964
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 1965
    .local v0, "N":I
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_9

    .line 1967
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1968
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1970
    :cond_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    .line 1971
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1973
    :cond_a
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1975
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_b
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1980
    :cond_c
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_d

    .line 1981
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1983
    :cond_d
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1730
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    iget-wide v4, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1733
    iget-object v3, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_0

    .line 1735
    const-string v3, ""

    iget v4, p0, Landroid/app/Notification;->icon:I

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iput-object v3, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 1737
    :cond_0
    iget-object v3, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_1

    .line 1738
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget-object v3, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, p1, v6}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1743
    :goto_0
    iget v3, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    .line 1745
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1750
    :goto_1
    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    .line 1751
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1756
    :goto_2
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 1757
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1762
    :goto_3
    iget-object v3, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

    .line 1763
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v3, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1768
    :goto_4
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_6

    .line 1769
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1774
    :goto_5
    iget-object v3, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_7

    .line 1775
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    iget-object v3, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, p1, v6}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1781
    :goto_6
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_8

    .line 1785
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3, p1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1790
    :goto_7
    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    iget-object v3, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v3, :cond_9

    .line 1793
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    iget-object v3, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, p1, v6}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1799
    :goto_8
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1800
    iget v3, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    iget v3, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    iget v3, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    iget v3, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    iget-object v3, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_a

    .line 1806
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    iget-object v3, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1812
    :goto_9
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1816
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1818
    iget-object v3, p0, Landroid/app/Notification;->mAppGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1820
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1822
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1824
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1826
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_b

    .line 1827
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1833
    :goto_a
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_c

    .line 1834
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1840
    :goto_b
    iget v3, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v3, :cond_d

    .line 1843
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v3, p1, v6}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1849
    :goto_c
    iget v3, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    iget v3, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    iget v3, p0, Landroid/app/Notification;->commonValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    iget v3, p0, Landroid/app/Notification;->missedCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    iget-object v3, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v3, :cond_e

    .line 1858
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1859
    iget-object v3, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1863
    :goto_d
    iget v3, p0, Landroid/app/Notification;->haptic:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    iget-wide v4, p0, Landroid/app/Notification;->threadId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1865
    iget v3, p0, Landroid/app/Notification;->secFlags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    iget v3, p0, Landroid/app/Notification;->secPriority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1871
    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_f

    .line 1872
    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1873
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1875
    .local v1, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1876
    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1741
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/CharSequence;
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1748
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 1754
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 1760
    :cond_4
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 1766
    :cond_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 1772
    :cond_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    .line 1778
    :cond_7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    .line 1788
    :cond_8
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 1796
    :cond_9
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 1809
    :cond_a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 1830
    :cond_b
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 1837
    :cond_c
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 1846
    :cond_d
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    .line 1861
    :cond_e
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    .line 1879
    :cond_f
    return-void
.end method
