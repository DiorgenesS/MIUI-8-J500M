.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SERVICE_CATEGORY_CMAS_CHILD_ABDUCTION_EMERGENCY:I = 0x1003

.field public static final SERVICE_CATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final SERVICE_CATEGORY_CMAS_LAST_RESERVED_VALUE:I = 0x10ff

.field public static final SERVICE_CATEGORY_CMAS_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final SERVICE_CATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final SERVICE_CATEGORY_CMAS_TEST_MESSAGE:I = 0x1004

.field public static final TELESERVICE_CATPT:I = 0x1007

.field public static final TELESERVICE_CPT:I = 0x1001

.field public static final TELESERVICE_IMSST:I = 0x1092

.field public static final TELESERVICE_LGT_ETC_SHARE_49162:I = 0xc00a

.field public static final TELESERVICE_LGT_FOTA_SMS:I = 0xc277

.field public static final TELESERVICE_LGT_LMS_63230:I = 0xf6fe

.field public static final TELESERVICE_LGT_PCS_PAGING_TID_4097:I = 0x1001

.field public static final TELESERVICE_LGT_WAP_M_NOTI_IND_49173:I = 0xc015

.field public static final TELESERVICE_LGT_WAP_URL_NOTI_49166:I = 0xc00e

.field public static final TELESERVICE_LGT_WAP_URL_NOTI_49167:I = 0xc00f

.field public static final TELESERVICE_LGT_WAP_URL_NOTI_49168:I = 0xc010

.field public static final TELESERVICE_LGT_WEB_CP_49767:I = 0xc267

.field public static final TELESERVICE_LGT_WEB_LGT_49765:I = 0xc265

.field public static final TELESERVICE_LGT_WEB_THIRD_49763:I = 0xc263

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_SCPT:I = 0x1006

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WAP_CTC:I = 0xfdea

.field public static final TELESERVICE_WAP_CTC_DM:I = 0xfdf1

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 156
    return-void
.end method
