.class public Lcom/samsung/android/smartclip/SmartClipMetaUtils;
.super Ljava/lang/Object;
.source "SmartClipMetaUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartClipMetaUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v0, 0x0

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Landroid/view/View;->addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    goto :goto_0
.end method

.method public static clearAllMetaTag(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAllSmartClipTag()Z

    move-result v0

    goto :goto_0
.end method

.method public static extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v0, 0x0

    .line 197
    if-nez p0, :cond_0

    .line 198
    const-string v1, "SmartClipMetaUtils"

    const-string v2, "extractDefaultSmartClipData : The view is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return v0

    .line 202
    :cond_0
    if-nez p1, :cond_1

    .line 203
    const-string v1, "SmartClipMetaUtils"

    const-string v2, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_1
    if-nez p2, :cond_2

    .line 208
    const-string v1, "SmartClipMetaUtils"

    const-string v2, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    goto :goto_0
.end method

.method public static getChromeViewClassNameFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, "chromeViewName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 293
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 294
    const-string v3, "SmartClipMetaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChromeViewClassNameFromManifest : Could not get appInfo! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v3, 0x0

    .line 307
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 298
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 299
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 300
    const-string v3, "org.chromium.content.browser.SMART_CLIP_PROVIDER"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_1

    .line 302
    const-string v3, "SmartClipMetaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target chrome view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    move-object v3, v2

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 263
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 264
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 265
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 266
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 267
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 268
    return-object v1
.end method

.method public static getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 244
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 245
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 247
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 248
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 249
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 250
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 252
    return-object v1
.end method

.method public static isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 273
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    const/4 v0, 0x0

    .line 279
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 5
    .param p0, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "metaValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 127
    if-eqz v0, :cond_0

    const-string v3, "about:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    const-string v3, "email://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 132
    goto :goto_0
.end method

.method public static removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->removeSmartClipTag(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSmartClipDataExtractionListener(Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z

    .line 183
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setIntentMetaTag(Landroid/view/View;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    if-nez p0, :cond_0

    move v3, v4

    .line 168
    :goto_0
    return v3

    .line 141
    :cond_0
    move-object v2, p0

    .line 143
    .local v2, "rootView":Landroid/view/View;
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, p0

    .line 144
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 145
    .local v1, "parent":Landroid/view/View;
    if-nez v1, :cond_2

    .line 156
    .end local v1    # "parent":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->isValidIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 157
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->marshall(Landroid/content/Intent;)[B

    move-result-object v0

    .line 158
    .local v0, "intentData":[B
    if-eqz v0, :cond_3

    .line 159
    const-string v3, "app_launch_info"

    invoke-static {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z

    .line 160
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string v4, "app_launch_info"

    const-string v6, ""

    invoke-direct {v3, v4, v6, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move v3, v5

    .line 168
    goto :goto_0

    .line 148
    .end local v0    # "intentData":[B
    .restart local v1    # "parent":Landroid/view/View;
    :cond_2
    move-object v2, v1

    .line 150
    goto :goto_1

    .end local v1    # "parent":Landroid/view/View;
    .restart local v0    # "intentData":[B
    :cond_3
    move v3, v4

    .line 162
    goto :goto_0

    .end local v0    # "intentData":[B
    :cond_4
    move v3, v4

    .line 165
    goto :goto_0
.end method

.method public static setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v3, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 226
    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 227
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v2

    .line 228
    .local v2, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    .line 230
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropper;
    :goto_1
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropper;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    move-result v3

    goto :goto_0

    .line 228
    .end local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropper;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setSmartClipTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/View;->removeSmartClipTag(Ljava/lang/String;)Z

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v1

    goto :goto_0
.end method
