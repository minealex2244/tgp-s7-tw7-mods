.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mRandom:Ljava/util/Random;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 111
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 112
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 119
    return-void
.end method

.method public static convertPemToX509([B)Ljava/util/List;
    .locals 7
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p0, :cond_0

    .line 502
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 511
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 512
    const-string/jumbo v4, "CertificateUtil"

    const-string/jumbo v5, "Could not convert any certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "ile":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not a certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v2    # "ile":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 507
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string/jumbo v4, "CertificateUtil"

    const-string/jumbo v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v1

    .line 505
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "CertificateUtil"

    const-string/jumbo v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-object v3
.end method

.method public static convertStoreTypeToSystemUidAsUser(II)I
    .locals 2
    .param p0, "storeType"    # I
    .param p1, "userId"    # I

    .prologue
    .line 412
    const/4 v0, -0x1

    .line 413
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 414
    const v1, 0x186a0

    mul-int/2addr v1, p1

    add-int/lit16 v0, v1, 0x3e8

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 416
    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertStoreTypeToUid(I)I
    .locals 2
    .param p0, "storeType"    # I

    .prologue
    .line 385
    const/4 v0, -0x1

    .line 386
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 387
    const/4 v0, -0x1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 389
    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertToX509List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "certInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "certInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 536
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    .end local v0    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    :cond_0
    return-object v2
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    .line 542
    if-eqz p0, :cond_0

    .line 543
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 545
    .local v0, "array":[Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 550
    :catch_0
    move-exception v3

    .line 551
    .local v3, "ile":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not a certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v0    # "array":[Ljava/security/cert/X509Certificate;
    .end local v3    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-object v7

    .line 548
    .restart local v0    # "array":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v1

    .line 549
    .local v1, "cer":Ljava/security/cert/CertificateException;
    const-string/jumbo v4, "CertificateUtil"

    const-string/jumbo v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v1    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v2

    .line 547
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "CertificateUtil"

    const-string/jumbo v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 520
    const/4 v0, 0x0

    .line 522
    .local v0, "certBytes":[B
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    .local v0, "certBytes":[B
    return-object v0

    .line 526
    .local v0, "certBytes":[B
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    const-string/jumbo v3, "CertificateUtil"

    const-string/jumbo v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-object v5

    .line 523
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_1
    move-exception v1

    .line 524
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "CertificateUtil"

    const-string/jumbo v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-object v5
.end method

.method private extractPkcs12([BLjava/lang/String;I)Z
    .locals 10
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    .line 308
    if-nez p2, :cond_0

    .line 309
    return v9

    .line 312
    :cond_0
    :try_start_0
    const-string/jumbo v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 313
    .local v4, "keystore":Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 314
    .local v5, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 316
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 317
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2

    .line 318
    return v9

    .line 333
    .local v0, "alias":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "CertificateUtil"

    const-string/jumbo v7, "Skipping non-key entry"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 321
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 326
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    instance-of v6, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v6, :cond_2

    .line 327
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    .line 336
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "keystore":Ljava/security/KeyStore;
    .end local v5    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CertificateUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "extractPkcs12(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return v9
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .locals 15
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;
    .param p2, "userId"    # I

    .prologue
    monitor-enter p0

    .line 345
    :try_start_0
    const-string/jumbo v12, "certificate_policy"

    .line 344
    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 347
    .local v6, "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :try_start_1
    move/from16 v0, p2

    invoke-interface {v6, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 349
    .local v1, "arrayChain":[Ljava/security/cert/Certificate;
    new-instance v9, Ljava/util/ArrayList;

    array-length v12, v1

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .local v9, "listChain":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    const/4 v12, 0x0

    array-length v13, v1

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v4, v1, v12

    .line 351
    .local v4, "cert":Ljava/security/cert/Certificate;
    new-instance v14, Lcom/samsung/android/knox/keystore/CertificateInfo;

    check-cast v4, Ljava/security/cert/X509Certificate;

    .end local v4    # "cert":Ljava/security/cert/Certificate;
    invoke-direct {v14, v4}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 353
    :cond_0
    move/from16 v0, p2

    invoke-interface {v6, v9, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result v11

    .line 354
    .local v11, "resultCode":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 355
    const-string/jumbo v12, "CertificateUtil"

    const-string/jumbo v13, "certificate failed during validation"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v12, "installer_module"

    .line 357
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 356
    move/from16 v0, p2

    invoke-interface {v6, v12, v13, v14, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    const/4 v12, 0x0

    monitor-exit p0

    return v12

    .line 363
    .end local v1    # "arrayChain":[Ljava/security/cert/Certificate;
    .end local v9    # "listChain":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .end local v11    # "resultCode":I
    :catch_0
    move-exception v10

    .line 364
    .local v10, "nex":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v12, "CertificateUtil"

    const-string/jumbo v13, "Certificate policy not found"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v10    # "nex":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 368
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    iput-object v12, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 370
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    .line 371
    .local v7, "certs":[Ljava/security/cert/Certificate;
    const-string/jumbo v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "# certs extracted = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    array-length v12, v7

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 373
    .local v3, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v12, 0x0

    array-length v13, v7

    :goto_2
    if-ge v12, v13, :cond_3

    aget-object v2, v7, v12

    .line 374
    .local v2, "c":Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 375
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 376
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 361
    .end local v2    # "c":Ljava/security/cert/Certificate;
    .end local v3    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certs":[Ljava/security/cert/Certificate;
    :catch_1
    move-exception v8

    .line 362
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "CertificateUtil"

    const-string/jumbo v13, "Failed talking to certificate policy"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v6    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 378
    .restart local v3    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .restart local v7    # "certs":[Ljava/security/cert/Certificate;
    :cond_3
    :try_start_3
    const-string/jumbo v12, "CertificateUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "# ca certs extracted = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    const/4 v12, 0x1

    monitor-exit p0

    return v12
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v6, 0x0

    .line 293
    :try_start_0
    const-string/jumbo v5, "2.5.29.19"

    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 294
    .local v0, "asn1EncodedBytes":[B
    if-nez v0, :cond_0

    .line 295
    return v6

    .line 297
    :cond_0
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 299
    .local v1, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 300
    .local v3, "octets":[B
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 301
    .local v4, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 302
    .end local v0    # "asn1EncodedBytes":[B
    .end local v1    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3    # "octets":[B
    .end local v4    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/io/IOException;
    return v6
.end method

.method private parseCert([BI)Z
    .locals 13
    .param p1, "bytes"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v12, 0x0

    .line 248
    const/4 v8, 0x0

    .line 250
    .local v8, "ret":Z
    :try_start_0
    const-string/jumbo v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 252
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    invoke-virtual {v1, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 256
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string/jumbo v9, "certificate_policy"

    .line 255
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 258
    .local v3, "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :try_start_1
    invoke-interface {v3, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 259
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 260
    .local v2, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-interface {v3, v2, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result v7

    .line 262
    .local v7, "resultCode":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 263
    const-string/jumbo v9, "CertificateUtil"

    const-string/jumbo v10, "certificate failed during validation"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v9, "installer_module"

    .line 265
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 264
    invoke-interface {v3, v9, v10, v11, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 266
    return v12

    .line 271
    .end local v2    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v7    # "resultCode":I
    :catch_0
    move-exception v6

    .line 272
    .local v6, "nex":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v9, "CertificateUtil"

    const-string/jumbo v10, "Certificate policy not found"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v6    # "nex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 276
    const-string/jumbo v9, "CertificateUtil"

    const-string/jumbo v10, "got a CA cert"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v9, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v8, 0x1

    .line 288
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :goto_1
    return v8

    .line 269
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :catch_1
    move-exception v4

    .line 270
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "CertificateUtil"

    const-string/jumbo v10, "Failed talking to certificate policy"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 284
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    .line 285
    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v9, "CertificateUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseCert(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v8, 0x0

    goto :goto_1

    .line 280
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    :cond_1
    :try_start_3
    const-string/jumbo v9, "CertificateUtil"

    const-string/jumbo v10, "got a user cert"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 282
    const/4 v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAllUsersId()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v3, "usersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v0

    .line 480
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 481
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method public getAllUsersInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 492
    .local v2, "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    return-object v2

    .line 491
    .end local v2    # "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    .line 492
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    throw v3
.end method

.method public getRandomInt()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v5, 0x7

    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    .locals 20
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "keystoreUid"    # I
    .param p6, "userId"    # I

    .prologue
    .line 137
    const-string/jumbo v15, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 138
    const-string/jumbo v15, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 137
    if-eqz v15, :cond_1

    .line 139
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v13

    .line 147
    :goto_0
    if-eqz v13, :cond_14

    .line 149
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    .line 150
    and-int/lit8 v15, p5, 0x2

    if-eqz v15, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cert$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 152
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CACERT_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 153
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v17

    .line 154
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v18

    .line 155
    const/16 v19, 0x0

    .line 152
    invoke-virtual/range {v15 .. v19}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    and-int/2addr v13, v15

    .local v13, "ret":Z
    goto :goto_1

    .line 140
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "cert$iterator":Ljava/util/Iterator;
    .end local v13    # "ret":Z
    :cond_1
    const-string/jumbo v15, ".p12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 141
    const-string/jumbo v15, "PKCS12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 140
    if-eqz v15, :cond_3

    .line 142
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v13

    .restart local v13    # "ret":Z
    goto :goto_0

    .line 144
    .end local v13    # "ret":Z
    :cond_3
    const/4 v13, 0x0

    .local v13, "ret":Z
    goto/16 :goto_0

    .line 157
    .end local v13    # "ret":Z
    .restart local v8    # "cert$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CaCerts put state for wifi keystore : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v8    # "cert$iterator":Ljava/util/Iterator;
    :cond_5
    and-int/lit8 v15, p5, 0x4

    if-eqz v15, :cond_7

    .line 160
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "cert$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 161
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CACERT_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 162
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v17

    .line 163
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v18

    .line 164
    const/16 v19, 0x1

    .line 161
    invoke-virtual/range {v15 .. v19}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v15

    and-int/2addr v13, v15

    .local v13, "ret":Z
    goto :goto_2

    .line 166
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v13    # "ret":Z
    :cond_6
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CaCerts put state for vpn and apps keystore : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .end local v8    # "cert$iterator":Ljava/util/Iterator;
    :cond_7
    and-int/lit8 v15, p5, 0x1

    if-eqz v15, :cond_a

    .line 171
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 170
    invoke-static/range {v15 .. v16}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v12

    .line 173
    .local v12, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 175
    .local v14, "service":Landroid/security/IKeyChainService;
    const/4 v7, 0x0

    .line 176
    .local v7, "cert":[B
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v7    # "cert":[B
    .local v5, "ca$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 177
    .local v4, "ca":Ljava/security/cert/X509Certificate;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    .line 178
    .local v7, "cert":[B
    invoke-interface {v14, v7}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 181
    invoke-interface {v14, v7}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    :goto_4
    and-int/2addr v13, v15

    .restart local v13    # "ret":Z
    goto :goto_3

    .end local v13    # "ret":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 184
    .end local v4    # "ca":Ljava/security/cert/X509Certificate;
    .end local v7    # "cert":[B
    :cond_9
    :try_start_4
    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 191
    .end local v5    # "ca$iterator":Ljava/util/Iterator;
    .end local v12    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v14    # "service":Landroid/security/IKeyChainService;
    :cond_a
    :goto_5
    :try_start_5
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CaCerts put state : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v15, :cond_f

    .line 194
    and-int/lit8 v15, p5, 0x2

    if-eqz v15, :cond_c

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "USRCERT_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 196
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v17

    .line 197
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v18

    .line 198
    const/16 v19, 0x0

    .line 195
    invoke-virtual/range {v15 .. v19}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v15

    and-int/2addr v13, v15

    .line 199
    .restart local v13    # "ret":Z
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UserCert put state for wifi keystore : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v13    # "ret":Z
    :cond_c
    and-int/lit8 v15, p5, 0x4

    if-eqz v15, :cond_d

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "USRCERT_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 203
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v17

    .line 204
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v18

    .line 205
    const/16 v19, 0x1

    .line 202
    invoke-virtual/range {v15 .. v19}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v15

    and-int/2addr v13, v15

    .line 206
    .restart local v13    # "ret":Z
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UserCert put state for vpn and apps keystore : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v13    # "ret":Z
    :cond_d
    and-int/lit8 v15, p5, 0x1

    if-eqz v15, :cond_f

    .line 209
    const-string/jumbo v15, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 210
    const-string/jumbo v15, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 208
    if-eqz v15, :cond_f

    .line 211
    :cond_e
    const/4 v15, 0x0

    and-int/2addr v13, v15

    .line 214
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v15, :cond_14

    .line 215
    and-int/lit8 v15, p5, 0x2

    if-eqz v15, :cond_11

    .line 216
    const/4 v11, 0x1

    .line 217
    .local v11, "flags":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 218
    const-string/jumbo v15, "CertificateUtil"

    const-string/jumbo v16, "Saving private key with FLAG_NONE for WIFI"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v11, 0x0

    .line 221
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "USRPKEY_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v18

    .line 221
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v15, v0, v1, v2, v11}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v15

    and-int/2addr v13, v15

    .line 224
    .restart local v13    # "ret":Z
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UserPKey put state for wifi keystore : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v11    # "flags":I
    .end local v13    # "ret":Z
    :cond_11
    and-int/lit8 v15, p5, 0x4

    if-eqz v15, :cond_12

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "USRPKEY_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v17

    .line 229
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v18

    .line 230
    const/16 v19, 0x1

    .line 227
    invoke-virtual/range {v15 .. v19}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v15

    and-int/2addr v13, v15

    .line 231
    .restart local v13    # "ret":Z
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v13    # "ret":Z
    :cond_12
    and-int/lit8 v15, p5, 0x1

    if-eqz v15, :cond_14

    .line 234
    const-string/jumbo v15, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 235
    const-string/jumbo v15, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v15

    .line 233
    if-eqz v15, :cond_14

    .line 236
    :cond_13
    const/4 v15, 0x0

    and-int/2addr v13, v15

    .line 243
    :cond_14
    :goto_6
    return v13

    .line 183
    .restart local v12    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v14    # "service":Landroid/security/IKeyChainService;
    :catchall_0
    move-exception v15

    .line 184
    :try_start_6
    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 183
    throw v15
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 186
    .end local v12    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v14    # "service":Landroid/security/IKeyChainService;
    :catch_0
    move-exception v9

    .line 187
    .local v9, "e":Ljava/lang/AssertionError;
    :try_start_7
    const-string/jumbo v15, "CertificateUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "installAsUser - is KeyChainService running for user "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 188
    const/4 v15, 0x0

    and-int/2addr v13, v15

    .restart local v13    # "ret":Z
    goto/16 :goto_5

    .line 239
    .end local v9    # "e":Ljava/lang/AssertionError;
    .end local v13    # "ret":Z
    :catch_1
    move-exception v10

    .line 240
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CertificateUtil"

    const-string/jumbo v16, "install(): "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public isGuestUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 466
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x1

    return v1

    .line 470
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public sendIntentToSettings(IZ)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "bootCompleted"    # Z

    .prologue
    .line 428
    if-eqz p2, :cond_2

    .line 429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 430
    .local v6, "token":J
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v5, "refreshUi":Landroid/content/Intent;
    const-string/jumbo v8, "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v0, "oldIntentRefreshUi":Landroid/content/Intent;
    const-string/jumbo v8, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 439
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getParentId(I)I

    move-result v4

    .line 445
    .local v4, "personaOwner":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v10, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 446
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v10, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v8, v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 450
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 451
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 452
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "persona$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 453
    .local v1, "persona":Lcom/samsung/android/knox/SemPersonaInfo;
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v10, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 454
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v10, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v8, v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    .line 441
    .end local v1    # "persona":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v2    # "persona$iterator":Ljava/util/Iterator;
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v4    # "personaOwner":I
    :cond_0
    move v4, p1

    .restart local v4    # "personaOwner":I
    goto :goto_0

    .line 459
    .restart local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    .end local v0    # "oldIntentRefreshUi":Landroid/content/Intent;
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v4    # "personaOwner":I
    .end local v5    # "refreshUi":Landroid/content/Intent;
    .end local v6    # "token":J
    :cond_2
    return-void
.end method
