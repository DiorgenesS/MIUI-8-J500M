.class Landroid/widget/RemoteViews$SetOnLongClickDragable$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickDragable;)V
    .locals 0

    .prologue
    .line 3912
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 3915
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3948
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3917
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3920
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3924
    :catch_0
    move-exception v6

    .line 3925
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3931
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3934
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3938
    :catch_1
    move-exception v6

    .line 3939
    .restart local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3915
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
