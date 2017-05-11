.class public Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;
.super Landroid/app/IntentService;
.source "SmartSwitchBnrService.java"

# interfaces
.implements Lcom/android/launcher3/common/bnr/LauncherBnrListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.SSBnrService"


# instance fields
.field private mSecurityLevel:I

.field private mSessionKey:Ljava/lang/String;

.field private mSessionTime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "SmartSwitchBnrService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 58
    return-void
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 181
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v2, v6, [B

    .line 183
    .local v2, "iv":[B
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gez v6, :cond_0

    .line 184
    const/4 v6, 0x0

    .line 204
    :goto_0
    return-object v6

    .line 187
    :cond_0
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 189
    .local v5, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/16 v6, 0x10

    new-array v3, v6, [B

    .line 190
    .local v3, "salt":[B
    const/4 v6, 0x1

    if-ne p3, v6, :cond_1

    .line 191
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 194
    :cond_1
    const/4 v4, 0x0

    .line 197
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-direct {p0, p2, p3, v3}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 203
    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 204
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Launcher.SSBnrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptStream secretKey Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 144
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 147
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v7

    new-array v2, v7, [B

    .line 150
    .local v2, "iv":[B
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 151
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 154
    .local v5, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 156
    const/16 v7, 0x10

    new-array v3, v7, [B

    .line 157
    .local v3, "salt":[B
    if-ne p3, v10, :cond_0

    .line 158
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 159
    .local v6, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v6, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 160
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 163
    .end local v6    # "sr":Ljava/security/SecureRandom;
    :cond_0
    const/4 v4, 0x0

    .line 166
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-direct {p0, p2, p3, v3}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 172
    :goto_0
    invoke-virtual {v0, v10, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 173
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v7

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Launcher.SSBnrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encryptStream secretKey Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 212
    const/4 v9, 0x1

    if-ne p2, v9, :cond_0

    .line 213
    const/16 v2, 0x3e8

    .line 214
    .local v2, "iterationCount":I
    const/16 v6, 0x100

    .line 215
    .local v6, "keyLength":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 217
    .local v0, "chars":[C
    const-string v9, "PBKDF2WithHmacSHA1"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 218
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v7, v0, p3, v2, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 219
    .local v7, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v5, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 221
    .local v3, "key":Ljavax/crypto/SecretKey;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 231
    .end local v0    # "chars":[C
    .end local v2    # "iterationCount":I
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v5    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "keyLength":I
    .end local v7    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .local v8, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v8

    .line 223
    .end local v8    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 224
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 225
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 226
    .local v4, "keyBytes":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    array-length v10, v4

    invoke-static {v9, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v4, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .restart local v8    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method


# virtual methods
.method public backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    .locals 4
    .param p1, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    .line 99
    const-string v1, "Launcher.SSBnrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupComplete result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "backupResult":Landroid/content/Intent;
    const-string v1, "RESULT"

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "ERR_CODE"

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string v1, "REQ_SIZE"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    :goto_0
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 107
    :cond_0
    const-string v1, "REQ_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 62
    if-nez p1, :cond_1

    .line 63
    const-string v1, "Launcher.SSBnrService"

    const-string v3, "intent is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "action":Ljava/lang/String;
    const-string v1, "Launcher.SSBnrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent action : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object v9, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 72
    iput-object v9, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    .line 73
    iput-object v9, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 74
    iput v8, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 76
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string v1, "SAVE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "path":Ljava/lang/String;
    const-string v1, "SESSION_KEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 79
    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    .line 80
    const-string v1, "SOURCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 81
    const-string v1, "SECURITY_LEVEL"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 83
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v7

    .line 84
    .local v7, "backupHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-virtual {v7, v1, v2, v3, p0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    goto :goto_0

    .line 85
    .end local v2    # "path":Ljava/lang/String;
    .end local v7    # "backupHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    :cond_2
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "SAVE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "path":Ljava/lang/String;
    const-string v1, "SESSION_KEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 88
    const-string v1, "SOURCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 89
    const-string v1, "SECURITY_LEVEL"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 90
    const-string v1, "DEBUG_LEVEL"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 92
    .local v4, "debugLevel":I
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v0

    .line 93
    .local v0, "restoreHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    goto/16 :goto_0
.end method

.method public restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    .locals 4
    .param p1, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    .line 116
    const-string v1, "Launcher.SSBnrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreComplete result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "restoreResult":Landroid/content/Intent;
    const-string v1, "RESULT"

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "ERR_CODE"

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const-string v1, "REQ_SIZE"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    :goto_0
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 124
    :cond_0
    const-string v1, "REQ_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
