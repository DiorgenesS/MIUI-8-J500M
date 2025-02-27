.class public Lmf/javax/xml/transform/TransformerException;
.super Ljava/lang/Exception;
.source "TransformerException.java"


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Lmf/javax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 153
    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 154
    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    .end local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 186
    iput-object p2, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lmf/javax/xml/transform/SourceLocator;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 205
    iput-object p2, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lmf/javax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 221
    iput-object p3, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 222
    iput-object p2, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    .line 168
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    .line 274
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v2, "sbuffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lmf/javax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "systemID":Ljava/lang/String;
    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lmf/javax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 277
    .local v1, "line":I
    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lmf/javax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 279
    .local v0, "column":I
    if-eqz v3, :cond_0

    .line 280
    const-string v4, "; SystemID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    :cond_0
    if-eqz v1, :cond_1

    .line 285
    const-string v4, "; Line#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 289
    :cond_1
    if-eqz v0, :cond_2

    .line 290
    const-string v4, "; Column#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 294
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v2    # "sbuffer":Ljava/lang/StringBuffer;
    .end local v3    # "systemID":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLocator()Lmf/javax/xml/transform/SourceLocator;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 234
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v3, "sbuffer":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_0
    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lmf/javax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "systemID":Ljava/lang/String;
    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lmf/javax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 244
    .local v1, "line":I
    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lmf/javax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 246
    .local v0, "column":I
    if-eqz v4, :cond_1

    .line 247
    const-string v5, "; SystemID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_1
    if-eqz v1, :cond_2

    .line 252
    const-string v5, "; Line#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    :cond_2
    if-eqz v0, :cond_3

    .line 257
    const-string v5, "; Column#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 262
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v4    # "systemID":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t overwrite cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_0
    if-ne p1, p0, :cond_1

    .line 135
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    const-string v1, "Self-causation not permitted"

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iput-object p1, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 307
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 316
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 317
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance p1, Ljava/io/PrintWriter;

    .end local p1    # "s":Ljava/io/PrintWriter;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v11, 0x1

    invoke-direct {p1, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 332
    .restart local p1    # "s":Ljava/io/PrintWriter;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmf/javax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "locInfo":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 335
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 341
    .end local v6    # "locInfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lmf/javax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 343
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v10, 0xa

    if-ge v3, v10, :cond_2

    if-nez v2, :cond_3

    .line 387
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 388
    return-void

    .line 344
    :cond_3
    const-string v10, "---------"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    :try_start_1
    instance-of v10, v2, Lmf/javax/xml/transform/TransformerException;

    if-eqz v10, :cond_4

    .line 349
    move-object v0, v2

    check-cast v0, Lmf/javax/xml/transform/TransformerException;

    move-object v10, v0

    .line 350
    invoke-virtual {v10}, Lmf/javax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v6

    .line 352
    .restart local v6    # "locInfo":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 353
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .end local v6    # "locInfo":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "getException"

    .line 365
    const/4 v12, 0x0

    .line 364
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 367
    .local v7, "meth":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_5

    .line 368
    move-object v9, v2

    .line 370
    .local v9, "prev":Ljava/lang/Throwable;
    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "exception":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 372
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-eq v9, v2, :cond_2

    .line 343
    .end local v7    # "meth":Ljava/lang/reflect/Method;
    .end local v9    # "prev":Ljava/lang/Throwable;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Throwable;
    const-string v10, "Could not print stack trace..."

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 376
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v7    # "meth":Ljava/lang/reflect/Method;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 378
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v7    # "meth":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 379
    .local v5, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v2, 0x0

    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_3

    .line 380
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v5    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 381
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    const/4 v2, 0x0

    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_3

    .line 382
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v8

    .line 383
    .local v8, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_3

    .line 339
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v8    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v10

    goto :goto_0
.end method

.method public setLocator(Lmf/javax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "location"    # Lmf/javax/xml/transform/SourceLocator;

    .prologue
    .line 76
    iput-object p1, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    .line 77
    return-void
.end method
