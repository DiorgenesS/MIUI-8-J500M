.class public Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
.super Ljava/lang/Object;
.source "CocktailBarStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CHANGE_ACTIVATE:I = 0x40

.field public static final FLAG_CHANGE_BACKGROUND_TYPE:I = 0x2

.field public static final FLAG_CHANGE_LOCK_STATE:I = 0x8

.field public static final FLAG_CHANGE_MODE:I = 0x10

.field public static final FLAG_CHANGE_POSITION:I = 0x4

.field public static final FLAG_CHANGE_SHOW_TIMEOUT:I = 0x20

.field public static final FLAG_CHANGE_VISIBILITY:I = 0x1

.field public static final FLAG_CHANGE_WINDOW_TYPE:I = 0x80


# instance fields
.field public activate:Z

.field public backgroundType:I

.field public changeFlag:I

.field public lockState:I

.field public mode:I

.field public position:I

.field public showTimeout:I

.field public visibility:I

.field public windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 106
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 113
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 120
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 141
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 148
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 156
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 157
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 106
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 113
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 120
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 127
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 134
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 141
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 148
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 184
    return-void

    :cond_0
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 106
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 113
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 120
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 141
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 148
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 165
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 166
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 167
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 168
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 169
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 170
    iget-boolean v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 171
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 172
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 194
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(Landroid/os/Parcel;)V

    .line 195
    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 211
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
