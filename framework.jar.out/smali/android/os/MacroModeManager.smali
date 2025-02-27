.class public Landroid/os/MacroModeManager;
.super Ljava/lang/Object;
.source "MacroModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MacroModeManager$MacroModeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final MACRO_THRESHOLD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MacroModeManager"

.field private static final bGameTunerEnabled:Z


# instance fields
.field private mMacroChannel:Landroid/view/InputChannel;

.field private mMacroCounter:Ljava/lang/Integer;

.field private mMacroHandler:Landroid/os/Handler;

.field private mMacroJSON:Lorg/json/JSONObject;

.field private mMacroMode:Landroid/os/MacroModeManager$MacroModeInputEventReceiver;

.field private mRecordingState:Z

.field private mSpecificEvent:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/os/MacroModeManager;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/MacroModeManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Landroid/os/MacroModeManager;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Landroid/os/MacroModeManager;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/MacroModeManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Landroid/os/MacroModeManager;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$200(Landroid/os/MacroModeManager;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Landroid/os/MacroModeManager;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/MacroModeManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Landroid/os/MacroModeManager;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Landroid/os/MacroModeManager;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/os/MacroModeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/os/MacroModeManager;->flushRecording(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/os/MacroModeManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/MacroModeManager;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/os/MacroModeManager;->mRecordingState:Z

    return v0
.end method

.method private disposeMacroChannel()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    .line 251
    :cond_0
    return-void
.end method

.method private flushRecording(Z)V
    .locals 6
    .param p1, "stop"    # Z

    .prologue
    .line 69
    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 73
    :try_start_0
    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 74
    .local v2, "macroMessage":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v1, "macroBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "macroModeEvents"

    iget-object v4, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v3, "stopRecording"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    .line 78
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 79
    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1    # "macroBundle":Landroid/os/Bundle;
    .end local v2    # "macroMessage":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private final validateNotAppThread()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public sendPointerAsync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/MacroModeManager;->validateNotAppThread()V

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 57
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 59
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 61
    return-void
.end method

.method public setRecordingState(ZLandroid/os/Handler;)V
    .locals 0
    .param p1, "isRecording"    # Z
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 240
    return-void
.end method
