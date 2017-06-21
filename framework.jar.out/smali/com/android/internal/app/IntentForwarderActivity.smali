.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final TARGET_USER_ID_DEFAULT_VALUE:I

.field private targetUserIdForKnox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, "com.android.internal.app.ForwardIntentToUserOwner"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    .line 65
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    return-void
.end method

.method private getManagedProfile()I
    .locals 7

    .prologue
    .line 365
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 366
    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 368
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 372
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v4

    .line 370
    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v4, -0x2710

    goto :goto_0
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    .prologue
    .line 257
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 261
    .local v5, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    .line 262
    .local v0, "callingUserId":I
    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez p2, :cond_3

    .line 264
    const/4 v4, 0x0

    .line 266
    .local v4, "intentAction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 267
    .local v6, "personaManager":Landroid/os/PersonaManager;
    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaPolicyManager;

    .line 269
    .local v7, "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 270
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 271
    .local v3, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 276
    .end local v3    # "innerIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_3

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 279
    :cond_0
    invoke-virtual {v7, v0}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1040b6d

    invoke-virtual {p0, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 283
    const/4 v9, 0x0

    .line 353
    .end local v4    # "intentAction":Ljava/lang/String;
    .end local v6    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :goto_1
    return v9

    .line 274
    .restart local v4    # "intentAction":Ljava/lang/String;
    .restart local v6    # "personaManager":Landroid/os/PersonaManager;
    .restart local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 285
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 291
    .end local v4    # "intentAction":Ljava/lang/String;
    .end local v6    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_3
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .line 295
    .restart local v6    # "personaManager":Landroid/os/PersonaManager;
    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaPolicyManager;

    .line 297
    .restart local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v6, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v1

    .line 299
    .local v1, "curState":Landroid/content/pm/PersonaState;
    invoke-virtual {v6, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

    if-eq v1, v9, :cond_4

    sget-object v9, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    if-ne v1, v9, :cond_5

    .line 305
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1040b6d

    invoke-virtual {p0, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 306
    const/4 v9, 0x0

    goto :goto_1

    .line 309
    :cond_5
    const/4 v4, 0x0

    .line 311
    .restart local v4    # "intentAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 312
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 313
    .restart local v3    # "innerIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 318
    .end local v3    # "innerIntent":Landroid/content/Intent;
    :goto_2
    if-eqz v4, :cond_9

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 320
    :cond_6
    invoke-virtual {v7, p2}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1040b6d

    invoke-virtual {p0, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 324
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 316
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 326
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 330
    .end local v1    # "curState":Landroid/content/pm/PersonaState;
    .end local v4    # "intentAction":Ljava/lang/String;
    .end local v6    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 332
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 333
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 337
    :cond_a
    const-string v9, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 338
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 342
    :cond_b
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    .line 344
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 349
    :cond_d
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v9

    invoke-interface {v5, p1, v8, v9, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto/16 :goto_1

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "PackageManagerService is dead?"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 79
    .local v19, "intentReceived":Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "className":Ljava/lang/String;
    :try_start_0
    new-instance v26, Landroid/content/Intent;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 87
    .local v26, "tempIntent":Landroid/content/Intent;
    const-string v30, "crossProfileTargetUserId"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    .end local v26    # "tempIntent":Landroid/content/Intent;
    :goto_0
    sget-object v30, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 97
    const v29, 0x104043f

    .line 98
    .local v29, "userMessageId":I
    const/16 v25, 0x0

    .line 112
    .local v25, "targetUserId":I
    :goto_1
    const/16 v30, -0x2710

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 254
    :goto_2
    return-void

    .line 99
    .end local v25    # "targetUserId":I
    .end local v29    # "userMessageId":I
    :cond_0
    sget-object v30, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 100
    const v29, 0x1040440

    .line 102
    .restart local v29    # "userMessageId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v25, v0

    .restart local v25    # "targetUserId":I
    goto :goto_1

    .line 106
    .end local v25    # "targetUserId":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v25

    .restart local v25    # "targetUserId":I
    goto :goto_1

    .line 108
    .end local v25    # "targetUserId":I
    .end local v29    # "userMessageId":I
    :cond_2
    sget-object v30, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-class v32, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " cannot be called directly"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 v29, -0x1

    .line 110
    .restart local v29    # "userMessageId":I
    const/16 v25, -0x2710

    .restart local v25    # "targetUserId":I
    goto :goto_1

    .line 117
    :cond_3
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 118
    .local v22, "newIntent":Landroid/content/Intent;
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 120
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v30, 0x3000000

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v11

    .line 125
    .local v11, "callingUserId":I
    const/16 v17, 0x0

    .line 126
    .local v17, "forwardfromKnox":Z
    const/16 v30, 0x64

    move/from16 v0, v30

    if-lt v11, v0, :cond_4

    .line 127
    const/16 v17, 0x1

    .line 131
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 132
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    const-string v31, "android.intent.action.CHOOSER"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 133
    const-string v30, "android.intent.extra.INTENT"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 134
    .local v18, "innerIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 139
    .end local v18    # "innerIntent":Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const/high16 v31, 0x10000

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v31

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    .line 144
    .local v23, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v23, :cond_5

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    const-string v30, "android"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    const-class v30, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_b

    const-class v30, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_b

    :cond_5
    const/16 v24, 0x1

    .line 151
    .local v24, "shouldShowDisclosure":Z
    :goto_4
    :try_start_1
    invoke-static {v11}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v30

    if-eqz v30, :cond_c

    if-nez v25, :cond_c

    .line 152
    if-eqz v22, :cond_c

    const-string v30, "file"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const-string v30, "isFromBBCProvider"

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-nez v30, :cond_c

    .line 153
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v10, "bbcIntent":Landroid/content/Intent;
    const-string v30, "base_intent"

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    const-string v30, "com.samsung.android.bbc.fileprovider"

    const-string v31, "com.samsung.android.bbc.fileprovider.IntentForwardActivity"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v10, v1, v2, v11}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 195
    .end local v10    # "bbcIntent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .line 196
    .local v15, "e":Ljava/lang/RuntimeException;
    const/16 v21, -0x1

    .line 197
    .local v21, "launchedFromUid":I
    const-string v20, "?"

    .line 199
    .local v20, "launchedFromPackage":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v21

    .line 201
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    .line 206
    :goto_5
    sget-object v30, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to launch as UID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", while running in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "launchedFromPackage":Ljava/lang/String;
    .end local v21    # "launchedFromUid":I
    :goto_6
    const-string/jumbo v30, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/UserManager;

    .line 214
    .local v28, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v27

    .line 215
    .local v27, "ui":Landroid/content/pm/UserInfo;
    if-eqz v27, :cond_6

    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 216
    const/16 v24, 0x0

    .line 219
    :cond_6
    const/16 v16, 0x0

    .line 220
    .local v16, "forwardfromDual":Z
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 221
    .local v14, "dualUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isDualProfile()Z

    move-result v16

    .line 222
    sget-object v30, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "From DualProfile  :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " calling userid :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to user "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v6, 0x0

    .line 226
    .local v6, "IsHomeFromKEA":Z
    invoke-static {v11}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v30

    if-eqz v30, :cond_7

    if-nez v25, :cond_7

    .line 227
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    const-string v31, "android.intent.action.MAIN"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v30

    if-eqz v30, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v30

    const-string v31, "android.intent.category.HOME"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 228
    const/4 v6, 0x1

    .line 233
    :cond_7
    if-eqz v17, :cond_12

    if-nez v6, :cond_12

    .line 234
    const-string v30, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 235
    .local v9, "am":Landroid/app/ActivityManager;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v30

    if-nez v30, :cond_9

    .line 236
    invoke-static/range {p0 .. p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_8

    sget-object v30, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v30 .. v30}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 238
    :cond_8
    new-instance v30, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const v32, 0x103012b

    invoke-direct/range {v30 .. v32}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v31, 0x1040a0e

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    .line 253
    .end local v6    # "IsHomeFromKEA":Z
    .end local v9    # "am":Landroid/app/ActivityManager;
    .end local v14    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "forwardfromDual":Z
    .end local v23    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "shouldShowDisclosure":Z
    .end local v27    # "ui":Landroid/content/pm/UserInfo;
    .end local v28    # "userManager":Landroid/os/UserManager;
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto/16 :goto_2

    .line 136
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto/16 :goto_3

    .line 144
    .restart local v23    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 163
    .restart local v24    # "shouldShowDisclosure":Z
    :cond_c
    if-eqz v22, :cond_11

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    const-string v31, "android.intent.action.SEND"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_d

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    const-string v31, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 165
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x1040365

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 166
    .local v5, "ChooserIntent":Landroid/content/Intent;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v13, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v17, :cond_10

    if-nez v25, :cond_10

    .line 169
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.knox.switcher"

    const-string v32, "com.sec.knox.switcher.SwitchB2bActivityI"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.knox.switcher"

    const-string v32, "com.sec.knox.switcher.SwitchB2bActivityII"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.knox.switcher"

    const-string v32, "com.sec.knox.switcher.SwitchAliasActivity"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.knox.knoxb2cswitcher"

    const-string v32, "com.sec.knox.knoxb2cswitcher.SwitchB2cActivity"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.samsung.android.contacts"

    const-string v32, "com.samsung.contacts.picker.CloudShareRedirectActivity"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_e
    :goto_8
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.knox.bluetooth"

    const-string v32, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v30, "extra_chooser_droplist"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 182
    if-nez v11, :cond_f

    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 184
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v7, v0, [Landroid/content/Intent;

    .line 185
    .local v7, "addIntents":[Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 186
    .local v8, "alternativeIntent":Landroid/content/Intent;
    const-string v30, "com.sec.knox.action.storeData"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const v30, 0x3000001

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const-string v30, "crossProfileTargetUserId"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const/16 v30, 0x0

    aput-object v8, v7, v30

    .line 190
    const-string v30, "android.intent.extra.ALTERNATE_INTENTS"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    .end local v7    # "addIntents":[Landroid/content/Intent;
    .end local v8    # "alternativeIntent":Landroid/content/Intent;
    :cond_f
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto/16 :goto_6

    .line 175
    :cond_10
    if-nez v11, :cond_e

    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 177
    new-instance v30, Landroid/content/ComponentName;

    const-string v31, "com.sec.knox.switcher"

    const-string v32, "com.sec.knox.switcher.B2CShareViaActivity"

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 194
    .end local v5    # "ChooserIntent":Landroid/content/Intent;
    .end local v13    # "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_11
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 246
    .restart local v6    # "IsHomeFromKEA":Z
    .restart local v14    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "forwardfromDual":Z
    .restart local v27    # "ui":Landroid/content/pm/UserInfo;
    .restart local v28    # "userManager":Landroid/os/UserManager;
    :cond_12
    if-eqz v24, :cond_9

    if-nez v6, :cond_9

    if-nez v16, :cond_9

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 250
    .end local v6    # "IsHomeFromKEA":Z
    .end local v14    # "dualUserInfo":Landroid/content/pm/UserInfo;
    .end local v16    # "forwardfromDual":Z
    .end local v23    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "shouldShowDisclosure":Z
    .end local v27    # "ui":Landroid/content/pm/UserInfo;
    .end local v28    # "userManager":Landroid/os/UserManager;
    :cond_13
    sget-object v30, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "the intent: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "cannot be forwarded from user "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to user "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 203
    .restart local v15    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "launchedFromPackage":Ljava/lang/String;
    .restart local v21    # "launchedFromUid":I
    .restart local v23    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v30

    goto/16 :goto_5

    .line 88
    .end local v11    # "callingUserId":I
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "forwardfromKnox":Z
    .end local v20    # "launchedFromPackage":Ljava/lang/String;
    .end local v21    # "launchedFromUid":I
    .end local v22    # "newIntent":Landroid/content/Intent;
    .end local v23    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "shouldShowDisclosure":Z
    .end local v25    # "targetUserId":I
    .end local v29    # "userMessageId":I
    :catch_2
    move-exception v30

    goto/16 :goto_0
.end method
