.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 473
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 474
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 478
    return-void
.end method
