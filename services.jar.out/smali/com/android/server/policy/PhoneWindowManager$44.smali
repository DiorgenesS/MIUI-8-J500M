.class Lcom/android/server/policy/PhoneWindowManager$44;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 11974
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v3, 0x1040384

    const v2, 0x1040383

    const/4 v7, 0x0

    .line 11976
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    if-nez v4, :cond_0

    .line 11978
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11980
    const v1, 0x10304bb

    .line 11988
    .local v1, "theme":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mCustomDialog:Z

    if-eqz v4, :cond_4

    .line 11989
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v5, Lcom/samsung/android/app/CustomBootMsgDialog;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-direct {v5, v6, v2}, Lcom/samsung/android/app/CustomBootMsgDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, v4, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    .line 11992
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/CustomBootMsgDialog;->show()V

    .line 12038
    .end local v1    # "theme":I
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCustomDialog:Z

    if-eqz v2, :cond_6

    .line 12039
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$44;->val$msg:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/CustomBootMsgDialog;->setProgress(Ljava/lang/String;)V

    .line 12044
    :goto_3
    return-void

    .line 11981
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.television"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11983
    const v1, 0x103049a

    .restart local v1    # "theme":I
    goto :goto_0

    .line 11985
    .end local v1    # "theme":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "theme":I
    goto :goto_0

    :cond_3
    move v2, v3

    .line 11989
    goto :goto_1

    .line 11994
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$44$1;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v1}, Lcom/android/server/policy/PhoneWindowManager$44$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$44;Landroid/content/Context;I)V

    iput-object v5, v4, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 12017
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12018
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 12022
    :goto_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 12023
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 12024
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 12026
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 12029
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 12030
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 12031
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 12032
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12033
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 12034
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_2

    .line 12020
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_4

    .line 12041
    .end local v1    # "theme":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$44;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$44;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
