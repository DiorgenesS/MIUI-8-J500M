.class Lcom/android/internal/app/AlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1228
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1229
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1232
    :cond_0
    return-void
.end method
