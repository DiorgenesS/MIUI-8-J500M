.class Lcom/android/server/im/AppFeature$1;
.super Landroid/os/Handler;
.source "AppFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/im/AppFeature;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/im/AppFeature;


# direct methods
.method constructor <init>(Lcom/android/server/im/AppFeature;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/im/AppFeature$1;->this$0:Lcom/android/server/im/AppFeature;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 238
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 239
    .local v6, "start":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "FEATURE_INFO"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/server/im/InjectionFeatureInfo;

    .line 243
    .local v2, "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    iget-object v9, p0, Lcom/android/server/im/AppFeature$1;->this$0:Lcom/android/server/im/AppFeature;

    # invokes: Lcom/android/server/im/AppFeature;->addToTargetSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V
    invoke-static {v9, v2}, Lcom/android/server/im/AppFeature;->access$000(Lcom/android/server/im/AppFeature;Lcom/android/server/im/InjectionFeatureInfo;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 247
    .local v0, "end":J
    goto :goto_0

    .line 249
    .end local v0    # "end":J
    .end local v2    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .end local v6    # "start":J
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "FEATURE_INFO"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 254
    .local v4, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 255
    .local v5, "packagename":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/im/AppFeature$1;->this$0:Lcom/android/server/im/AppFeature;

    invoke-virtual {v9, v5}, Lcom/android/server/im/AppFeature;->forceStopTarget(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "packagename":Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/im/AppFeature$1;->this$0:Lcom/android/server/im/AppFeature;

    iget-object v9, v9, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 262
    .local v8, "targetList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 263
    .restart local v5    # "packagename":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/im/AppFeature$1;->this$0:Lcom/android/server/im/AppFeature;

    invoke-virtual {v9, v5}, Lcom/android/server/im/AppFeature;->forceStopTarget(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
