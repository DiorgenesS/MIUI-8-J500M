.class Lcom/android/server/accessibility/ScreenMagnifier$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 168
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 171
    .local v2, "bounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    invoke-static {v7, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$000(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 175
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 176
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 177
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 178
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 179
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 180
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRectangleOnScreenRequested(IIII)V
    invoke-static {v7, v3, v6, v4, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$100(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V

    .line 181
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 184
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnUserContextChanged()V
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$200(Lcom/android/server/accessibility/ScreenMagnifier;)V

    goto :goto_0

    .line 187
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 188
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRotationChanged(I)V
    invoke-static {v7, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$300(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
