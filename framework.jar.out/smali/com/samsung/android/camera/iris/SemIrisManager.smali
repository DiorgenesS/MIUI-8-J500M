.class public Lcom/samsung/android/camera/iris/SemIrisManager;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;,
        Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field private static final DEBUG:Z

.field public static final IRIS_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final IRIS_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE:I = 0x2714

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE_TIMEOUT:I = 0x2717

.field public static final IRIS_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final IRIS_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final IRIS_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final IRIS_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final IRIS_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final IRIS_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final IRIS_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final IRIS_AUTH_TYPE_NONE:I = 0x0

.field public static final IRIS_AUTH_TYPE_PREVIEW_CALLBACK:I = 0x1

.field public static final IRIS_AUTH_TYPE_UI_NO_PREVIEW:I = 0x3

.field public static final IRIS_AUTH_TYPE_UI_WITH_PREVIEW:I = 0x2

.field public static final IRIS_DISABLE_PREVIEW_CALLBACK:I = 0x7

.field public static final IRIS_ENABLE_PREVIEW_CALLBACK:I = 0x6

.field public static final IRIS_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final IRIS_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final IRIS_ERROR_CANCELED:I = 0x4

.field public static final IRIS_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final IRIS_ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field public static final IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final IRIS_ERROR_NO_SPACE:I = 0x3

.field public static final IRIS_ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field public static final IRIS_ERROR_START_IR_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final IRIS_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final IRIS_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_INVISIBLE_PREVIEW:I = 0x4

.field public static final IRIS_ONE_EYE:I = 0x9c40

.field public static final IRIS_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final IRIS_REQUEST_ENUMERATE:I = 0xb

.field public static final IRIS_REQUEST_FACTORY_TEST_ALWAYS_LED_ON:I = 0x7d1

.field public static final IRIS_REQUEST_FACTORY_TEST_FULL_PREVIEW:I = 0x7d0

.field public static final IRIS_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final IRIS_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final IRIS_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final IRIS_REQUEST_GET_USERIDS:I = 0xc

.field public static final IRIS_REQUEST_GET_VERSION:I = 0x4

.field public static final IRIS_REQUEST_LOCKOUT:I = 0x3e9

.field public static final IRIS_REQUEST_PAUSE:I = 0x0

.field public static final IRIS_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final IRIS_REQUEST_REMOVE_IRIS:I = 0x3e8

.field public static final IRIS_REQUEST_RESUME:I = 0x1

.field public static final IRIS_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final IRIS_REQUEST_SESSION_OPEN:I = 0x2

.field public static final IRIS_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final IRIS_REQUEST_UPDATE_SID:I = 0xa

.field private static final IRIS_SHOW_PREVIEW:Ljava/lang/String; = "iris_showpreview_val"

.field public static final IRIS_TWO_EYES:I = 0x9c41

.field public static final IRIS_VISIBLE_PREVIEW:I = 0x5

.field private static final IR_PROPERTY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final IR_PROPERTY_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final IR_PROPERTY_DAC:Ljava/lang/String; = "dac"

.field private static final IR_PROPERTY_GAIN:Ljava/lang/String; = "gain"

.field private static final IR_PROPERTY_PULSE_DELAY:Ljava/lang/String; = "pulse-delay"

.field private static final IR_PROPERTY_PULSE_WIDTH:Ljava/lang/String; = "pulse-width"

.field private static final IR_PROPERTY_SATURATION:Ljava/lang/String; = "saturation"

.field private static final IR_PROPERTY_SHARPNESS:Ljava/lang/String; = "sharpness"

.field private static final IR_PROPERTY_SHUTTER_SPEED:Ljava/lang/String; = "shutterspeed"

.field private static final MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.MANAGE_IRIS"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_IR_IMAGE:I = 0x6a

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_IRIS_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_LED_OFF:I = 0x7531

.field public static final SENSOR_STATUS_LED_ON:I = 0x7530

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_SECURE_DISABLE:I = 0x4e21

.field public static final SENSOR_STATUS_SECURE_ENALBE:I = 0x4e20

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final TAG:Ljava/lang/String; = "SemIrisManager"

.field private static final USE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.USE_IRIS"


# instance fields
.field private mAuthBegin:J

.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

.field private mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

.field private mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/camera/iris/SemIrisManager;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 457
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 458
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1842
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 1893
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 1895
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 1897
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    .line 1898
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/camera/iris/IIrisService;

    .prologue
    .line 1687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 457
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 458
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1842
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 1688
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 1689
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 1690
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_0

    .line 1691
    const-string v0, "SemIrisManager"

    const-string v1, "SemIrisManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 1694
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "x2"    # Landroid/os/CancellationSignal;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "x5"    # Landroid/os/Handler;
    .param p6, "x6"    # I
    .param p7, "x7"    # Landroid/os/Bundle;
    .param p8, "x8"    # Landroid/view/View;
    .param p9, "x9"    # J
    .param p11, "x10"    # I

    .prologue
    .line 72
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/CancellationSignal;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "x5"    # Landroid/os/Bundle;
    .param p6, "x6"    # Landroid/view/View;
    .param p7, "x7"    # I

    .prologue
    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    return-object v0
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    .line 1454
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1455
    :cond_0
    const/4 v2, 0x0

    .line 1461
    :goto_0
    return-object v2

    .line 1457
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1458
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 1459
    const-string v2, "%c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1461
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    .line 1719
    const-string v1, "SemIrisManager"

    const-string v2, "cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1724
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1706
    const-string v1, "SemIrisManager"

    const-string v2, "cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1711
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;JI)V
    .locals 19
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "irisViewType"    # I

    .prologue
    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v2, :cond_0

    .line 901
    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 903
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 905
    const-string v2, "SemIrisManager"

    const-string v4, "checkAuthViewWindowToken is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 907
    if-eqz p4, :cond_1

    .line 908
    const/16 v2, 0xb

    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 947
    :cond_1
    :goto_0
    return-void

    .line 912
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/camera/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;JI)V

    invoke-virtual {v15, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 919
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 921
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 923
    .local v3, "mToken":Landroid/os/IBinder;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 924
    .local v18, "position":[I
    move-object/from16 v0, p8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 925
    if-nez v3, :cond_4

    .line 926
    const-string v2, "SemIrisManager"

    const-string/jumbo v4, "mToken null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize(I)Landroid/util/Size;

    move-result-object v17

    .line 930
    .local v17, "mAuthViewSize":Landroid/util/Size;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_5

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 931
    :cond_5
    if-eqz p4, :cond_6

    .line 932
    const/16 v2, 0xa

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 936
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const/4 v4, 0x0

    aget v4, v18, v4

    const/4 v5, 0x1

    aget v5, v18, v5

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v8, p9

    move/from16 v10, p6

    move/from16 v12, p3

    move-object/from16 v14, p7

    move/from16 v15, p11

    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 938
    .end local v3    # "mToken":Landroid/os/IBinder;
    .end local v17    # "mAuthViewSize":Landroid/util/Size;
    .end local v18    # "position":[I
    :catch_0
    move-exception v16

    .line 939
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v4, "Remote exception while authenticating: "

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    if-eqz p4, :cond_1

    .line 943
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V
    .locals 15
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "attr"    # Landroid/os/Bundle;
    .param p6, "irisView"    # Landroid/view/View;
    .param p7, "irisViewType"    # I

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v1, :cond_0

    .line 1042
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1044
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1045
    iget-object v10, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$2;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/camera/iris/SemIrisManager$2;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 1070
    :cond_1
    :goto_0
    return-void

    .line 1052
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 1054
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 1056
    const/4 v1, 0x2

    new-array v14, v1, [I

    .line 1057
    .local v14, "position":[I
    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_3

    .line 1059
    const-string v1, "SemIrisManager"

    const-string/jumbo v2, "mToken null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x1

    aget v4, v14, v4

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    .end local v14    # "position":[I
    :catch_0
    move-exception v13

    .line 1062
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enroll: "

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    if-eqz p4, :cond_1

    .line 1066
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    .line 1901
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1904
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1912
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v1, :cond_1

    .line 1913
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->startIrisService()V

    .line 1914
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->waitForService()V

    .line 1917
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 1907
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1901
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1917
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 7
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v3, 0x0

    .line 1786
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1787
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1790
    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v4, "com.samsung.android.server.iris"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1796
    :goto_0
    if-nez v2, :cond_0

    .line 1797
    const-string v4, "SemIrisManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :goto_1
    :pswitch_0
    return-object v3

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAcquiredString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const/4 v2, 0x0

    goto :goto_0

    .line 1801
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1838
    const-string v3, "iris_acquired_insufficient"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1805
    :pswitch_1
    const-string v3, "iris_acquired_move_closer"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1807
    :pswitch_2
    const-string v3, "iris_acquired_move_farther"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1809
    :pswitch_3
    const-string v3, "iris_acquired_move_left"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1811
    :pswitch_4
    const-string v3, "iris_acquired_move_right"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1813
    :pswitch_5
    const-string v3, "iris_acquired_move_up"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1815
    :pswitch_6
    const-string v3, "iris_acquired_move_down"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1817
    :pswitch_7
    const-string v3, "iris_acquired_open_wider"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1819
    :pswitch_8
    const-string v3, "iris_acquired_eye_not_present"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1821
    :pswitch_9
    const-string v3, "iris_acquired_partial"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1823
    :pswitch_a
    const-string v3, "iris_acquired_insufficient"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1825
    :pswitch_b
    const-string v3, "iris_acquired_move_somewhere_darker"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1827
    :pswitch_c
    const-string v3, "iris_acquired_change_your_position"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 1698
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    :goto_0
    return v1

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/16 v1, -0x2710

    goto :goto_0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 6
    .param p1, "errMsg"    # I

    .prologue
    .line 1731
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1732
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1734
    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "com.samsung.android.server.iris"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1739
    :goto_0
    if-nez v2, :cond_0

    .line 1740
    const-string v3, "SemIrisManager"

    const-string/jumbo v4, "mRes is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const/4 v3, 0x0

    .line 1780
    :goto_1
    return-object v3

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SemIrisManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getErrorString, Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/4 v2, 0x0

    goto :goto_0

    .line 1744
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1780
    const-string v3, "iris_error_unable_to_process"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1746
    :pswitch_0
    const-string v3, "iris_error_unable_to_process"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1748
    :pswitch_1
    const-string v3, "iris_error_hw_not_available"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1750
    :pswitch_2
    const-string v3, "iris_error_no_space"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1752
    :pswitch_3
    const-string v3, "iris_error_timeout"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1754
    :pswitch_4
    const-string v3, "iris_error_canceled"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1756
    :pswitch_5
    const-string v3, "iris_error_lockout"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1758
    :pswitch_6
    const-string v3, "iris_error_unable_to_remove"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1760
    :pswitch_7
    const-string v3, "iris_error_unable_to_start_preview"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1762
    :pswitch_8
    const-string v3, "iris_error_unable_to_open"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1764
    :pswitch_9
    const-string v3, "iris_error_eye_safety_timeout"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1766
    :pswitch_a
    const-string v3, "iris_error_auth_view_size"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1768
    :pswitch_b
    const-string v3, "iris_error_auth_window_token"

    const-string/jumbo v4, "string"

    const-string v5, "com.samsung.android.server.iris"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1744
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1887
    const/4 v0, 0x0

    return-object v0
.end method

.method private startIrisService()V
    .locals 5

    .prologue
    .line 1922
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1923
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.server.iris"

    const-string v4, "com.samsung.android.server.iris.IrisService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1924
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting startIrisService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 835
    if-eqz p1, :cond_1

    .line 836
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 838
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    .prologue
    .line 1932
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1933
    const-string/jumbo v1, "samsung.iris"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 1935
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1936
    const-string v1, "SemIrisManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_0
    return-void

    .line 1940
    :cond_1
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1941
    const-string v1, "SemIrisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1942
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1533
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1534
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$3;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1552
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in addLockoutResetCallback(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1556
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "SemIrisManager"

    const-string v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;I)V
    .locals 24
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "irisViewType"    # I

    .prologue
    .line 858
    if-nez p4, :cond_0

    .line 859
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must supply an authentication callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    :cond_0
    if-eqz p2, :cond_3

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 864
    const-string v2, "SemIrisManager"

    const-string v3, "authentication already canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_1
    :goto_0
    return-void

    .line 867
    :cond_2
    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 871
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 875
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->useHandler(Landroid/os/Handler;)V

    .line 876
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 877
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .line 878
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getOpId()J

    move-result-wide v8

    .line 879
    .local v8, "sessionId":J
    :goto_1
    if-nez p8, :cond_5

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    move/from16 v10, p6

    move/from16 v12, p3

    move-object/from16 v14, p7

    move/from16 v15, p9

    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    .end local v8    # "sessionId":J
    :catch_0
    move-exception v23

    .line 886
    .local v23, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception while authenticating: "

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    if-eqz p4, :cond_1

    .line 890
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 878
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 882
    .restart local v8    # "sessionId":J
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-wide/from16 v20, v8

    move/from16 v22, p9

    .line 883
    invoke-direct/range {v11 .. v22}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisAuthType"    # I
    .param p7, "irisView"    # Landroid/view/View;

    .prologue
    .line 795
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;I)V

    .line 796
    return-void
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;I)V
    .locals 10
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "irisView"    # Landroid/view/View;
    .param p8, "irisViewType"    # I

    .prologue
    .line 849
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;I)V

    .line 850
    return-void
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    .line 826
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v8, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;I)V

    .line 827
    return-void
.end method

.method public enableIRImageCallback(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1307
    if-eqz p1, :cond_2

    .line 1308
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enableIRImageCallback: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1310
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V
    .locals 14
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "attr"    # Landroid/os/Bundle;
    .param p6, "irisView"    # Landroid/view/View;
    .param p7, "irisViewType"    # I

    .prologue
    .line 1003
    if-nez p4, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    :cond_0
    if-eqz p2, :cond_3

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    const-string v1, "SemIrisManager"

    const-string v2, "enrollment already canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_1
    :goto_0
    return-void

    .line 1012
    :cond_2
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1016
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1020
    :try_start_0
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 1021
    if-nez p6, :cond_4

    .line 1022
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v13

    .line 1027
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enroll: "

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    if-eqz p4, :cond_1

    .line 1031
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1024
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;I)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;
    .param p6, "irisViewType"    # I

    .prologue
    .line 997
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;I)V

    .line 998
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1490
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1501
    :goto_0
    return-wide v2

    .line 1492
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1494
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v4, "Remote exception in getAuthenticatorId(): "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SemIrisManager"

    const-string v4, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledIrises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledIrises(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1163
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-object v1

    .line 1164
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    .line 1166
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMinimumIrisViewSize(I)Landroid/util/Size;
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 1239
    const/4 v4, 0x0

    .line 1240
    .local v4, "width":I
    const/4 v1, 0x0

    .line 1241
    .local v1, "height":I
    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "iris_showpreview_val"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1242
    .local v2, "mShowPreview":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1243
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1244
    const v3, 0x3fe38e39

    .line 1246
    .local v3, "scale":F
    packed-switch p1, :pswitch_data_0

    .line 1264
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_1

    .line 1265
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1266
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v1, v5

    .line 1274
    :goto_0
    :pswitch_0
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v1}, Landroid/util/Size;-><init>(II)V

    return-object v5

    .line 1253
    :pswitch_1
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_0

    .line 1254
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1255
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v1, v5

    goto :goto_0

    .line 1257
    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1258
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v1, v5

    .line 1261
    goto :goto_0

    .line 1268
    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1269
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v1, v5

    goto :goto_0

    .line 1246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hasEnrolledIrises()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1191
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return v1

    .line 1192
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    .line 1194
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnrollSession()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1343
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1344
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1208
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v4, :cond_0

    .line 1210
    const-wide/16 v0, 0x0

    .line 1211
    .local v0, "deviceId":J
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v1, v5}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1223
    .end local v0    # "deviceId":J
    :goto_0
    return v3

    .line 1212
    .restart local v0    # "deviceId":J
    :catch_0
    move-exception v2

    .line 1213
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "SemIrisManager"

    const-string v5, "Remote exception in isIrisHardwareDetected(): "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1216
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v4, "SemIrisManager"

    const-string v5, "isIrisHardwareDetected(): Service not connected!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 1097
    const/4 v1, 0x0

    .line 1098
    .local v1, "result":I
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1106
    :goto_0
    return v2

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1102
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    .line 1106
    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in post enroll: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public preEnroll()J
    .locals 6

    .prologue
    .line 1079
    const-wide/16 v2, 0x0

    .line 1080
    .local v2, "result":J
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    .line 1088
    :goto_0
    return-wide v4

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_1
    :goto_1
    move-wide v4, v2

    .line 1088
    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v4, "Remote exception in enroll: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .prologue
    const/4 v6, 0x0

    .line 1119
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1122
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1123
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1124
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in remove: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1127
    if-eqz p2, :cond_0

    .line 1128
    invoke-direct {p0, v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v6, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(ILjava/lang/String;)V
    .locals 3
    .param p1, "irId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1146
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/android/camera/iris/IIrisService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in rename(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SemIrisManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .prologue
    const/4 v0, 0x0

    .line 1319
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    :goto_0
    return v0

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_3

    .line 1323
    if-nez p2, :cond_1

    .line 1324
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 1326
    :cond_1
    if-nez p3, :cond_2

    .line 1327
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 1329
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .line 1330
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1331
    :catch_0
    move-exception v8

    .line 1332
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "SemIrisManager"

    const-string v1, "Remote exception in request(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, -0x2

    goto :goto_0

    .line 1335
    :cond_3
    const-string v0, "SemIrisManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestEnumerate()[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1441
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 1442
    .local v3, "outBuf":[B
    const/16 v1, 0xb

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v8

    .line 1443
    .local v8, "size":I
    if-gtz v8, :cond_0

    .line 1450
    :goto_0
    return-object v2

    .line 1446
    :cond_0
    new-array v7, v8, [I

    .line 1447
    .local v7, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 1448
    aget-byte v0, v3, v6

    aput v0, v7, v6

    .line 1447
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v7

    .line 1450
    goto :goto_0
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1383
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1384
    .local v3, "outBuf":[B
    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1385
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1388
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public requestGetSensorStatus()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1394
    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUniqueID(ILjava/lang/String;)[B
    .locals 7
    .param p1, "irisId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1399
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1400
    .local v3, "outBuf":[B
    const/4 v1, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1401
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1404
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_0
.end method

.method public requestGetUserIDs()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1466
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1467
    .local v3, "outBuf":[B
    const/16 v1, 0xc

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v10

    .line 1468
    .local v10, "size":I
    if-gtz v10, :cond_0

    .line 1480
    :goto_0
    return-object v2

    .line 1471
    :cond_0
    invoke-static {v3, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 1473
    .local v11, "src":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 1475
    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .line 1476
    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1477
    .local v7, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1478
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    :cond_1
    move-object v2, v9

    .line 1480
    goto :goto_0
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1373
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1374
    .local v3, "outBuf":[B
    const/4 v1, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1375
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1378
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public requestPause()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1349
    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1352
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1423
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 1424
    .local v3, "outBuf":[B
    const/16 v1, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1425
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1428
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_0
.end method

.method public requestResume()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1357
    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1360
    :goto_0
    return v4

    :cond_0
    move v4, v1

    goto :goto_0
.end method

.method public requestSessionOpen()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1365
    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1368
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestSetActiveGroup(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1409
    if-nez p1, :cond_0

    .line 1410
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    .line 1418
    :goto_0
    return v0

    .line 1414
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v7

    move-object v3, p0

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    .line 1415
    goto :goto_0

    .line 1418
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1433
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1436
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1512
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1514
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1516
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/iris/IIrisService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in resetTimeout(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1521
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SemIrisManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIrisViewType(I)V
    .locals 4
    .param p1, "irisViewType"    # I

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1291
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setIrisViewType(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in setIrisViewType: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
