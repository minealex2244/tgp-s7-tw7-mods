.class Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupObbConnection"
.end annotation


# instance fields
.field volatile mService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3666
    return-void
.end method

.method private waitForConnection()V
    .locals 3

    .prologue
    .line 3725
    monitor-enter p0

    .line 3726
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    if-nez v1, :cond_0

    .line 3727
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "...waiting for OBB service binding..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3729
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3730
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 3732
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Connected to OBB service; continuing"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 3724
    return-void

    .line 3725
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3684
    const/4 v3, 0x0

    .line 3685
    .local v3, "success":Z
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    .line 3687
    const/4 v2, 0x0

    .line 3689
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 3690
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v4

    .line 3691
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v6, 0x493e0

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 3692
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v5, v6, v7, v4, v8}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 3693
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v5, v6, p2}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J

    .line 3694
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3699
    .local v3, "success":Z
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3700
    if-eqz v2, :cond_1

    .line 3701
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3702
    :cond_0
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3708
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "success":Z
    .end local v4    # "token":I
    :cond_1
    :goto_0
    return v3

    .line 3704
    .restart local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "success":Z
    .restart local v4    # "token":I
    :catch_0
    move-exception v0

    .line 3705
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3695
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "token":I
    .local v3, "success":Z
    :catch_1
    move-exception v1

    .line 3696
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to back up OBBs for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3699
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3700
    if-eqz v2, :cond_1

    .line 3701
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3702
    :cond_2
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3704
    :catch_2
    move-exception v0

    .line 3705
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3697
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 3699
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3700
    if-eqz v2, :cond_4

    .line 3701
    const/4 v6, 0x0

    aget-object v6, v2, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3702
    :cond_3
    const/4 v6, 0x1

    aget-object v6, v2, v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3697
    :cond_4
    :goto_1
    throw v5

    .line 3704
    :catch_3
    move-exception v0

    .line 3705
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "I/O error closing down OBB backup"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public establish()V
    .locals 5

    .prologue
    .line 3671
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initiating bind of OBB service on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    .line 3673
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    .line 3674
    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    .line 3672
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3675
    .local v0, "obbIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 3676
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    .line 3675
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 3670
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3738
    monitor-enter p0

    .line 3739
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3740
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OBB service connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3741
    const-string/jumbo v2, " connected on "

    .line 3740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3737
    return-void

    .line 3738
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3748
    monitor-enter p0

    .line 3749
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3750
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OBB service connection disconnected on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3747
    return-void

    .line 3748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 3714
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    .line 3717
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3713
    :goto_0
    return-void

    .line 3719
    :catch_0
    move-exception v2

    .line 3720
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to restore OBBs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 3680
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3679
    return-void
.end method
