.class Lcom/absolute/android/persistservice/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    iput p2, p0, Lcom/absolute/android/persistservice/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1229
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1231
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1232
    const/4 v1, 0x0

    .line 1233
    const/4 v0, 0x5

    .line 1235
    iget-object v2, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v2

    const-string v3, "Start sending PS_READY intents"

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 1237
    :goto_0
    iget v2, p0, Lcom/absolute/android/persistservice/a;->a:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/k;->b()I

    move-result v2

    if-nez v2, :cond_1

    .line 1242
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.absolute.action.PS_READY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1244
    iget-object v3, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1246
    const/16 v2, 0x3c

    if-lt v1, v2, :cond_0

    .line 1247
    const/16 v0, 0x14

    .line 1249
    :cond_0
    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1250
    add-int/2addr v1, v0

    .line 1251
    goto :goto_0

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v0

    const-string v1, "Stop sending PS_READY intents"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_1
    return-void

    .line 1255
    :catch_0
    move-exception v0

    goto :goto_1
.end method
