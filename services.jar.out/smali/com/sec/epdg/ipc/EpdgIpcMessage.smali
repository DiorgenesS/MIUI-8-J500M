.class public Lcom/sec/epdg/ipc/EpdgIpcMessage;
.super Ljava/lang/Object;
.source "EpdgIpcMessage.java"


# static fields
.field static final GEN_RESP_BYTE_2:I = 0x80

.field static final GEN_RESP_FAILURE:I = 0x5

.field private static final GEN_RESP_LENGTH:I = 0x5

.field static final GEN_RESP_SUCCESS:I = 0x0

.field public static final IPC_CMD_EVENT:I = 0x5

.field public static final IPC_CMD_EXEC:I = 0x1

.field public static final IPC_CMD_GET:I = 0x2

.field public static final IPC_CMD_INDI:I = 0x1

.field public static final IPC_CMD_NOTI:I = 0x3

.field public static final IPC_CMD_RESP:I = 0x2

.field public static final IPC_CMD_SET:I = 0x3

.field public static final IPC_DEBUG_HDR_SIZE:I = 0xc

.field public static final IPC_GEN_CMD:I = 0x80

.field public static final IPC_GEN_PHONE_RES:I = 0x1

.field public static final IPC_GPRS_CALL_STATUS:I = 0x10

.field public static final IPC_GPRS_CMD:I = 0xd

.field public static final IPC_GPRS_DEFINE_PDP_CONTEXT:I = 0x1

.field public static final IPC_GPRS_DEFINE_SEC_PDP_CONTEXT:I = 0xa

.field public static final IPC_GPRS_EPDG_STATUS:I = 0x16

.field public static final IPC_GPRS_IP_CONFIGURATION:I = 0x9

.field public static final IPC_GPRS_PDP_CONTEXT:I = 0x4

.field public static final IPC_HDR_SIZE:I = 0x7

.field public static final IPC_IIL_CMD:I = 0x70

.field public static final IPC_IIL_SSAC_INFO:I = 0xe

.field public static final IPC_NET_CMD:I = 0x8

.field public static final IPC_NET_DATA_HANDOVER:I = 0xf

.field public static final IPC_NET_EPDG_HO_THRESHOLD:I = 0x24

.field public static final IPC_NET_REGIST:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "[IPCMESSAGE]"

.field public static final MAX_IPC_HEADER:I = 0x13


# instance fields
.field protected mAsequence:I

.field protected mCmdType:I

.field protected mIpcBody:[B

.field protected mIpcData:[B

.field protected mIpcHeader:[B

.field protected mLength:I

.field protected mMainCmd:I

.field protected mNetworkType:I

.field protected mSequence:I

.field protected mSubCmd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    .line 82
    iput p2, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    .line 83
    iput p3, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    .line 84
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSequence:I

    .line 92
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mAsequence:I

    .line 93
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    .line 94
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    .line 95
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    .line 97
    const/4 v4, 0x7

    if-le p2, v4, :cond_0

    .line 98
    add-int/lit8 v4, p2, -0x7

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    .line 99
    iget-object v4, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    const/4 v5, 0x0

    add-int/lit8 v6, p2, -0x7

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "[IPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while closing stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 104
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "[IPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse, IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 108
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    :goto_1
    throw v4

    .line 109
    :catch_2
    move-exception v2

    .line 110
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "[IPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while closing stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public dumpHex([B)Ljava/lang/String;
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 195
    const-string v1, ""

    .line 197
    .local v1, "str":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 204
    .end local v1    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 200
    .end local v2    # "str":Ljava/lang/String;
    .restart local v1    # "str":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02X "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, p1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 204
    .end local v1    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public encodeGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z
    .locals 8
    .param p1, "result"    # Z
    .param p2, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x80

    .line 298
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 299
    .local v0, "data":[B
    iget v1, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 300
    iget v1, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 301
    const/4 v1, 0x2

    iget v2, p2, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 303
    if-eqz p1, :cond_0

    .line 304
    aput-byte v4, v0, v6

    .line 305
    aput-byte v3, v0, v7

    .line 311
    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    .line 312
    return v5

    .line 307
    :cond_0
    const/4 v1, 0x5

    aput-byte v1, v0, v6

    .line 308
    aput-byte v3, v0, v7

    goto :goto_0
.end method

.method public encodeNotification()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public getBody()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    return-object v0
.end method

.method public getEpdgCmdType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    packed-switch v0, :pswitch_data_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    const-string v0, "IPC_CMD_INDI"

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "IPC_CMD_RESP"

    goto :goto_0

    .line 229
    :pswitch_2
    const-string v0, "IPC_CMD_NOTI"

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIncomingEpdgCmdType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    packed-switch v0, :pswitch_data_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 238
    :pswitch_0
    const-string v0, "IPC_CMD_INDI"

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v0, "IPC_CMD_GET"

    goto :goto_0

    .line 242
    :pswitch_2
    const-string v0, "IPC_CMD_SET"

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMainCmd()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    return v0
.end method

.method public getSubCmd()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    return v0
.end method

.method public getcmdType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    return v0
.end method

.method public mainCmdStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    sparse-switch v0, :sswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 210
    :sswitch_0
    const-string v0, "IPC_GPRS_CMD"

    goto :goto_0

    .line 212
    :sswitch_1
    const-string v0, "IPC_NET_CMD"

    goto :goto_0

    .line 214
    :sswitch_2
    const-string v0, "IPC_IIL_CMD"

    goto :goto_0

    .line 216
    :sswitch_3
    const-string v0, "IPC_GEN_CMD"

    goto :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xd -> :sswitch_0
        0x70 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method protected makeHeader()Z
    .locals 8

    .prologue
    .line 116
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 117
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    .line 120
    .local v4, "result":Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 122
    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 123
    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 124
    iget v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mCmdType:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcHeader:[B

    .line 138
    return v4

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    const/4 v4, 0x0

    .line 135
    goto :goto_0

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 126
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v5, "[IPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed in makeHeader() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    const/4 v4, 0x0

    .line 130
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v2

    .line 132
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    const/4 v4, 0x0

    .line 135
    goto :goto_0

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 130
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 134
    :goto_1
    throw v5

    .line 131
    :catch_3
    move-exception v2

    .line 132
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public subCmdStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 250
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    sparse-switch v0, :sswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 252
    :sswitch_0
    const-string v0, "IPC_GPRS_DEFINE_PDP_CONTEXT"

    goto :goto_0

    .line 254
    :sswitch_1
    const-string v0, "IPC_GPRS_PDP_CONTEXT"

    goto :goto_0

    .line 256
    :sswitch_2
    const-string v0, "IPC_GPRS_IP_CONFIGURATION"

    goto :goto_0

    .line 258
    :sswitch_3
    const-string v0, "IPC_GPRS_CALL_STATUS"

    goto :goto_0

    .line 262
    :cond_0
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 263
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    sparse-switch v0, :sswitch_data_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :sswitch_4
    const-string v0, "IPC_NET_REGIST"

    goto :goto_0

    .line 267
    :sswitch_5
    const-string v0, "IPC_NET_DATA_HANDOVER"

    goto :goto_0

    .line 269
    :sswitch_6
    const-string v0, "IPC_NET_EPDG_HO_THRESHOLD"

    goto :goto_0

    .line 273
    :cond_1
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    .line 274
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_0
    const-string v0, "IPC_IIL_SSAC_INFO"

    goto :goto_0

    .line 280
    :cond_2
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_3

    .line 281
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    packed-switch v0, :pswitch_data_1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :pswitch_1
    const-string v0, "IPC_GEN_PHONE_RES"

    goto :goto_0

    .line 288
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x9 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch

    .line 263
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_4
        0xf -> :sswitch_5
        0x24 -> :sswitch_6
    .end sparse-switch

    .line 274
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public toByteArray()[B
    .locals 8

    .prologue
    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 144
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v4, 0x7

    .line 146
    .local v4, "totalLength":I
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->makeHeader()Z

    .line 152
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    .line 154
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    shr-int/lit8 v5, v4, 0x8

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 156
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcHeader:[B

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 157
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    if-eqz v5, :cond_1

    .line 158
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcBody:[B

    array-length v7, v7

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 160
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :goto_0
    iget-object v5, p0, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mIpcData:[B

    return-object v5

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 162
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v5, "[IPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed in createIpcMessage() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 166
    :catch_2
    move-exception v2

    .line 167
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 165
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 168
    :goto_1
    throw v5

    .line 166
    :catch_3
    move-exception v2

    .line 167
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
