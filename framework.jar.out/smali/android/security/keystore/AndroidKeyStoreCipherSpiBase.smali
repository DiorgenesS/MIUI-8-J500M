.class abstract Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mAdditionalAuthenticationDataStreamerClosed:Z

.field private mCachedException:Ljava/lang/Exception;

.field private mEncrypting:Z

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterPurposeOverride:I

.field private mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 96
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 225
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 236
    .local v4, "keymasterInputArgs":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    .line 237
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForBegin()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    .line 241
    .local v5, "additionalEntropy":[B
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 242
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 247
    .local v2, "purpose":I
    :goto_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v7

    .line 253
    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_5

    .line 254
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    .line 244
    .end local v2    # "purpose":I
    .end local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_3
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz v0, :cond_4

    move v2, v8

    .restart local v2    # "purpose":I
    :goto_2
    goto :goto_1

    .end local v2    # "purpose":I
    :cond_4
    move v2, v3

    goto :goto_2

    .line 259
    .restart local v2    # "purpose":I
    .restart local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_5
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 260
    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 263
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iget v3, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v3}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;

    move-result-object v6

    .line 265
    .local v6, "e":Ljava/security/GeneralSecurityException;
    if-eqz v6, :cond_8

    .line 266
    instance-of v0, v6, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_6

    .line 267
    check-cast v6, Ljava/security/InvalidKeyException;

    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    throw v6

    .line 268
    .restart local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_6
    instance-of v0, v6, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v0, :cond_7

    .line 269
    check-cast v6, Ljava/security/InvalidAlgorithmParameterException;

    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    throw v6

    .line 271
    .restart local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_7
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Unexpected exception type"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 275
    :cond_8
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    .line 276
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_9
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_a

    .line 279
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_a
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    .line 283
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 284
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 286
    iput-boolean v8, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    goto/16 :goto_0
.end method

.method private flushAAD()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 350
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_0

    .line 354
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 360
    .local v6, "output":[B
    iput-boolean v7, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 362
    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    .line 363
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAD update unexpectedly returned data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    .end local v6    # "output":[B
    :catchall_0
    move-exception v0

    iput-boolean v7, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    throw v0

    .line 367
    :cond_0
    return-void
.end method

.method private init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 169
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    .line 170
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "initKey did not initialize the key"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    goto :goto_0

    .line 173
    :cond_0
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 174
    return-void

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static opmodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "opmode"    # I

    .prologue
    .line 735
    packed-switch p0, :pswitch_data_0

    .line 745
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 737
    :pswitch_0
    const-string v0, "ENCRYPT_MODE"

    goto :goto_0

    .line 739
    :pswitch_1
    const-string v0, "DECRYPT_MODE"

    goto :goto_0

    .line 741
    :pswitch_2
    const-string v0, "WRAP_MODE"

    goto :goto_0

    .line 743
    :pswitch_3
    const-string v0, "UNWRAP_MODE"

    goto :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .prologue
    .line 298
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-super {p0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method protected final engineDoFinal([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 499
    .local v1, "outputCopy":[B
    if-nez v1, :cond_0

    .line 508
    :goto_0
    return v2

    .line 502
    :cond_0
    array-length v3, p4

    sub-int v0, v3, p5

    .line 503
    .local v0, "outputAvailable":I
    array-length v3, v1

    if-le v3, v0, :cond_1

    .line 504
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 507
    :cond_1
    array-length v3, v1

    invoke-static {v1, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 508
    array-length v2, v1

    goto :goto_0
.end method

.method protected final engineDoFinal([BII)[B
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    .line 462
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 469
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 470
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForFinish()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    .line 473
    .local v5, "additionalEntropy":[B
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 490
    .local v7, "output":[B
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 491
    return-object v7

    .line 463
    .end local v5    # "additionalEntropy":[B
    .end local v7    # "output":[B
    :catch_0
    move-exception v6

    .line 464
    .local v6, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    .line 477
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v6

    .line 478
    .local v6, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 486
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    .line 480
    :sswitch_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    .line 482
    :sswitch_1
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-direct {v0}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/BadPaddingException;

    throw v0

    .line 484
    :sswitch_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/AEADBadTagException;

    throw v0

    .line 463
    .end local v6    # "e":Landroid/security/KeyStoreException;
    :catch_2
    move-exception v6

    goto :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_1
        -0x1e -> :sswitch_2
        -0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 128
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    .line 129
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v0, 0x1

    .line 132
    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 136
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 106
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const/4 v1, 0x1

    .line 114
    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 118
    :cond_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_2
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1
    throw v2
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 146
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    const/4 v0, 0x1

    .line 150
    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 154
    :cond_0
    return-void

    .line 150
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 666
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 601
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v3, :cond_0

    .line 602
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not initilized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 605
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_1
    if-nez p1, :cond_2

    .line 611
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "wrappedKey == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 616
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 621
    .local v1, "encoded":[B
    packed-switch p3, :pswitch_data_0

    .line 650
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported wrappedKeyType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to unwrap key"

    invoke-direct {v3, v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 624
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "encoded":[B
    :pswitch_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 642
    :goto_1
    return-object v3

    .line 629
    :pswitch_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 631
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    :try_start_1
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 632
    :catch_1
    move-exception v0

    .line 633
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {v3, v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 640
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :pswitch_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 642
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    :try_start_2
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    .line 643
    :catch_2
    move-exception v0

    .line 644
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create public key from its X.509 encoded form"

    invoke-direct {v3, v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 617
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v1    # "encoded":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v0

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 373
    .local v1, "outputCopy":[B
    if-nez v1, :cond_0

    .line 382
    :goto_0
    return v2

    .line 376
    :cond_0
    array-length v3, p4

    sub-int v0, v3, p5

    .line 377
    .local v0, "outputAvailable":I
    array-length v3, v1

    if-le v3, v0, :cond_1

    .line 378
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_1
    array-length v3, v1

    invoke-static {v1, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 382
    array-length v2, v1

    goto :goto_0
.end method

.method protected final engineUpdate([BII)[B
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 346
    :cond_0
    :goto_0
    return-object v1

    .line 323
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 329
    if-nez p3, :cond_2

    move-object v1, v2

    .line 330
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    move-object v1, v2

    .line 326
    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 336
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 342
    .local v1, "output":[B
    array-length v3, v1

    if-nez v3, :cond_0

    move-object v1, v2

    .line 343
    goto :goto_0

    .line 337
    .end local v1    # "output":[B
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    move-object v1, v2

    .line 339
    goto :goto_0

    .line 324
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected final engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "src == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 441
    .local v0, "input":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v2, v3, v4

    .line 442
    .local v2, "inputOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 443
    .local v1, "inputLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    goto :goto_0

    .line 445
    .end local v0    # "input":[B
    .end local v1    # "inputLen":I
    .end local v2    # "inputOffset":I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    .line 446
    .restart local v0    # "input":[B
    const/4 v2, 0x0

    .line 447
    .restart local v2    # "inputOffset":I
    array-length v1, v0

    .line 448
    .restart local v1    # "inputLen":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method protected final engineUpdateAAD([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 393
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 404
    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-eqz v2, :cond_2

    .line 405
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    goto :goto_0

    .line 409
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-nez v2, :cond_3

    .line 410
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This cipher does not support AAD"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v2, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 421
    .local v1, "output":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 422
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AAD update unexpectedly produced output: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    .end local v1    # "output":[B
    :catch_1
    move-exception v0

    .line 417
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    goto :goto_0

    .line 399
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v4, :cond_0

    .line 521
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not initilized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 524
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v4

    if-nez v4, :cond_1

    .line 525
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 529
    :cond_1
    if-nez p1, :cond_2

    .line 530
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "key == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 532
    :cond_2
    const/4 v1, 0x0

    .line 533
    .local v1, "encoded":[B
    instance-of v4, p1, Ljavax/crypto/SecretKey;

    if-eqz v4, :cond_5

    .line 534
    const-string v4, "RAW"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 535
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 537
    :cond_3
    if-nez v1, :cond_4

    .line 539
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 540
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    check-cast p1, Ljavax/crypto/SecretKey;

    .end local p1    # "key":Ljava/security/Key;
    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, p1, v4}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 543
    .local v3, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 586
    .end local v2    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_4
    :goto_0
    if-nez v1, :cond_a

    .line 587
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "Failed to wrap key because it does not export its key material"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "Failed to wrap key because it does not export its key material"

    invoke-direct {v4, v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 550
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local p1    # "key":Ljava/security/Key;
    :cond_5
    instance-of v4, p1, Ljava/security/PrivateKey;

    if-eqz v4, :cond_7

    .line 551
    const-string v4, "PKCS8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 552
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 554
    :cond_6
    if-nez v1, :cond_4

    .line 556
    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 557
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    const-class v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v2, p1, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 559
    .local v3, "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v1

    goto :goto_0

    .line 560
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :catch_1
    move-exception v0

    .line 561
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "Failed to wrap key because it does not export its key material"

    invoke-direct {v4, v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 566
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_7
    instance-of v4, p1, Ljava/security/PublicKey;

    if-eqz v4, :cond_9

    .line 567
    const-string v4, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 568
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 570
    :cond_8
    if-nez v1, :cond_4

    .line 572
    :try_start_2
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 573
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    const-class v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v2, p1, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 575
    .local v3, "spec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    goto :goto_0

    .line 576
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_2
    move-exception v0

    .line 577
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    :goto_3
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "Failed to wrap key because it does not export its key material"

    invoke-direct {v4, v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 583
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_9
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported key type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 592
    .end local p1    # "key":Ljava/security/Key;
    :cond_a
    const/4 v4, 0x0

    :try_start_3
    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    return-object v4

    .line 593
    :catch_3
    move-exception v0

    .line 594
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v4}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v4, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljavax/crypto/IllegalBlockSizeException;

    throw v4

    .line 576
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    .restart local p1    # "key":Ljava/security/Key;
    :catch_4
    move-exception v0

    goto :goto_3

    .line 560
    :catch_5
    move-exception v0

    goto :goto_2

    .line 544
    .end local p1    # "key":Ljava/security/Key;
    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 679
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 680
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 685
    return-void

    .line 683
    .end local v0    # "operationToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method protected abstract getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract getAdditionalEntropyAmountForFinish()I
.end method

.method protected final getConsumedInputSizeBytes()J
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method protected final getKeymasterPurposeOverride()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final getOperationHandle()J
    .locals 2

    .prologue
    .line 689
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method protected final getProducedOutputSizeBytes()J
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final isEncrypting()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected resetAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 186
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 189
    :cond_0
    iput-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 190
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 191
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 192
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 193
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 194
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 195
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 196
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 197
    iput-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 198
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 199
    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 212
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 215
    :cond_0
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 216
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 217
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 218
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 220
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 221
    return-void
.end method

.method protected final setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;

    .prologue
    .line 693
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 694
    return-void
.end method

.method protected final setKeymasterPurposeOverride(I)V
    .locals 0
    .param p1, "keymasterPurpose"    # I

    .prologue
    .line 700
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 701
    return-void
.end method
