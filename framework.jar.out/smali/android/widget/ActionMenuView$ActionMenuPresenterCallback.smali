.class Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActionMenuView;
    .param p2, "x1"    # Landroid/widget/ActionMenuView$1;

    .prologue
    .line 887
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 890
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method
