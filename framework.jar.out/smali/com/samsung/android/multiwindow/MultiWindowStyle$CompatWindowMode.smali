.class Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatWindowMode"
.end annotation


# instance fields
.field mOption:I

.field mType:I

.field mZone:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "zone"    # I
    .param p4, "option"    # I

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mType:I

    .line 1131
    iput p3, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mZone:I

    .line 1132
    iput p4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    .line 1133
    return-void
.end method


# virtual methods
.method getCurrentMode()I
    .locals 2

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getZone()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getMode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getOption()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getMode()I
    .locals 2

    .prologue
    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "mode":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mType:I

    if-nez v1, :cond_0

    .line 1138
    const/high16 v0, 0x1000000

    .line 1142
    :goto_0
    return v0

    .line 1140
    :cond_0
    const/high16 v0, 0x2000000

    goto :goto_0
.end method

.method getOption()I
    .locals 2

    .prologue
    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, "option":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1179
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1181
    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1182
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 1184
    :cond_1
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1185
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 1187
    :cond_2
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1188
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 1190
    :cond_3
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1191
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1193
    :cond_4
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1194
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 1196
    :cond_5
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    .line 1197
    or-int/lit16 v0, v0, 0x1000

    .line 1199
    :cond_6
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mOption:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_7

    .line 1200
    or-int/lit16 v0, v0, 0x800

    .line 1202
    :cond_7
    return v0
.end method

.method getZone()I
    .locals 2

    .prologue
    .line 1146
    const/4 v0, 0x0

    .line 1147
    .local v0, "zone":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->mZone:I

    packed-switch v1, :pswitch_data_0

    .line 1170
    :pswitch_0
    const/4 v0, 0x0

    .line 1173
    :goto_0
    return v0

    .line 1149
    :pswitch_1
    const/16 v0, 0xf

    .line 1150
    goto :goto_0

    .line 1152
    :pswitch_2
    const/4 v0, 0x3

    .line 1153
    goto :goto_0

    .line 1155
    :pswitch_3
    const/16 v0, 0xc

    .line 1156
    goto :goto_0

    .line 1158
    :pswitch_4
    const/4 v0, 0x1

    .line 1159
    goto :goto_0

    .line 1161
    :pswitch_5
    const/4 v0, 0x2

    .line 1162
    goto :goto_0

    .line 1164
    :pswitch_6
    const/4 v0, 0x4

    .line 1165
    goto :goto_0

    .line 1167
    :pswitch_7
    const/16 v0, 0x8

    .line 1168
    goto :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
