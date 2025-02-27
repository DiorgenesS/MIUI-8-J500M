.class Lmf/javax/xml/stream/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/stream/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    sput-boolean v3, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    .line 74
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 80
    sput-boolean v2, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    .line 86
    new-instance v4, Lmf/javax/xml/stream/SecuritySupport;

    invoke-direct {v4}, Lmf/javax/xml/stream/SecuritySupport;-><init>()V

    sput-object v4, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    .line 93
    :try_start_0
    sget-object v4, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    const-string/jumbo v5, "jaxp.debug"

    invoke-virtual {v4, v5}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    sput-boolean v2, Lmf/javax/xml/stream/FactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 95
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "se":Ljava/lang/SecurityException;
    sput-boolean v3, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-boolean v0, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "find factoryId ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 222
    :try_start_0
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7, p0}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "systemProp":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found system property, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 225
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 282
    .end local v6    # "systemProp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 228
    :catch_0
    move-exception v5

    .line 229
    .local v5, "se":Ljava/lang/SecurityException;
    sget-boolean v7, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 234
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_1
    const/4 v0, 0x0

    .line 236
    .local v0, "configFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 237
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_1
    sget-boolean v7, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    if-eqz v7, :cond_3

    .line 238
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :try_start_2
    sget-boolean v7, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    if-eqz v7, :cond_2

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 241
    const-string/jumbo v9, "lib"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "stax.properties"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 240
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "f":Ljava/io/File;
    const/4 v7, 0x0

    sput-boolean v7, Lmf/javax/xml/stream/FactoryFinder;->firstTime:Z

    .line 244
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7, v2}, Lmf/javax/xml/stream/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Read properties file "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 246
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v9, v2}, Lmf/javax/xml/stream/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 238
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :cond_3
    :try_start_3
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v7, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    if-eqz v3, :cond_5

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 264
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 249
    .restart local v2    # "f":Ljava/io/File;
    :cond_4
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/stream/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 250
    const-string/jumbo v9, "lib"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "jaxp.properties"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 249
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v2    # "f":Ljava/io/File;
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v7, v2}, Lmf/javax/xml/stream/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Read properties file "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 254
    sget-object v7, Lmf/javax/xml/stream/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v9, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v9, v2}, Lmf/javax/xml/stream/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 238
    .end local v2    # "f":Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 267
    :catch_1
    move-exception v1

    .line 268
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v7, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-static {p0}, Lmf/javax/xml/stream/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 273
    .local v4, "provider":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 276
    if-nez p2, :cond_6

    .line 277
    new-instance v7, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Provider for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cannot be found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-direct {v7, v8, v12}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 281
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loaded from fallback value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 282
    invoke-static {p2, p1, v11}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "META-INF/services/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 297
    .local v3, "is":Ljava/io/InputStream;
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8}, Lmf/javax/xml/stream/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 298
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    .line 299
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8, v0, v5}, Lmf/javax/xml/stream/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 302
    if-nez v3, :cond_0

    .line 303
    const-class v8, Lmf/javax/xml/stream/FactoryFinder;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 304
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8, v0, v5}, Lmf/javax/xml/stream/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 312
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 351
    :cond_1
    :goto_1
    return-object v7

    .line 308
    :cond_2
    const-class v8, Lmf/javax/xml/stream/FactoryFinder;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 309
    sget-object v8, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v8, v0, v5}, Lmf/javax/xml/stream/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 317
    :cond_3
    sget-boolean v8, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v8, :cond_4

    .line 318
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found jar resource="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using ClassLoader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 323
    :cond_4
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_2
    const/4 v2, 0x0

    .line 333
    .local v2, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    if-eqz v2, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in resource, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 347
    const/4 v7, 0x0

    invoke-static {v2, v0, v7}, Lmf/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 325
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_2

    .line 335
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 337
    .local v6, "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 122
    :try_start_0
    sget-object v1, Lmf/javax/xml/stream/FactoryFinder;->ss:Lmf/javax/xml/stream/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/stream/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_2

    .line 137
    const/4 v1, 0x1

    const-class v2, Lmf/javax/xml/stream/FactoryFinder;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .end local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v1

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 140
    .restart local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_2
    throw v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/javax/xml/stream/FactoryFinder;->getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 163
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "instance":Ljava/lang/Object;
    sget-boolean v3, Lmf/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "created new instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmf/javax/xml/stream/FactoryFinder;->dPrint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :cond_0
    return-object v0

    .line 170
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 174
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 175
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
