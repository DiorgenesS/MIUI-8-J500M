.class public Lcom/sec/erisclient/ErisClient;
.super Ljava/lang/Object;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/erisclient/ErisClient$TimeoutThread;,
        Lcom/sec/erisclient/ErisClient$DaemonRunner;,
        Lcom/sec/erisclient/ErisClient$DaemonErrorCode;,
        Lcom/sec/erisclient/ErisClient$DaemonEventCode;
    }
.end annotation


# static fields
.field private static final DAEMON_NAME:Ljava/lang/String; = "eris"

.field private static final MSG_TYPE_CHECKCONN:I = 0x3

.field private static final MSG_TYPE_CONNECT:I = 0x1

.field private static final MSG_TYPE_CONN_UPDATE:I = 0x4

.field private static final MSG_TYPE_DISCONNECT:I = 0x2

.field private static final MSG_TYPE_PROP_UPDATE:I = 0x5

.field private static final MSG_TYPE_SEND_KEEPALIVE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ErisClient"

.field private static final TAG_CID:Ljava/lang/String; = "cid"

.field private static final TAG_DATA:Ljava/lang/String; = "msgData"

.field private static final TAG_ERROR:Ljava/lang/String; = "errorCode"

.field private static final TAG_IKE_ERROR:Ljava/lang/String; = "ikeErrorCode"

.field private static final TAG_STATE:Ljava/lang/String; = "stateCode"

.field private static final TAG_TYPE:Ljava/lang/String; = "msgType"

.field private static mInstance:Lcom/sec/erisclient/ErisClient;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final INTENT_ACTION:Ljava/lang/String;

.field private alarmClockInfo:Landroid/app/AlarmManager$AlarmClockInfo;

.field private alarmMgr:Landroid/app/AlarmManager;

.field private calendar:Ljava/util/Calendar;

.field private mActiveConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/erisclient/IPSecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

.field mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/erisclient/IErisListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNatKeepaliveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNatKeepaliveTimeout:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSocket:Landroid/net/LocalSocket;

.field private mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

.field private out:Ljava/io/OutputStream;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    .line 39
    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    .line 67
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    .line 69
    const-string/jumbo v0, "com.sec.erisclient.natkeepalive"

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->INTENT_ACTION:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/sec/erisclient/ErisClient$1;

    invoke-direct {v0, p0}, Lcom/sec/erisclient/ErisClient$1;-><init>(Lcom/sec/erisclient/ErisClient;)V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    const-string v0, "ErisClient"

    const-string v1, "ErisClient()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    .line 140
    return-void
.end method

.method private RepeatNatKeepaliveAlarm()V
    .locals 5

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->calendar:Ljava/util/Calendar;

    .line 132
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    iget v2, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 133
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sec/erisclient/ErisClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/erisclient/ErisClient;->RepeatNatKeepaliveAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Lcom/sec/erisclient/ErisError;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->updateServiceStatus(Lcom/sec/erisclient/ErisError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/erisclient/ErisClient;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->parseDaemonResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "x2"    # Lcom/sec/erisclient/ErisEventData;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    return-void
.end method

.method private getConnectionEventFromDaemonEvent(I)Lcom/sec/erisclient/ErisEvent;
    .locals 2
    .param p1, "dEventCode"    # I

    .prologue
    .line 403
    const-string v0, "ErisClient"

    const-string/jumbo v1, "getConnectionEventFromDaemonEvent()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    packed-switch p1, :pswitch_data_0

    .line 420
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 408
    :pswitch_1
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 410
    :pswitch_2
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 412
    :pswitch_3
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 414
    :pswitch_4
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 416
    :pswitch_5
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 418
    :pswitch_6
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getErisErrorFromDaemonError(I)Lcom/sec/erisclient/ErisError;
    .locals 2
    .param p1, "dErrorCode"    # I

    .prologue
    .line 425
    const-string v0, "ErisClient"

    const-string/jumbo v1, "getErisErrorFromDaemonError()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    packed-switch p1, :pswitch_data_0

    .line 444
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    :goto_0
    return-object v0

    .line 428
    :pswitch_0
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 430
    :pswitch_1
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 432
    :pswitch_2
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 434
    :pswitch_3
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 436
    :pswitch_4
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 438
    :pswitch_5
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 440
    :pswitch_6
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 442
    :pswitch_7
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/erisclient/ErisClient;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const-class v1, Lcom/sec/erisclient/ErisClient;

    monitor-enter v1

    :try_start_0
    const-string v0, "ErisClient"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v2, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    sget-object v0, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/sec/erisclient/ErisClient;

    invoke-direct {v0, p0}, Lcom/sec/erisclient/ErisClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    .line 155
    :cond_0
    sget-object v0, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseDaemonResponse(Ljava/lang/String;)V
    .locals 20
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v17, "ErisClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parseDaemonResponse() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v17, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 458
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 459
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, "jArrStr":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 462
    .local v13, "jsonArr":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    .line 463
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 464
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v17, "msgData"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 466
    .local v7, "dataObj":Lorg/json/JSONObject;
    const-string/jumbo v17, "msgType"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 467
    .local v15, "msgType":I
    packed-switch v15, :pswitch_data_0

    .line 462
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 469
    :pswitch_0
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 470
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 471
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/erisclient/IPSecConnection;

    .line 472
    .local v5, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v5, :cond_1

    .line 473
    const-string v17, "ErisClient"

    const-string/jumbo v19, "received orphan status update message from daemon - skip"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    monitor-exit v18

    goto :goto_1

    .line 476
    .end local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .restart local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :cond_1
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    const-string/jumbo v17, "stateCode"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/erisclient/ErisClient;->getConnectionEventFromDaemonEvent(I)Lcom/sec/erisclient/ErisEvent;

    move-result-object v9

    .line 478
    .local v9, "event":Lcom/sec/erisclient/ErisEvent;
    const-string/jumbo v17, "errorCode"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/erisclient/ErisClient;->getErisErrorFromDaemonError(I)Lcom/sec/erisclient/ErisError;

    move-result-object v8

    .line 479
    .local v8, "error":Lcom/sec/erisclient/ErisError;
    const-string/jumbo v17, "ikeErrorCode"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 480
    .local v10, "ikeError":I
    new-instance v6, Lcom/sec/erisclient/ErisEventData;

    invoke-direct {v6, v5, v8, v10}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    .line 481
    .local v6, "data":Lcom/sec/erisclient/ErisEventData;
    sget-object v17, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    move-object/from16 v0, v17

    if-ne v9, v0, :cond_2

    .line 482
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setConnected(Z)V

    .line 483
    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getNattKeepaliveTimeout()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    .line 484
    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ImsApn"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 486
    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/erisclient/ErisClient;->SetNatKeepaliveAlarm(Ljava/lang/String;IZ)V

    .line 489
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    goto/16 :goto_1

    .line 492
    .end local v4    # "cid":I
    .end local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v6    # "data":Lcom/sec/erisclient/ErisEventData;
    .end local v8    # "error":Lcom/sec/erisclient/ErisError;
    .end local v9    # "event":Lcom/sec/erisclient/ErisEvent;
    .end local v10    # "ikeError":I
    :pswitch_1
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 493
    .restart local v4    # "cid":I
    new-instance v16, Lcom/sec/erisclient/IPSecConnectionState;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/sec/erisclient/IPSecConnectionState;-><init>(Lorg/json/JSONObject;)V

    .line 494
    .local v16, "state":Lcom/sec/erisclient/IPSecConnectionState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 495
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/erisclient/IPSecConnection;

    .line 496
    .restart local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v5, :cond_3

    .line 497
    const-string v17, "ErisClient"

    const-string/jumbo v19, "received orphan prop update message from daemon - skip"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    monitor-exit v18

    goto/16 :goto_1

    .line 501
    .end local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v17

    .line 500
    .restart local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :cond_3
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setState(Lcom/sec/erisclient/IPSecConnectionState;)V

    .line 501
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 507
    .end local v4    # "cid":I
    .end local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v7    # "dataObj":Lorg/json/JSONObject;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "msgType":I
    .end local v16    # "state":Lcom/sec/erisclient/IPSecConnectionState;
    :cond_4
    return-void

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized sendRequestToDaemon(II)V
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "connectionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    const-string v3, "ErisClient"

    const-string/jumbo v4, "sendRequestToDaemon()"

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 530
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "msgType"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 532
    .local v0, "jData":Lorg/json/JSONObject;
    const-string v3, "cid"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 533
    const-string/jumbo v3, "msgData"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 535
    .local v2, "request":[B
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 537
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :cond_0
    monitor-exit p0

    return-void

    .line 528
    .end local v0    # "jData":Lorg/json/JSONObject;
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "request":[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized sendRequestToDaemon(ILcom/sec/erisclient/IPSecConnection;)V
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    const-string v3, "ErisClient"

    const-string/jumbo v4, "sendRequestToDaemon()"

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 517
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "msgType"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    invoke-virtual {p2}, Lcom/sec/erisclient/IPSecConnection;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 519
    .local v0, "jData":Lorg/json/JSONObject;
    const-string/jumbo v3, "msgData"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 521
    .local v2, "request":[B
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 523
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :cond_0
    monitor-exit p0

    return-void

    .line 515
    .end local v0    # "jData":Lorg/json/JSONObject;
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "request":[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 9
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "data"    # Lcom/sec/erisclient/ErisEventData;

    .prologue
    const/4 v8, 0x0

    .line 542
    const-string v5, "ErisClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendConnectionReport() conn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object v3, p1

    .line 545
    .local v3, "sEvent":Lcom/sec/erisclient/ErisEvent;
    move-object v2, p2

    .line 547
    .local v2, "sData":Lcom/sec/erisclient/ErisEventData;
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v6

    .line 548
    :try_start_0
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection;

    .line 549
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v0, :cond_1

    .line 550
    const-string v5, "ErisClient"

    const-string/jumbo v7, "updateConnectionStatus: connection have been removed"

    invoke-static {v5, v7}, Lcom/sec/erisclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    monitor-exit v6

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v5, :cond_3

    .line 556
    :cond_2
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v6

    .line 557
    :try_start_1
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 558
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 559
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/erisclient/IPSecConnection;->setConnected(Z)V

    .line 560
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImsApn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getNattKeepaliveTimeout()I

    move-result v5

    if-lez v5, :cond_3

    .line 562
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v6

    invoke-virtual {p0, v5, v6, v8}, Lcom/sec/erisclient/ErisClient;->SetNatKeepaliveAlarm(Ljava/lang/String;IZ)V

    .line 565
    :cond_3
    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v5, :cond_4

    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v5, :cond_6

    .line 567
    :cond_4
    sget-object v6, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 568
    :try_start_2
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

    if-eqz v5, :cond_5

    .line 569
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

    invoke-virtual {v5}, Lcom/sec/erisclient/ErisClient$TimeoutThread;->interrupt()V

    .line 570
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

    .line 572
    :cond_5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 575
    :cond_6
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    .line 578
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/erisclient/IErisListener;

    .line 579
    .local v1, "iListener":Lcom/sec/erisclient/IErisListener;
    if-eqz v1, :cond_0

    .line 582
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/erisclient/ErisClient$2;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/sec/erisclient/ErisClient$2;-><init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IErisListener;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 589
    .local v4, "updateThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 553
    .end local v0    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v1    # "iListener":Lcom/sec/erisclient/IErisListener;
    .end local v4    # "updateThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 558
    .restart local v0    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 572
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method

.method private updateServiceStatus(Lcom/sec/erisclient/ErisError;)V
    .locals 6
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .prologue
    .line 593
    const-string v3, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendServiceReport() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object v0, p1

    .line 596
    .local v0, "event":Lcom/sec/erisclient/ErisError;
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/erisclient/IErisListener;

    .line 600
    .local v1, "iListener":Lcom/sec/erisclient/IErisListener;
    if-eqz v1, :cond_0

    .line 603
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/erisclient/ErisClient$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/erisclient/ErisClient$3;-><init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IErisListener;Lcom/sec/erisclient/ErisError;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 610
    .local v2, "updateThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private verifyConnection(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 2
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    .line 276
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 217
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v0

    if-nez v0, :cond_2

    .line 219
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    if-ne v0, v1, :cond_4

    .line 233
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    move-result-object v0

    if-nez v0, :cond_5

    .line 234
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    if-eq v0, v1, :cond_3

    .line 228
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 235
    :cond_5
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getOwnIdentityType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v0

    if-nez v0, :cond_6

    .line 236
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 237
    :cond_6
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getRemoteIdentityType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v0

    if-nez v0, :cond_7

    .line 238
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 239
    :cond_7
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeLife()I

    move-result v0

    if-gez v0, :cond_8

    .line 240
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 241
    :cond_8
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    move-result-object v0

    if-nez v0, :cond_9

    .line 242
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 243
    :cond_9
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeEncryption()Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    move-result-object v0

    if-nez v0, :cond_a

    .line 244
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 245
    :cond_a
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeIntegrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    move-result-object v0

    if-nez v0, :cond_b

    .line 246
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 247
    :cond_b
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeVersion()Lcom/sec/epdg/IWlanEnum$Ikeversion;

    move-result-object v0

    if-nez v0, :cond_c

    .line 248
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 249
    :cond_c
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeWindowSize()I

    move-result v0

    if-gez v0, :cond_d

    .line 250
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    goto :goto_0

    .line 251
    :cond_d
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecLifeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecLife()I

    move-result v0

    if-gez v0, :cond_f

    .line 252
    :cond_e
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 253
    :cond_f
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecEncryption()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    move-result-object v0

    if-nez v0, :cond_10

    .line 254
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 255
    :cond_10
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecIntegrity()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    move-result-object v0

    if-nez v0, :cond_11

    .line 256
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 258
    :cond_11
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getPerfectForwardSecrecy()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 259
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    move-result-object v0

    if-nez v0, :cond_12

    .line 260
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 262
    :cond_12
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getInterface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 263
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 264
    :cond_13
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 265
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 266
    :cond_14
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getNattKeepaliveTimeout()I

    move-result v0

    if-gez v0, :cond_15

    .line 267
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 268
    :cond_15
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getDpdTimeout()I

    move-result v0

    if-gez v0, :cond_16

    .line 269
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 274
    :cond_16
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isCaCertOk()Z

    move-result v0

    if-nez v0, :cond_17

    .line 275
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0

    .line 276
    :cond_17
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    goto/16 :goto_0
.end method


# virtual methods
.method public SetNatKeepaliveAlarm(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "gateway"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "on"    # Z

    .prologue
    const/4 v3, 0x0

    .line 101
    if-eqz p3, :cond_2

    .line 103
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    const-string v1, "ErisClient"

    const-string v2, "NAT keepalive alarm already set, ignored"

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "ErisClient"

    const-string v2, "Set NAT keepalive alarm"

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "alarmIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "com.sec.erisclient.natkeepalive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    .line 117
    invoke-direct {p0}, Lcom/sec/erisclient/ErisClient;->RepeatNatKeepaliveAlarm()V

    goto :goto_0

    .line 121
    .end local v0    # "alarmIntent":Landroid/content/Intent;
    :cond_2
    const-string v1, "ErisClient"

    const-string v2, "SetNatKeepaliveAlarm off"

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public checkConnection(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;
    .locals 7
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p2, "timeout"    # I

    .prologue
    .line 345
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkConnection() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 347
    .local v1, "result":Lcom/sec/erisclient/ErisError;
    sget-object v3, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 349
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    .line 350
    const-string v2, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConnection() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    monitor-exit v3

    move-object v2, v1

    .line 374
    :goto_0
    return-object v2

    .line 353
    :cond_0
    if-nez p1, :cond_1

    .line 354
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    .line 355
    const-string v2, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (null connection)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 360
    :cond_2
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    .line 361
    const-string v2, "ErisClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkConnection() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (connection not connected)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    goto :goto_0

    .line 364
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :try_start_4
    new-instance v2, Lcom/sec/erisclient/ErisClient$TimeoutThread;

    int-to-long v4, p2

    invoke-direct {v2, p0, p1, v4, v5}, Lcom/sec/erisclient/ErisClient$TimeoutThread;-><init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IPSecConnection;J)V

    iput-object v2, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

    .line 366
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:Lcom/sec/erisclient/ErisClient$TimeoutThread;

    invoke-virtual {v2}, Lcom/sec/erisclient/ErisClient$TimeoutThread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 368
    const/4 v2, 0x3

    :try_start_5
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 373
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v1

    .line 374
    goto :goto_0

    .line 364
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 373
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0
.end method

.method public checkNatKeepAlive()Lcom/sec/erisclient/ErisError;
    .locals 9

    .prologue
    .line 378
    sget-object v4, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 379
    .local v4, "result":Lcom/sec/erisclient/ErisError;
    sget-object v6, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 380
    :try_start_0
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v5, :cond_0

    .line 381
    sget-object v4, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    .line 382
    const-string v5, "ErisClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkNatKeepAlive() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 399
    :goto_0
    return-object v5

    .line 387
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 388
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    .local v2, "gateway":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    .local v0, "cid":I
    const-string v5, "ErisClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trigger keepalive for cid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v5, 0x6

    invoke-direct {p0, v5, v0}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 394
    .end local v0    # "cid":I
    .end local v2    # "gateway":Ljava/lang/String;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    sget-object v5, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v6

    goto :goto_0

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v4

    .line 399
    goto :goto_0
.end method

.method public connect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 6
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    .line 280
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connect() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 283
    .local v1, "result":Lcom/sec/erisclient/ErisError;
    sget-object v3, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 284
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 285
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    monitor-exit v3

    .line 309
    :goto_0
    return-object v2

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->verifyConnection(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    move-result-object v1

    .line 287
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-eq v1, v2, :cond_1

    .line 288
    const-string v2, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    .line 293
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    goto :goto_0

    .line 296
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(ILcom/sec/erisclient/IPSecConnection;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    iget-object v4, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :try_start_3
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v5

    invoke-virtual {v2, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 307
    :try_start_4
    monitor-exit v3

    move-object v2, v1

    .line 309
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 299
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v3

    goto :goto_0

    .line 307
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public disconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 7
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    .line 313
    const-string v3, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 315
    .local v1, "result":Lcom/sec/erisclient/ErisError;
    sget-object v4, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v3, :cond_0

    .line 317
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    .line 318
    const-string v3, "ErisClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disconnect() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    monitor-exit v4

    move-object v2, v1

    .line 341
    .end local v1    # "result":Lcom/sec/erisclient/ErisError;
    .local v2, "result":Lcom/sec/erisclient/ErisError;
    :goto_0
    return-object v2

    .line 321
    .end local v2    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v1    # "result":Lcom/sec/erisclient/ErisError;
    :cond_0
    if-nez p1, :cond_1

    .line 322
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    .line 323
    const-string v3, "ErisClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disconnect() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (null connection)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    monitor-exit v4

    move-object v2, v1

    .end local v1    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v2    # "result":Lcom/sec/erisclient/ErisError;
    goto :goto_0

    .line 326
    .end local v2    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v1    # "result":Lcom/sec/erisclient/ErisError;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 327
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    .line 328
    const-string v3, "ErisClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disconnect() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (connection not connected)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .end local v1    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v2    # "result":Lcom/sec/erisclient/ErisError;
    goto :goto_0

    .line 332
    .end local v2    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v1    # "result":Lcom/sec/erisclient/ErisError;
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :goto_1
    :try_start_2
    monitor-exit v4

    move-object v2, v1

    .line 341
    .end local v1    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v2    # "result":Lcom/sec/erisclient/ErisError;
    goto :goto_0

    .line 333
    .end local v2    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v1    # "result":Lcom/sec/erisclient/ErisError;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 335
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    .line 339
    goto :goto_1

    .line 336
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    sget-object v1, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    goto :goto_1

    .line 340
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setListener(Lcom/sec/erisclient/IErisListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/erisclient/IErisListener;

    .prologue
    .line 160
    const-string v0, "ErisClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListener() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz p1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0
.end method

.method public startService()V
    .locals 5

    .prologue
    .line 169
    const-string v0, "ErisClient"

    const-string/jumbo v1, "startService()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;

    .line 171
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/sec/erisclient/ErisClient$DaemonRunner;

    const-string/jumbo v2, "eris"

    invoke-direct {v0, p0, v2}, Lcom/sec/erisclient/ErisClient$DaemonRunner;-><init>(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    .line 174
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->start()V

    .line 175
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sec.erisclient.natkeepalive"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    :cond_0
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopService()V
    .locals 9

    .prologue
    .line 181
    const-string v5, "ErisClient"

    const-string/jumbo v6, "stopService()"

    invoke-static {v5, v6}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v6, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 187
    :try_start_0
    iget-object v7, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 189
    .local v0, "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 192
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 193
    .local v4, "key":I
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/erisclient/IPSecConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    .local v1, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    .end local v1    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v3    # "i":I
    .end local v4    # "key":I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 210
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 196
    .restart local v0    # "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    .restart local v1    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .restart local v3    # "i":I
    .restart local v4    # "key":I
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/erisclient/IPSecConnection;->setConnected(Z)V

    .line 198
    new-instance v2, Lcom/sec/erisclient/ErisEventData;

    sget-object v5, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    const/4 v7, 0x0

    invoke-direct {v2, v1, v5, v7}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    .line 199
    .local v2, "data":Lcom/sec/erisclient/ErisEventData;
    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    invoke-direct {p0, v5, v2}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    goto :goto_1

    .line 202
    .end local v1    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v2    # "data":Lcom/sec/erisclient/ErisEventData;
    .end local v4    # "key":I
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 203
    iget-object v7, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    :try_start_6
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 205
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 206
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/erisclient/ErisClient;->SetNatKeepaliveAlarm(Ljava/lang/String;IZ)V

    .line 207
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    invoke-virtual {v5}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->exit()V

    .line 208
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    .line 209
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/erisclient/ErisClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 211
    return-void

    .line 205
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method
