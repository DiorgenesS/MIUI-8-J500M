.class public Landroid/widget/TextView$TextViewClipboardEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextViewClipboardEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Landroid/widget/TextView$TextViewClipboardEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 493
    move-object v0, p1

    .line 494
    .local v0, "dataInner":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/widget/TextView$TextViewClipboardEventListener;->this$0:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$TextViewClipboardEventListener$1;

    invoke-direct {v2, p0, v0}, Landroid/widget/TextView$TextViewClipboardEventListener$1;-><init>(Landroid/widget/TextView$TextViewClipboardEventListener;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method
