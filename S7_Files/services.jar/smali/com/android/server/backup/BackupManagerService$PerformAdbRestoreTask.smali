.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$RestorePolicy:[I

.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mPrivilegeApp:Z

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->values()[Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "privilegeApp"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6824
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6782
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 6783
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6784
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    .line 6785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 6812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6811
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 6815
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 6819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6818
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 6822
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 7519
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    .line 7520
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    .line 6826
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 6827
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 6828
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 6829
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 6830
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6831
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 6832
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 6833
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 6834
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 6835
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 6839
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6840
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6825
    return-void
.end method

.method private HEXLOG([B)V
    .locals 10
    .param p1, "block"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7987
    const/4 v3, 0x0

    .line 7988
    .local v3, "offset":I
    array-length v4, p1

    .line 7989
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7990
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 7991
    const-string/jumbo v5, "%04x   "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7992
    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    const/16 v2, 0x10

    .line 7993
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 7994
    const-string/jumbo v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, v3, v1

    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7993
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7992
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    .restart local v2    # "numThisLine":I
    goto :goto_1

    .line 7996
    .restart local v1    # "i":I
    :cond_1
    const-string/jumbo v5, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7997
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7998
    sub-int/2addr v4, v2

    .line 7999
    add-int/2addr v3, v2

    goto :goto_0

    .line 7986
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method


# virtual methods
.method attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 28
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .prologue
    .line 6995
    const/16 v22, 0x0

    .line 6998
    .local v22, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v25, "AES/CBC/PKCS5Padding"

    invoke-static/range {v25 .. v25}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 6999
    .local v6, "c":Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v24

    .line 7001
    .local v24, "userKey":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v5

    .line 7002
    .local v5, "IV":[B
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v14, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 7004
    .local v14, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v24 .. v24}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v26

    const-string/jumbo v27, "AES"

    invoke-direct/range {v25 .. v27}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 7003
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v19

    .line 7007
    .local v19, "mkCipher":[B
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v17

    .line 7010
    .local v17, "mkBlob":[B
    const/16 v25, 0x0

    .line 7011
    const/16 v20, 0x1

    .local v20, "offset":I
    aget-byte v15, v17, v25

    .line 7012
    .local v15, "len":I
    add-int/lit8 v25, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 7013
    add-int/lit8 v20, v15, 0x1

    .line 7015
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .local v21, "offset":I
    aget-byte v15, v17, v20

    .line 7017
    add-int v25, v21, v15

    .line 7016
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    .line 7018
    .local v16, "mk":[B
    add-int v20, v21, v15

    .line 7020
    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    aget-byte v15, v17, v20

    .line 7022
    add-int v25, v21, v15

    .line 7021
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    .line 7025
    .local v18, "mkChecksum":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v7

    .line 7026
    .local v7, "calculatedCk":[B
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 7027
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    .end local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v14, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 7029
    .restart local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v26, "AES"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 7028
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7032
    new-instance v23, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .local v23, "result":Ljava/io/InputStream;
    move-object/from16 v22, v23

    .line 7052
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "len":I
    .end local v16    # "mk":[B
    .end local v17    # "mkBlob":[B
    .end local v18    # "mkChecksum":[B
    .end local v19    # "mkCipher":[B
    .end local v21    # "offset":I
    .end local v22    # "result":Ljava/io/InputStream;
    .end local v23    # "result":Ljava/io/InputStream;
    .end local v24    # "userKey":Ljavax/crypto/SecretKey;
    :cond_0
    :goto_0
    return-object v22

    .line 7033
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v7    # "calculatedCk":[B
    .restart local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "len":I
    .restart local v16    # "mk":[B
    .restart local v17    # "mkBlob":[B
    .restart local v18    # "mkChecksum":[B
    .restart local v19    # "mkCipher":[B
    .restart local v21    # "offset":I
    .restart local v22    # "result":Ljava/io/InputStream;
    .restart local v24    # "userKey":Ljavax/crypto/SecretKey;
    :cond_1
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Incorrect password"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7034
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "len":I
    .end local v16    # "mk":[B
    .end local v17    # "mkBlob":[B
    .end local v18    # "mkChecksum":[B
    .end local v19    # "mkCipher":[B
    .end local v21    # "offset":I
    .end local v24    # "userKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v8

    .line 7035
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Needed parameter spec unavailable!"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7048
    .end local v8    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v9

    .line 7049
    .local v9, "e":Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Illegal password; aborting"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7046
    .end local v9    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v13

    .line 7047
    .local v13, "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Needed padding mechanism unavailable!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7044
    .end local v13    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v10

    .line 7045
    .local v10, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Needed decryption algorithm unavailable!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7042
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v12

    .line 7043
    .local v12, "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Invalid block size in master key"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7036
    .end local v12    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v11

    .line 7041
    .local v11, "e":Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_0

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Incorrect password"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 15
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .prologue
    .line 7057
    const/4 v13, 0x0

    .line 7059
    .local v13, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v1, "AES-256"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7061
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 7062
    .local v14, "userSaltHex":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v3

    .line 7064
    .local v3, "userSalt":[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 7065
    .local v10, "ckSaltHex":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    .line 7067
    .local v4, "ckSalt":[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 7068
    .local v5, "rounds":I
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 7070
    .local v6, "userIvHex":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 7073
    .local v7, "masterKeyBlobHex":Ljava/lang/String;
    const-string/jumbo v2, "PBKDF2WithHmacSHA1"

    .line 7074
    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p3

    .line 7073
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v13

    .line 7075
    .local v13, "result":Ljava/io/InputStream;
    if-nez v13, :cond_0

    if-eqz p2, :cond_0

    .line 7076
    const-string/jumbo v2, "PBKDF2WithHmacSHA1And8bit"

    .line 7077
    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v8, p3

    .line 7076
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v13

    .line 7086
    .end local v3    # "userSalt":[B
    .end local v4    # "ckSalt":[B
    .end local v5    # "rounds":I
    .end local v6    # "userIvHex":Ljava/lang/String;
    .end local v7    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v10    # "ckSaltHex":Ljava/lang/String;
    .end local v13    # "result":Ljava/io/InputStream;
    .end local v14    # "userSaltHex":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v13

    .line 7079
    .local v13, "result":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported encryption method: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7080
    .end local v13    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v12

    .line 7081
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Can\'t parse restore data header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7082
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    .line 7083
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Can\'t read input header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v12, 0x0

    const/16 v3, 0x2d

    .line 7858
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7861
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/16 v2, 0x64

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7862
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7863
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7864
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7865
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7866
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_5

    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7867
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_6

    move v2, v6

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7868
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7869
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_8

    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7870
    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v8, 0x1

    and-long/2addr v4, v8

    cmp-long v2, v4, v12

    if-eqz v2, :cond_9

    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7871
    const-string/jumbo v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7873
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 7874
    .local v1, "stamp":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7876
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7877
    const-string/jumbo v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7878
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7879
    const-string/jumbo v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7880
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7882
    const-string/jumbo v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7856
    return-void

    .end local v1    # "stamp":Ljava/util/Date;
    :cond_0
    move v2, v3

    .line 7861
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 7862
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 7863
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 7864
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 7865
    goto/16 :goto_4

    :cond_5
    move v2, v3

    .line 7866
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 7867
    goto/16 :goto_6

    :cond_7
    move v4, v3

    .line 7868
    goto/16 :goto_7

    :cond_8
    move v5, v3

    .line 7869
    goto :goto_8

    :cond_9
    move v6, v3

    .line 7870
    goto :goto_9
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7839
    array-length v1, p1

    .line 7840
    .local v1, "end":I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7843
    :cond_0
    move v2, p2

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7844
    aget-byte v0, p1, v2

    .line 7847
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 7851
    .end local v0    # "c":B
    :cond_1
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, p2

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x0

    aput-object v3, p3, v4

    .line 7852
    add-int/lit8 v2, v2, 0x1

    .line 7853
    return v2

    .line 7843
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    .line 8089
    const-wide/16 v4, 0x0

    .line 8090
    .local v4, "value":J
    add-int v1, p2, p3

    .line 8091
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8092
    aget-byte v0, p1, v2

    .line 8094
    .local v0, "b":B
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 8100
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    .line 8095
    .restart local v0    # "b":B
    :cond_1
    if-lt v0, v10, :cond_2

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 8096
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8098
    :cond_3
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 8091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8104
    add-int v0, p2, p3

    .line 8105
    .local v0, "end":I
    move v1, p2

    .line 8107
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8108
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 24
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 7523
    const/4 v10, 0x1

    .line 7525
    .local v10, "okay":Z
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installing from backup: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7529
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7531
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7532
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v19, 0x8000

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 7533
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 7534
    .local v14, "size":J
    :goto_0
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_2

    .line 7535
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v20, v14

    if-gez v19, :cond_1

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 7536
    .local v16, "toRead":J
    :goto_1
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 7537
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 7538
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 7539
    int-to-long v0, v7

    move-wide/from16 v20, v0

    sub-long v14, v14, v20

    goto :goto_0

    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_1
    move-wide/from16 v16, v14

    .line 7535
    goto :goto_1

    .line 7541
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 7544
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 7547
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 7548
    .local v11, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->reset()V

    .line 7549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get8(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    .line 7550
    const/16 v21, 0x22

    .line 7549
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    .line 7552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    .line 7554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 7558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 7559
    const/4 v10, 0x0

    .line 7619
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 7622
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v10

    .line 7563
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/16 v18, 0x0

    .line 7564
    .local v18, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 7565
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream claimed to include apk for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7566
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 7565
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7566
    const-string/jumbo v21, " but apk was really "

    .line 7565
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 7565
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7569
    const/4 v10, 0x0

    .line 7570
    const/16 v18, 0x1

    .line 7608
    :cond_5
    :goto_4
    if-eqz v18, :cond_3

    .line 7609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->reset()V

    .line 7610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get8(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 7611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 7610
    invoke-virtual/range {v19 .. v22}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 7612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 7615
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catch_0
    move-exception v9

    .line 7616
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to transcribe restored apk for install"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7617
    const/4 v10, 0x0

    .line 7619
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 7573
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    .restart local v18    # "uninstall":Z
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get8(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 7574
    const/16 v21, 0x40

    .line 7573
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 7575
    .local v12, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const v20, 0x8000

    and-int v19, v19, v20

    if-nez v19, :cond_7

    .line 7576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPrivilegeApp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 7582
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    .line 7583
    .local v13, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v13, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 7586
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 7587
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 7588
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7589
    const-string/jumbo v21, " has restricted uid and no agent"

    .line 7588
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 7577
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :cond_8
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream contains apk of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7578
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 7577
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7578
    const-string/jumbo v21, " but it disallows backup/restore"

    .line 7577
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7579
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 7593
    .restart local v13    # "sigs":[Landroid/content/pm/Signature;
    :cond_9
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7594
    const-string/jumbo v21, " signatures do not match restore manifest"

    .line 7593
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7595
    const/4 v10, 0x0

    .line 7596
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 7599
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 7600
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Install of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 7601
    const-string/jumbo v21, " succeeded but now not found"

    .line 7600
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7602
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 7618
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catchall_0
    move-exception v19

    .line 7619
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 7618
    throw v19
.end method

.method readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .locals 24
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7705
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x10000

    cmp-long v20, v20, v22

    if-lez v20, :cond_0

    .line 7706
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 7709
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 7710
    .local v4, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 7711
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 7714
    sget-object v16, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 7715
    .local v16, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 7716
    .local v18, "str":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 7719
    .local v14, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7720
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 7721
    .local v19, "version":I
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 7722
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7723
    const/16 v20, 0x0

    aget-object v12, v18, v20

    .line 7725
    .local v12, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 7726
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7727
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 7728
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7731
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7732
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7733
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2

    const/16 v20, 0x0

    aget-object v20, v18, v20

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 7734
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7735
    const/16 v20, 0x0

    aget-object v20, v18, v20

    const-string/jumbo v21, "1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 7736
    .local v10, "hasApk":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7737
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 7738
    .local v13, "numSigs":I
    if-lez v13, :cond_d

    .line 7739
    new-array v0, v13, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 7740
    .local v17, "sigs":[Landroid/content/pm/Signature;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_3

    .line 7741
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v14

    .line 7742
    new-instance v20, Landroid/content/pm/Signature;

    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-direct/range {v20 .. v21}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v20, v17, v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7740
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 7712
    .end local v10    # "hasApk":Z
    .end local v11    # "i":I
    .end local v12    # "manifestPackage":Ljava/lang/String;
    .end local v13    # "numSigs":I
    .end local v14    # "offset":I
    .end local v16    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v17    # "sigs":[Landroid/content/pm/Signature;
    .end local v18    # "str":[Ljava/lang/String;
    .end local v19    # "version":I
    :cond_1
    new-instance v20, Ljava/io/IOException;

    const-string/jumbo v21, "Unexpected EOF in manifest"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 7733
    .restart local v12    # "manifestPackage":Ljava/lang/String;
    .restart local v14    # "offset":I
    .restart local v16    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v18    # "str":[Ljava/lang/String;
    .restart local v19    # "version":I
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 7744
    .restart local v10    # "hasApk":Z
    .restart local v11    # "i":I
    .restart local v13    # "numSigs":I
    .restart local v17    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 7750
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v20

    .line 7749
    if-eqz v20, :cond_7

    .line 7751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 7752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->-get7(Lcom/android/server/backup/BackupManagerService;)I

    move-result v22

    const/16 v23, 0x40

    .line 7751
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 7758
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7759
    .local v9, "flags":I
    const v20, 0x8000

    and-int v20, v20, v9

    if-nez v20, :cond_4

    .line 7760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v20

    .line 7759
    if-nez v20, :cond_4

    .line 7761
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPrivilegeApp:Z

    move/from16 v20, v0

    .line 7759
    if-eqz v20, :cond_b

    .line 7764
    :cond_4
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    const/16 v21, 0x2710

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 7765
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 7773
    :cond_5
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 7774
    iget v0, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 7775
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Sig + version match; taking data"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7776
    sget-object v16, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7811
    .end local v9    # "flags":I
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_3
    :try_start_3
    sget-object v20, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    if-eqz v10, :cond_c

    .line 7833
    .end local v10    # "hasApk":Z
    .end local v11    # "i":I
    .end local v12    # "manifestPackage":Ljava/lang/String;
    .end local v13    # "numSigs":I
    .end local v17    # "sigs":[Landroid/content/pm/Signature;
    .end local v19    # "version":I
    :cond_6
    :goto_4
    return-object v16

    .line 7754
    .restart local v10    # "hasApk":Z
    .restart local v11    # "i":I
    .restart local v12    # "manifestPackage":Ljava/lang/String;
    .restart local v13    # "numSigs":I
    .restart local v17    # "sigs":[Landroid/content/pm/Signature;
    .restart local v19    # "version":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/BackupManagerService;->-get8(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 7755
    const/16 v22, 0x40

    .line 7754
    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .restart local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    goto :goto_2

    .line 7781
    .restart local v9    # "flags":I
    :cond_8
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Data version "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7782
    const-string/jumbo v22, " is newer than installed version "

    .line 7781
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7783
    iget v0, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    .line 7781
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7783
    const-string/jumbo v22, " - requiring apk"

    .line 7781
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7784
    sget-object v16, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_3

    .line 7787
    :cond_9
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7788
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 7787
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 7798
    .end local v9    # "flags":I
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 7802
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7803
    const-string/jumbo v22, " not installed; requiring apk in dataset"

    .line 7802
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7804
    sget-object v16, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 7791
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "flags":I
    .restart local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_a
    :try_start_6
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7792
    const-string/jumbo v22, " is system level with no agent"

    .line 7791
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 7806
    .end local v9    # "flags":I
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 7807
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Failed to retrieve package info mdm request"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 7827
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v10    # "hasApk":Z
    .end local v11    # "i":I
    .end local v12    # "manifestPackage":Ljava/lang/String;
    .end local v13    # "numSigs":I
    .end local v17    # "sigs":[Landroid/content/pm/Signature;
    .end local v19    # "version":I
    :catch_2
    move-exception v8

    .line 7828
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Corrupt restore manifest for package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7795
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "flags":I
    .restart local v10    # "hasApk":Z
    .restart local v11    # "i":I
    .restart local v12    # "manifestPackage":Ljava/lang/String;
    .restart local v13    # "numSigs":I
    .restart local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "sigs":[Landroid/content/pm/Signature;
    .restart local v19    # "version":I
    :cond_b
    :try_start_8
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Restore manifest from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7796
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 7795
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7796
    const-string/jumbo v22, " but allowBackup=false"

    .line 7795
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    .line 7829
    .end local v9    # "flags":I
    .end local v10    # "hasApk":Z
    .end local v11    # "i":I
    .end local v12    # "manifestPackage":Ljava/lang/String;
    .end local v13    # "numSigs":I
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "sigs":[Landroid/content/pm/Signature;
    .end local v19    # "version":I
    :catch_3
    move-exception v7

    .line 7830
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v20, "BackupManagerService"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7812
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "hasApk":Z
    .restart local v11    # "i":I
    .restart local v12    # "manifestPackage":Ljava/lang/String;
    .restart local v13    # "numSigs":I
    .restart local v17    # "sigs":[Landroid/content/pm/Signature;
    .restart local v19    # "version":I
    :cond_c
    :try_start_9
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Cannot restore package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7813
    const-string/jumbo v22, " without the matching .apk"

    .line 7812
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7816
    .end local v11    # "i":I
    .end local v17    # "sigs":[Landroid/content/pm/Signature;
    :cond_d
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Missing signature on backed-up package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7817
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 7816
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7820
    .end local v10    # "hasApk":Z
    .end local v13    # "numSigs":I
    :cond_e
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Expected package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7821
    const-string/jumbo v22, " but restore manifest claims "

    .line 7820
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7824
    .end local v12    # "manifestPackage":Ljava/lang/String;
    :cond_f
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Unknown restore manifest version "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7825
    const-string/jumbo v22, " for package "

    .line 7824
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7825
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 7824
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8008
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8010
    :cond_0
    const/4 v1, 0x0

    .line 8011
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 8012
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 8013
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    .line 8014
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "- wanted exactly "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " but got only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8019
    .end local v0    # "nRead":I
    :cond_1
    return v1

    .line 8017
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6984
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6985
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    if-ltz v1, :cond_0

    .line 6986
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 6989
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6987
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7641
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 7642
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Metadata too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 7645
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v11, v12

    new-array v3, v11, [B

    .line 7646
    .local v3, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v11, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v12, v11}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 7647
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 7650
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    .line 7651
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 7652
    .local v5, "offset":I
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 7653
    .local v10, "version":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 7654
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 7655
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 7656
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 7659
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 7660
    array-length v11, v3

    sub-int/2addr v11, v5

    .line 7659
    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 7661
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7662
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_4

    .line 7663
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 7664
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 7665
    .local v7, "size":I
    const/high16 v11, 0x10000

    if-le v7, v11, :cond_2

    .line 7666
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Datum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7667
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    .line 7666
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7668
    const-string/jumbo v13, " too big; corrupt? size="

    .line 7666
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7668
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 7666
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 7648
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "offset":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "token":I
    .end local v10    # "version":I
    :cond_1
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Unexpected EOF in widget data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 7670
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "str":[Ljava/lang/String;
    .restart local v9    # "token":I
    .restart local v10    # "version":I
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 7683
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring metadata blob "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7684
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    .line 7683
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7685
    const-string/jumbo v13, " for "

    .line 7683
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7685
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 7683
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7687
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 7674
    :pswitch_0
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Got widget metadata for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7676
    new-array v11, v7, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    .line 7677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 7693
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_3
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Metadata mismatch: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7694
    const-string/jumbo v13, " but widget data for "

    .line 7693
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7639
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 7697
    :cond_5
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unsupported metadata version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7670
    nop

    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 16
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8034
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 8035
    const-string/jumbo v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 8036
    const-string/jumbo v14, " - aborting"

    .line 8035
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8037
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8041
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    .line 8042
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    .line 8043
    .local v3, "data":[B
    array-length v12, v3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v13, v12}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 8044
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8046
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 8048
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v2, v12

    .line 8049
    .local v2, "contentSize":I
    const/4 v9, 0x0

    .line 8052
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .line 8053
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8054
    :cond_3
    if-lt v4, v2, :cond_4

    .line 8056
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8059
    :cond_4
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    .line 8060
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    .line 8061
    .local v5, "key":I
    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    .line 8063
    add-int/lit8 v11, v5, 0x1

    .local v11, "value":I
    :goto_1
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5

    if-gt v11, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 8064
    :cond_5
    if-le v11, v4, :cond_6

    .line 8065
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8069
    :cond_6
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 8071
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string/jumbo v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 8073
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 8074
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 8081
    :goto_2
    add-int/2addr v9, v7

    .line 8082
    if-lt v9, v2, :cond_2

    .line 8084
    const/4 v12, 0x1

    return v12

    .line 8075
    :cond_7
    const-string/jumbo v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 8076
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_2

    .line 8078
    :cond_8
    const-string/jumbo v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 8023
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 8024
    .local v0, "got":I
    if-nez v0, :cond_0

    return v1

    .line 8025
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8026
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 8027
    const/4 v1, 0x1

    return v1
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .locals 13
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7887
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 7888
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 7890
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 7891
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    .line 7894
    :try_start_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7895
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 7896
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    .line 7897
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    .line 7899
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7900
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 7901
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 7902
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7903
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7907
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 7908
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 7910
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 7911
    if-eqz v2, :cond_2

    .line 7914
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 7916
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7975
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 7977
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_0
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7978
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->HEXLOG([B)V

    .line 7980
    throw v1

    .line 7918
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 7921
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 7937
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7938
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7922
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 7945
    :cond_5
    :goto_1
    const-string/jumbo v8, "shared/"

    .line 7946
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "shared/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 7945
    const/4 v11, 0x0

    .line 7946
    const/4 v12, 0x0

    .line 7945
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 7948
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7949
    const-string/jumbo v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 7950
    const-string/jumbo v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 7951
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .line 7983
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :cond_7
    return-object v3

    .line 7924
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 7925
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 7926
    const-string/jumbo v8, "BackupManagerService"

    const-string/jumbo v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7927
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_1

    .line 7933
    :sswitch_2
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7934
    const/4 v8, 0x0

    return-object v8

    .line 7952
    :cond_8
    const-string/jumbo v8, "apps/"

    .line 7953
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "apps/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 7952
    const/4 v11, 0x0

    .line 7953
    const/4 v12, 0x0

    .line 7952
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7957
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7960
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7961
    .local v6, "slash":I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7962
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 7963
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7967
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 7968
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 7969
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7970
    if-gez v6, :cond_a

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7971
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 7972
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 7975
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 7921
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .locals 49
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .prologue
    .line 7092
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    move-result-object v37

    .line 7093
    .local v37, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v37, :cond_2

    .line 7095
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V

    .line 7098
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 7099
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7108
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_1

    .line 7109
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Saw new package; finalizing old one"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 7112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 7113
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 7114
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 7118
    :cond_1
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v7, "_manifest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7120
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7124
    move-object/from16 v0, v37

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 7125
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 7390
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v37    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_2
    :goto_0
    if-eqz v37, :cond_1d

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 7126
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v37    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_3
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v7, "_meta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7128
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    .line 7129
    move-object/from16 v0, v37

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7384
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v37    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_0
    move-exception v35

    .line 7385
    .local v35, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "io exception on restore socket read"

    move-object/from16 v0, v35

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7387
    const/16 v37, 0x0

    .local v37, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_0

    .line 7133
    .end local v35    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    .local v37, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_4
    const/16 v42, 0x1

    .line 7134
    .local v42, "okay":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 7135
    .local v45, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 7180
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Invalid policy from manifest"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7181
    const/16 v42, 0x0

    .line 7182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7187
    :cond_5
    :goto_2
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v7, ".."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7189
    :cond_6
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dropping invalid path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7191
    const/16 v42, 0x0

    .line 7196
    :cond_7
    if-eqz v42, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_8

    .line 7197
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Reusing existing agent instance"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7199
    :cond_8
    if-eqz v42, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_9

    .line 7200
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Need to launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7204
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    .line 7203
    if-eqz v5, :cond_13

    .line 7205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 7206
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->-get7(Lcom/android/server/backup/BackupManagerService;)I

    move-result v7

    .line 7205
    const/4 v8, 0x0

    invoke-interface {v5, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 7213
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 7217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_14

    .line 7218
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Clearing app data preparatory to full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7219
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 7224
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7230
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->setUpPipes()V

    .line 7232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    .line 7231
    if-eqz v5, :cond_16

    .line 7232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_16

    .line 7234
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "changing backup agent name to null for edm restore request"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7235
    new-instance v30, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 7236
    .local v30, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 7237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 7238
    const/4 v7, 0x3

    .line 7237
    move-object/from16 v0, v30

    invoke-virtual {v5, v0, v7}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 7243
    .end local v30    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_6
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7254
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_9

    .line 7255
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to create agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7256
    const/16 v42, 0x0

    .line 7257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 7258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7264
    :cond_9
    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 7274
    :cond_a
    :goto_8
    if-eqz v42, :cond_f

    .line 7275
    const/4 v4, 0x1

    .line 7276
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v46, v0

    .line 7277
    .local v46, "toCopy":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v16

    .line 7279
    .local v16, "token":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 7280
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 7281
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring OBB file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7282
    const-string/jumbo v8, " : "

    .line 7281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7282
    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 7284
    move-object/from16 v0, v37

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, v37

    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move-object/from16 v0, v37

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    .line 7285
    move-object/from16 v0, v37

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    .line 7283
    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 7318
    :goto_9
    if-eqz v42, :cond_e

    .line 7319
    const/16 v44, 0x1

    .line 7320
    .local v44, "pipeOkay":Z
    :try_start_5
    new-instance v43, Ljava/io/FileOutputStream;

    .line 7321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 7320
    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7322
    .local v43, "pipe":Ljava/io/FileOutputStream;
    :cond_b
    :goto_a
    const-wide/16 v8, 0x0

    cmp-long v5, v46, v8

    if-lez v5, :cond_d

    .line 7323
    move-object/from16 v0, p2

    array-length v5, v0

    int-to-long v8, v5

    cmp-long v5, v46, v8

    if-lez v5, :cond_1a

    .line 7324
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v48, v0

    .line 7325
    .local v48, "toRead":I
    :goto_b
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v48

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v39

    .line 7326
    .local v39, "nRead":I
    if-ltz v39, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move/from16 v0, v39

    int-to-long v12, v0

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 7327
    :cond_c
    if-gtz v39, :cond_1b

    .line 7344
    .end local v39    # "nRead":I
    .end local v48    # "toRead":I
    :cond_d
    move-object/from16 v0, v37

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 7348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    .line 7353
    .end local v4    # "agentSuccess":Z
    .end local v43    # "pipe":Ljava/io/FileOutputStream;
    .end local v44    # "pipeOkay":Z
    :cond_e
    if-nez v4, :cond_f

    .line 7355
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Agent failure restoring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; now ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 7358
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 7359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 7360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-set1(Lcom/android/server/backup/BackupManagerService;Z)Z

    .line 7370
    .end local v16    # "token":I
    .end local v46    # "toCopy":J
    :cond_f
    if-nez v42, :cond_2

    .line 7371
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "[discarding file content]"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7372
    move-object/from16 v0, v37

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v8, v12

    const-wide/16 v12, -0x200

    and-long v32, v8, v12

    .line 7373
    .local v32, "bytesToConsume":J
    :goto_c
    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-lez v5, :cond_2

    .line 7374
    move-object/from16 v0, p2

    array-length v5, v0

    int-to-long v8, v5

    cmp-long v5, v32, v8

    if-lez v5, :cond_1c

    .line 7375
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v48, v0

    .line 7376
    .restart local v48    # "toRead":I
    :goto_d
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v48

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v40, v0

    .line 7377
    .local v40, "nRead":J
    const-wide/16 v8, 0x0

    cmp-long v5, v40, v8

    if-ltz v5, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    add-long v8, v8, v40

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 7378
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v5, v40, v8

    if-lez v5, :cond_2

    .line 7379
    sub-long v32, v32, v40

    goto :goto_c

    .line 7137
    .end local v32    # "bytesToConsume":J
    .end local v40    # "nRead":J
    .end local v48    # "toRead":I
    :pswitch_0
    const/16 v42, 0x0

    .line 7138
    goto/16 :goto_2

    .line 7143
    :pswitch_1
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 7144
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "APK file; installing"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 7147
    .local v38, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v42

    .line 7149
    .local v42, "okay":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v42, :cond_11

    .line 7150
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 7149
    :goto_e
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7155
    move-object/from16 v0, v37

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 7156
    const/4 v5, 0x1

    return v5

    .line 7151
    :cond_11
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_e

    .line 7160
    .end local v38    # "installerName":Ljava/lang/String;
    .local v42, "okay":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7161
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 7166
    :pswitch_2
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7167
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "apk present but ACCEPT"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 7172
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 7208
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get8(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_3

    .line 7244
    :catch_1
    move-exception v35

    .restart local v35    # "e":Ljava/io/IOException;
    goto/16 :goto_7

    .line 7221
    .end local v35    # "e":Ljava/io/IOException;
    :cond_14
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "backup agent ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7222
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 7221
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7222
    const-string/jumbo v8, ") => no clear"

    .line 7221
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7246
    :catch_2
    move-exception v31

    .local v31, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_7

    .line 7226
    .end local v31    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_15
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "We\'ve initialized this app already; no clear required"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_5

    .line 7249
    :catch_3
    move-exception v36

    .line 7250
    .local v36, "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Fail to get application\'s info to perform restore - mdm request"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_7

    .line 7240
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_16
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 7241
    const/4 v8, 0x3

    .line 7240
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_6

    .line 7265
    :cond_17
    :try_start_9
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7266
    const-string/jumbo v8, " but agent is for "

    .line 7265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7266
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 7265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 7267
    const/16 v42, 0x0

    goto/16 :goto_8

    .line 7287
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v46    # "toCopy":J
    :cond_18
    :try_start_a
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invoking agent to restore file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7288
    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7287
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "system"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 7294
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "system process agent - spinning a thread"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7295
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;

    .line 7296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v15, v5, v7

    move-object/from16 v12, p0

    move-object/from16 v14, v37

    .line 7295
    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 7297
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v7, "restore-sys-runner"

    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_9

    .line 7304
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    :catch_4
    move-exception v35

    .line 7306
    .restart local v35    # "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Couldn\'t establish restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 7307
    const/4 v4, 0x0

    .line 7308
    const/16 v42, 0x0

    goto/16 :goto_9

    .line 7299
    .end local v35    # "e":Ljava/io/IOException;
    :cond_19
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v18, v5, v7

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move/from16 v21, v0

    .line 7300
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    .line 7301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v29, v0

    move/from16 v28, v16

    .line 7299
    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_9

    .line 7309
    :catch_5
    move-exception v34

    .line 7312
    .local v34, "e":Landroid/os/RemoteException;
    :try_start_d
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Agent crashed during full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 7313
    const/4 v4, 0x0

    .line 7314
    const/16 v42, 0x0

    goto/16 :goto_9

    .line 7324
    .end local v34    # "e":Landroid/os/RemoteException;
    .restart local v43    # "pipe":Ljava/io/FileOutputStream;
    .restart local v44    # "pipeOkay":Z
    :cond_1a
    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v48, v0

    goto/16 :goto_b

    .line 7328
    .restart local v39    # "nRead":I
    .restart local v48    # "toRead":I
    :cond_1b
    move/from16 v0, v39

    int-to-long v8, v0

    sub-long v46, v46, v8

    .line 7332
    if-eqz v44, :cond_b

    .line 7334
    const/4 v5, 0x0

    :try_start_e
    move-object/from16 v0, v43

    move-object/from16 v1, p2

    move/from16 v2, v39

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_a

    .line 7335
    :catch_6
    move-exception v35

    .line 7336
    .restart local v35    # "e":Ljava/io/IOException;
    :try_start_f
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Failed to write to restore pipe"

    move-object/from16 v0, v35

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 7337
    const/16 v44, 0x0

    goto/16 :goto_a

    .line 7375
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v35    # "e":Ljava/io/IOException;
    .end local v39    # "nRead":I
    .end local v43    # "pipe":Ljava/io/FileOutputStream;
    .end local v44    # "pipeOkay":Z
    .end local v46    # "toCopy":J
    .end local v48    # "toRead":I
    .restart local v32    # "bytesToConsume":J
    :cond_1c
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v48, v0

    goto/16 :goto_d

    .line 7390
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v32    # "bytesToConsume":J
    .end local v37    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v42    # "okay":Z
    .end local v45    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 7135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 26

    .prologue
    .line 6877
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "--- Performing full-dataset restore ---"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 6879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendStartRestore()V

    .line 6882
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 6883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string/jumbo v22, "com.android.sharedstoragebackup"

    sget-object v23, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6886
    :cond_0
    const/16 v17, 0x0

    .line 6887
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 6890
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 6897
    :cond_1
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 6898
    const v21, 0x8000

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 6899
    .local v5, "buffer":[B
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 6900
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .local v18, "rawInStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 6903
    .local v16, "rawDataIn":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 6904
    .local v6, "compressed":Z
    move-object/from16 v14, v18

    .line 6907
    .local v14, "preCompressStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 6908
    .local v12, "okay":Z
    :try_start_2
    const-string/jumbo v21, "ANDROID BACKUP\n"

    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v9

    .line 6909
    .local v9, "headerLen":I
    new-array v0, v9, [B

    move-object/from16 v20, v0

    .line 6910
    .local v20, "streamHeader":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6911
    const-string/jumbo v21, "ANDROID BACKUP\n"

    const-string/jumbo v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 6912
    .local v11, "magicBytes":[B
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 6914
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 6915
    .local v19, "s":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6916
    .local v4, "archiveVersion":I
    const/16 v21, 0x4

    move/from16 v0, v21

    if-gt v4, v0, :cond_c

    .line 6919
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_6

    const/4 v13, 0x1

    .line 6921
    .local v13, "pbkdf2Fallback":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 6922
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_7

    const/4 v6, 0x1

    .line 6923
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 6924
    const-string/jumbo v21, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 6926
    const/4 v12, 0x1

    .line 6937
    .end local v4    # "archiveVersion":I
    .end local v13    # "pbkdf2Fallback":Z
    .end local v19    # "s":Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v12, :cond_10

    .line 6938
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Invalid restore data; aborting."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/backup/BackupManagerService;->-set1(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6957
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 6961
    if-eqz v16, :cond_3

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 6962
    :cond_3
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 6963
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6968
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6969
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v22

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6972
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    monitor-exit v22

    .line 6975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6976
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 6977
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6942
    return-void

    .line 6891
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .end local v20    # "streamHeader":[B
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPrivilegeApp:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 6892
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Backup password mismatch; aborting"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 6957
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 6963
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 6968
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6969
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v22

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6972
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v22

    .line 6975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6976
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 6977
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6893
    return-void

    .line 6964
    :catch_0
    move-exception v8

    .line 6965
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 6968
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6971
    :catchall_1
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6919
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v4    # "archiveVersion":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v19    # "s":Ljava/lang/String;
    .restart local v20    # "streamHeader":[B
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "pbkdf2Fallback":Z
    goto/16 :goto_0

    .line 6922
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 6927
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_9

    .line 6928
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 6930
    if-eqz v14, :cond_2

    .line 6931
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 6933
    :cond_9
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Archive is encrypted but no password given"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_2

    .line 6954
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v13    # "pbkdf2Fallback":Z
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "streamHeader":[B
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .line 6955
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_b
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Unable to read restore input"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 6957
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 6961
    if-eqz v15, :cond_a

    :try_start_c
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 6962
    :cond_a
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 6963
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 6968
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6969
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    monitor-exit v22

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6972
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    monitor-exit v22

    .line 6975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6976
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 6977
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6876
    .end local v8    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    .line 6934
    .restart local v4    # "archiveVersion":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v19    # "s":Ljava/lang/String;
    .restart local v20    # "streamHeader":[B
    :cond_c
    :try_start_f
    const-string/jumbo v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Wrong header version: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_2

    .line 6956
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "streamHeader":[B
    :catchall_2
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .line 6957
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 6961
    if-eqz v15, :cond_d

    :try_start_10
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 6962
    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 6963
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 6968
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6969
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    monitor-exit v22

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6972
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    monitor-exit v22

    .line 6975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6976
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 6977
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "Full restore pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6956
    throw v21

    .line 6935
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v20    # "streamHeader":[B
    :cond_f
    :try_start_13
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Didn\'t read the right header magic"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_2

    .line 6964
    :catch_2
    move-exception v8

    .line 6965
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 6968
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6971
    :catchall_4
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6946
    :cond_10
    if-eqz v6, :cond_14

    :try_start_14
    new-instance v10, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v10, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6950
    .local v10, "in":Ljava/io/InputStream;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z

    move-result v7

    .line 6951
    .local v7, "didRestore":Z
    if-nez v7, :cond_11

    .line 6953
    const-string/jumbo v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Done consuming input tarfile, total bytes="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 6957
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    .line 6958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 6961
    if-eqz v16, :cond_12

    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 6962
    :cond_12
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 6963
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    .line 6968
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6969
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    monitor-exit v22

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6972
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    monitor-exit v22

    .line 6975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6976
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    .line 6977
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 6946
    .end local v7    # "didRestore":Z
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :cond_14
    move-object v10, v14

    .restart local v10    # "in":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 6964
    .restart local v7    # "didRestore":Z
    :catch_3
    move-exception v8

    .line 6965
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 6968
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6971
    :catchall_6
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6964
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v7    # "didRestore":Z
    .end local v9    # "headerLen":I
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "magicBytes":[B
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .end local v20    # "streamHeader":[B
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 6965
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 6968
    :catchall_7
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6971
    :catchall_8
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6964
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 6965
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "Close of restore data pipe threw"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 6968
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_9
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6971
    :catchall_a
    move-exception v21

    monitor-exit v22

    throw v21

    .line 6956
    :catchall_b
    move-exception v21

    goto/16 :goto_8

    .restart local v5    # "buffer":[B
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catchall_c
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 6954
    .end local v5    # "buffer":[B
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .end local v8    # "e":Ljava/io/IOException;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method sendEndRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8135
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 8137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8134
    :cond_0
    :goto_0
    return-void

    .line 8138
    :catch_0
    move-exception v0

    .line 8139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8140
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 8123
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 8126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8122
    :cond_0
    :goto_0
    return-void

    .line 8127
    :catch_0
    move-exception v0

    .line 8128
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8129
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8112
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 8114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8111
    :cond_0
    :goto_0
    return-void

    .line 8115
    :catch_0
    move-exception v0

    .line 8116
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8117
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7394
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 7393
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 7628
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 7629
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 7630
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 7631
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 7632
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 7633
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    .line 7627
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    .line 7634
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .prologue
    const/4 v8, 0x0

    .line 7412
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_2

    .line 7415
    if-eqz p2, :cond_0

    .line 7416
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v3

    .line 7417
    .local v3, "token":I
    new-instance v1, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v4}, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 7418
    .local v1, "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v6, 0x493e0

    invoke-virtual {v4, v3, v6, v7, v1}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 7419
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7421
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "system agent - restoreFinished on thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7423
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;I)V

    .line 7424
    .local v2, "runner":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-finished-runner"

    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 7429
    .end local v2    # "runner":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->await()V

    .line 7433
    .end local v1    # "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    .end local v3    # "token":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get4(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 7438
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_1

    .line 7439
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.backupconfirm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7443
    :cond_1
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Not killing after full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7448
    :goto_1
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 7411
    :cond_2
    return-void

    .line 7426
    .restart local v1    # "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    .restart local v3    # "token":I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, v3, v5}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7445
    .end local v1    # "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    .end local v3    # "token":I
    :catch_0
    move-exception v0

    .line 7446
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Lost app trying to shut down"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_2
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Killing host process"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7441
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get4(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7398
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 7400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7401
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7402
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7403
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7407
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 7397
    :cond_0
    return-void

    .line 7404
    :catch_0
    move-exception v0

    .line 7405
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
