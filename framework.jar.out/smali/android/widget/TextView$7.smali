.class Landroid/widget/TextView$7;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->updateTextServicesLocaleAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 10320
    iput-object p1, p0, Landroid/widget/TextView$7;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10323
    iget-object v0, p0, Landroid/widget/TextView$7;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->updateTextServicesLocaleLocked()V
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)V

    .line 10324
    return-void
.end method
