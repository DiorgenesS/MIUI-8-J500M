.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .prologue
    .line 5121
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 5185
    sparse-switch p1, :sswitch_data_0

    .line 5226
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 5197
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5203
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 5218
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 5222
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 5185
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x44c -> :sswitch_1
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_1
        0x7dc -> :sswitch_1
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e8 -> :sswitch_2
        0x7f0 -> :sswitch_3
    .end sparse-switch
.end method

.method private populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 9
    .param p1, "window"    # Landroid/view/WindowInfo;

    .prologue
    .line 5152
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 5153
    .local v6, "windowId":I
    if-gez v6, :cond_1

    .line 5154
    const/4 v5, 0x0

    .line 5181
    :cond_0
    return-object v5

    .line 5157
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 5159
    .local v5, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 5160
    iget v7, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 5161
    iget v7, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 5162
    iget-boolean v7, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 5163
    iget-object v7, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5165
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v4

    .line 5166
    .local v4, "parentId":I
    if-ltz v4, :cond_2

    .line 5167
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 5170
    :cond_2
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 5171
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 5172
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 5173
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5174
    .local v2, "childToken":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v1

    .line 5175
    .local v1, "childId":I
    if-ltz v1, :cond_3

    .line 5176
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 5172
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5126
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 5128
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5129
    .local v4, "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 5130
    .local v2, "receivedWindowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 5131
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 5132
    .local v1, "receivedWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 5134
    .local v3, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_0

    .line 5135
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5144
    .end local v1    # "receivedWindow":Landroid/view/WindowInfo;
    .end local v3    # "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 5147
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 5148
    monitor-exit v6

    .line 5149
    return-void

    .line 5148
    .end local v0    # "i":I
    .end local v2    # "receivedWindowCount":I
    .end local v4    # "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
