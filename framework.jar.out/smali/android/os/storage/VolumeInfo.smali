.class public Landroid/os/storage/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.os.storage.action.VOLUME_STATE_CHANGED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final DOCUMENT_ROOT_PRIMARY_EMULATED:Ljava/lang/String; = "primary"

.field public static final EXTRA_VOLUME_ID:Ljava/lang/String; = "android.os.storage.extra.VOLUME_ID"

.field public static final EXTRA_VOLUME_STATE:Ljava/lang/String; = "android.os.storage.extra.VOLUME_STATE"

.field public static final ID_EMULATED_INTERNAL:Ljava/lang/String; = "emulated"

.field public static final ID_PRIVATE_INTERNAL:Ljava/lang/String; = "private"

.field public static final MOUNT_FLAG_PRIMARY:I = 0x1

.field public static final MOUNT_FLAG_VISIBLE:I = 0x2

.field public static final STATE_BAD_REMOVAL:I = 0x8

.field public static final STATE_CHECKING:I = 0x1

.field public static final STATE_EJECTING:I = 0x5

.field public static final STATE_FORMATTING:I = 0x4

.field public static final STATE_HIDDEN_MOUNT:I = 0x9

.field public static final STATE_MOUNTED:I = 0x2

.field public static final STATE_MOUNTED_READ_ONLY:I = 0x3

.field public static final STATE_MOVE_MOUNT:I = 0xa

.field public static final STATE_REMOVED:I = 0x7

.field public static final STATE_UNMOUNTABLE:I = 0x6

.field public static final STATE_UNMOUNTED:I = 0x0

.field public static final TYPE_ASEC:I = 0x3

.field public static final TYPE_EMULATED:I = 0x2

.field public static final TYPE_OBB:I = 0x4

.field public static final TYPE_PRIVATE:I = 0x1

.field public static final TYPE_PUBLIC:I

.field private static final sDescriptionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnvironmentToBroadcast:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStateToDescrip:Landroid/util/SparseIntArray;

.field private static sStateToEnvironment:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final disk:Landroid/os/storage/DiskInfo;

.field public fsLabel:Ljava/lang/String;

.field public fsType:Ljava/lang/String;

.field public fsUuid:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public internalPath:Ljava/lang/String;

.field public mountFlags:I

.field public mountUserId:I

.field public final partGuid:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public state:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x104041e

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    .line 115
    new-instance v0, Landroid/os/storage/VolumeInfo$1;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    .line 131
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string/jumbo v1, "unmounted"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string v1, "checking"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "unmounted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "ejecting"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "unmountable"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "bad_removal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "HiddenMount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "MoveMount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string/jumbo v1, "unmounted"

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "checking"

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string/jumbo v1, "mounted"

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string/jumbo v1, "mounted_ro"

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "ejecting"

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string/jumbo v1, "unmountable"

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string/jumbo v1, "removed"

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "bad_removal"

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104041c

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104041d

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104041f

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x1040424

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x1040423

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x1040421

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x104041b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x1040420

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 537
    new-instance v0, Landroid/os/storage/VolumeInfo$2;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$2;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 174
    iput v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 197
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 206
    const-string v0, "VolumeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeInfo from Parcel: id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "disk"    # Landroid/os/storage/DiskInfo;
    .param p4, "partGuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 174
    iput v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 182
    const-string v0, "VolumeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeInfo: id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 184
    iput p2, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 185
    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 186
    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public static buildStableMtpStorageId(Ljava/lang/String;)I
    .locals 5
    .param p0, "fsUuid"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x10000

    .line 442
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/4 v2, 0x0

    .line 455
    :goto_0
    return v2

    .line 445
    :cond_0
    const/4 v0, 0x0

    .line 446
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 447
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    :cond_1
    shl-int/lit8 v2, v0, 0x10

    xor-int/2addr v2, v0

    and-int v0, v2, v4

    .line 452
    if-nez v0, :cond_2

    const/high16 v0, 0x20000

    .line 453
    :cond_2
    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_3

    const/high16 v0, 0x20000

    .line 454
    :cond_3
    if-ne v0, v4, :cond_4

    const/high16 v0, -0x20000

    .line 455
    :cond_4
    or-int/lit8 v2, v0, 0x1

    goto :goto_0
.end method

.method public static getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "envState"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBroadcastForState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 223
    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescriptionComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getEnvironmentForState(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 210
    sget-object v1, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "envState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 214
    .end local v0    # "envState":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "envState":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public buildBrowseIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 469
    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_0

    .line 470
    const-string v2, "com.android.externalstorage.documents"

    iget-object v3, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 478
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 481
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v0

    .line 471
    :cond_0
    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    const-string v2, "com.android.externalstorage.documents"

    const-string/jumbo v3, "primary"

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 475
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "reportUnmounted"    # Z

    .prologue
    .line 354
    const-class v2, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageManager;

    .line 358
    .local v22, "storage":Landroid/os/storage/StorageManager;
    const/16 v20, 0x0

    .line 359
    .local v20, "allowMassStorage":Z
    if-eqz p3, :cond_6

    const-string/jumbo v17, "unmounted"

    .line 362
    .local v17, "envState":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v5

    .line 363
    .local v5, "userPath":Ljava/io/File;
    if-nez v5, :cond_0

    .line 364
    new-instance v5, Ljava/io/File;

    .end local v5    # "userPath":Ljava/io/File;
    const-string v2, "/dev/null"

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .restart local v5    # "userPath":Ljava/io/File;
    :cond_0
    const/4 v6, 0x0

    .line 368
    .local v6, "description":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 369
    .local v10, "mtpReserveSize":J
    const-wide/16 v13, 0x0

    .line 370
    .local v13, "maxFileSize":J
    const/4 v4, 0x0

    .line 372
    .local v4, "mtpStorageId":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 373
    const/4 v9, 0x1

    .line 375
    .local v9, "emulated":Z
    invoke-virtual/range {v22 .. v23}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v21

    .line 376
    .local v21, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v21, :cond_1

    .line 377
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 380
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    const v4, 0x10001

    .line 384
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    .line 386
    const-string v2, "emulated"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 387
    const/4 v8, 0x0

    .line 417
    .end local v21    # "privateVol":Landroid/os/storage/VolumeInfo;
    .local v8, "removable":Z
    :cond_3
    :goto_1
    const-string/jumbo v18, "undefined"

    .line 418
    .local v18, "diskType":Ljava/lang/String;
    const/16 v19, 0x0

    .line 419
    .local v19, "bAsec":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_d

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 421
    const-string/jumbo v18, "sd"

    .line 422
    const/16 v19, 0x1

    .line 429
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    const-string/jumbo v2, "privatemode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 430
    const-string/jumbo v18, "private"

    .line 436
    :cond_5
    new-instance v2, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v7

    const/4 v12, 0x0

    new-instance v15, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    .line 359
    .end local v4    # "mtpStorageId":I
    .end local v5    # "userPath":Ljava/io/File;
    .end local v6    # "description":Ljava/lang/String;
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v10    # "mtpReserveSize":J
    .end local v13    # "maxFileSize":J
    .end local v17    # "envState":Ljava/lang/String;
    .end local v18    # "diskType":Ljava/lang/String;
    .end local v19    # "bAsec":Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 389
    .restart local v4    # "mtpStorageId":I
    .restart local v5    # "userPath":Ljava/io/File;
    .restart local v6    # "description":Ljava/lang/String;
    .restart local v9    # "emulated":Z
    .restart local v10    # "mtpReserveSize":J
    .restart local v13    # "maxFileSize":J
    .restart local v17    # "envState":Ljava/lang/String;
    .restart local v21    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_7
    const/4 v8, 0x1

    .restart local v8    # "removable":Z
    goto :goto_1

    .line 392
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v21    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_b

    .line 393
    const/4 v9, 0x0

    .line 394
    .restart local v9    # "emulated":Z
    const/4 v8, 0x1

    .line 396
    .restart local v8    # "removable":Z
    invoke-virtual/range {v22 .. v23}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 398
    if-eqz v6, :cond_9

    const-string/jumbo v2, "privatemode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 399
    const v4, 0x10002

    .line 408
    :goto_3
    const-string/jumbo v2, "vfat"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    const-wide v13, 0xffffffffL

    goto :goto_1

    .line 400
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 401
    const v4, 0x10001

    goto :goto_3

    .line 405
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->buildStableMtpStorageId(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 413
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected volume type "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    .restart local v8    # "removable":Z
    .restart local v9    # "emulated":Z
    .restart local v18    # "diskType":Ljava/lang/String;
    .restart local v19    # "bAsec":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    const-string/jumbo v18, "usb"

    goto/16 :goto_2

    .line 427
    :cond_d
    const-string v18, "fuse"

    goto/16 :goto_2
.end method

.method public clone()Landroid/os/storage/VolumeInfo;
    .locals 2

    .prologue
    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 515
    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 516
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 517
    sget-object v1, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 494
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TYPE_"

    iget v3, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    const-string v0, "diskId"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    const-string/jumbo v0, "partGuid"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    const-string/jumbo v0, "mountFlags"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "MOUNT_FLAG_"

    iget v3, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    const-string/jumbo v0, "mountUserId"

    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    const-string/jumbo v0, "state"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "STATE_"

    iget v3, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 501
    const-string v0, "fsType"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string v0, "fsUuid"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const-string v0, "fsLabel"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 505
    const-string/jumbo v0, "path"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    const-string/jumbo v0, "internalPath"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 509
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 525
    instance-of v0, p1, Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 528
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "private"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "emulated"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104049d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 265
    :cond_1
    const-string/jumbo v0, "privatemode"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const-string/jumbo v0, "privatemode"

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    return-object v0
.end method

.method public getDiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalPathForUser(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 345
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const-string v2, "/storage/"

    const-string v3, "/mnt/media_rw/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getMountUserId()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v0
.end method

.method public getPath()Ljava/io/File;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPathForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :cond_1
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_2

    .line 332
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 334
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public getStateDescription()I
    .locals 3

    .prologue
    .line 251
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMountedReadable()Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMountedWritable()Z
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryPhysical()Z
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleForRead(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 296
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_2

    .line 297
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-eq v1, p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    goto :goto_0

    .line 303
    :cond_2
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisibleForWrite(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 311
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v0, p1, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 314
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 486
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 487
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 556
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/DiskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 564
    :goto_0
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
