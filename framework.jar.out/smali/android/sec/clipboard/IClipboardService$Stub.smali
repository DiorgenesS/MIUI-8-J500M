.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardService"

.field static final TRANSACTION_AddClipboardFormatListener:I = 0x1

.field static final TRANSACTION_GetClipboardData:I = 0x4

.field static final TRANSACTION_GetClipboardFormatName:I = 0x3

.field static final TRANSACTION_IsShowUIClipboardData:I = 0x6

.field static final TRANSACTION_ObserverUpdate:I = 0x7

.field static final TRANSACTION_RegistClipboardWorkingFormUiInterface:I = 0x1a

.field static final TRANSACTION_RegistClipboardWorkingFormUiInterfaces:I = 0xb

.field static final TRANSACTION_RegisterClipboardFormat:I = 0x8

.field static final TRANSACTION_RemoveClipboardFormatListener:I = 0x9

.field static final TRANSACTION_SetClipboardData:I = 0xd

.field static final TRANSACTION_SetClipboardDataOriginalToEx:I = 0xe

.field static final TRANSACTION_SetClipboardDataWithoutSendingOrginalClipboard:I = 0x14

.field static final TRANSACTION_SetSyncClipboardData:I = 0x17

.field static final TRANSACTION_ShowUIClipboardData:I = 0xf

.field static final TRANSACTION_UpdateClipboardDB:I = 0x18

.field static final TRANSACTION_UpdateUIClipboardData:I = 0x10

.field static final TRANSACTION_callPasteMenuFromApp:I = 0x13

.field static final TRANSACTION_dismissUIDataDialog:I = 0x2

.field static final TRANSACTION_getClipedStrings:I = 0x11

.field static final TRANSACTION_getDataSize:I = 0x5

.field static final TRANSACTION_isEnabled:I = 0x15

.field static final TRANSACTION_iscalledPasteMenuFromApp:I = 0x12

.field static final TRANSACTION_setData:I = 0x16

.field static final TRANSACTION_showUIDataDialog:I = 0xa

.field static final TRANSACTION_unRegistClipboardWorkingFormUiInterface:I = 0x19

.field static final TRANSACTION_unRegistClipboardWorkingFormUiInterfaces:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->dismissUIDataDialog()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardFormatName(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 81
    .local v4, "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v4, p3, v7}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_5
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getDataSize()I

    move-result v4

    .line 95
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v4    # "_result":I
    :sswitch_6
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->IsShowUIClipboardData()Z

    move-result v4

    .line 103
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    sget-object v6, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 119
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_1

    .line 125
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_8
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegisterClipboardFormat(Ljava/lang/String;)I

    move-result v4

    .line 129
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_9
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 138
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v4

    .line 139
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->showUIDataDialog()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    :sswitch_b
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 155
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_c
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_d
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    .line 175
    sget-object v8, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 181
    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z

    move-result v4

    .line 185
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_2

    .line 191
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_e
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 196
    sget-object v8, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 201
    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v4

    .line 202
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_3

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_f
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 213
    .local v1, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_10
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 224
    .restart local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_11
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipedStrings(II)Ljava/util/List;

    move-result-object v5

    .line 236
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 242
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->iscalledPasteMenuFromApp()Z

    move-result v4

    .line 244
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->callPasteMenuFromApp(I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    :sswitch_14
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    .line 264
    sget-object v8, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 270
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z

    move-result v4

    .line 274
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v4, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 280
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_15
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isEnabled()Z

    move-result v4

    .line 282
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 288
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    .line 293
    sget-object v8, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 299
    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    move v2, v7

    .line 301
    .local v2, "_arg2":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    move-result v4

    .line 303
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v4, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_5

    :cond_f
    move v2, v6

    .line 299
    goto :goto_6

    .line 309
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_17
    const-string v8, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    .line 312
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 317
    .local v0, "_arg0":Ljava/lang/CharSequence;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->SetSyncClipboardData(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 318
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v4    # "_result":Z
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_7

    .line 324
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_18
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->UpdateClipboardDB(I)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":I
    :sswitch_19
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->unRegistClipboardWorkingFormUiInterface()V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 340
    :sswitch_1a
    const-string v6, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 343
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
