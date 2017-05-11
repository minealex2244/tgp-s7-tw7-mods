.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "userInitiated"    # Z

    .prologue
    .line 4650
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4654
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4655
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 4656
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4657
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4658
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 4659
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 4660
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4661
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 4663
    const/4 v4, 0x0

    array-length v5, p3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, p3, v4

    .line 4665
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get8(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 4666
    const/16 v7, 0x40

    .line 4665
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4667
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4673
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring ineligible package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4676
    const/16 v7, -0x7d1

    .line 4675
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4663
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4678
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4682
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring full-data backup of key/value participant "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4686
    const/16 v7, -0x7d1

    .line 4685
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4700
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 4701
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4688
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4693
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring stopped package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4696
    const/16 v7, -0x7d1

    .line 4695
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_1

    .line 4699
    :cond_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4653
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4969
    if-eqz p1, :cond_1

    .line 4970
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 4971
    aget-object v1, p1, v3

    .line 4972
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    .line 4974
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4979
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    if-eqz v2, :cond_1

    .line 4980
    aget-object v1, p1, v5

    .line 4981
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    .line 4983
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4968
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    .line 4975
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 4976
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4984
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 4985
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 36

    .prologue
    .line 4713
    const/16 v16, 0x0

    .line 4716
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v31, 0x0

    .line 4718
    .local v31, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v8, 0x0

    .line 4719
    .local v8, "backoff":J
    const/4 v10, 0x0

    .line 4722
    .local v10, "backupRunStatus":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 4733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v30

    .line 4734
    .local v30, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v30, :cond_5

    .line 4735
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Transport not present; full data backup not performed"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4736
    const/16 v10, -0x3e8

    .line 4941
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;I)V

    .line 4945
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4946
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4952
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4953
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v33

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4963
    :cond_1
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4737
    return-void

    .line 4725
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    :try_start_2
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "full backup requested but e="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4726
    const-string/jumbo v34, " p="

    .line 4725
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v34, v0

    .line 4725
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4726
    const-string/jumbo v34, "; ignoring"

    .line 4725
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4729
    const/16 v10, -0x7d1

    .line 4941
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;I)V

    .line 4945
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4946
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4952
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4953
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v33

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4963
    :cond_4
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4730
    return-void

    .line 4952
    :catchall_0
    move-exception v32

    monitor-exit v33

    throw v32

    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1
    move-exception v32

    monitor-exit v33

    throw v32

    .line 4741
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4742
    .local v6, "N":I
    const/16 v32, 0x2000

    move/from16 v0, v32

    new-array v13, v0, [B

    .line 4743
    .local v13, "buffer":[B
    const/16 v19, 0x0

    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v6, :cond_1d

    .line 4744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 4745
    .local v14, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 4747
    .local v23, "packageName":Ljava/lang/String;
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Initiating full-data transport backup of "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    const/16 v32, 0xb18

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4751
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    .line 4754
    .local v31, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    const/16 v18, 0x1

    .line 4756
    .local v18, "flags":I
    :goto_1
    const/16 v32, 0x0

    aget-object v32, v31, v32

    .line 4755
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move/from16 v2, v18

    invoke-interface {v0, v14, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v7

    .line 4757
    .local v7, "backupPackageStatus":I
    if-nez v7, :cond_a

    .line 4760
    const/16 v32, 0x0

    aget-object v32, v31, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4761
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    .line 4764
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 4766
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v32, 0x1

    aget-object v32, v16, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-direct {v11, v0, v1, v14, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;)V

    .line 4769
    .local v11, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/16 v32, 0x1

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4770
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-object v32, v16, v33

    .line 4774
    new-instance v32, Ljava/lang/Thread;

    const-string/jumbo v33, "package-backup-bridge"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->start()V

    .line 4779
    new-instance v20, Ljava/io/FileInputStream;

    .line 4780
    const/16 v32, 0x0

    aget-object v32, v16, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    .line 4779
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4781
    .local v20, "in":Ljava/io/FileInputStream;
    new-instance v22, Ljava/io/FileOutputStream;

    .line 4782
    const/16 v32, 0x1

    aget-object v32, v31, v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    .line 4781
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4783
    .local v22, "out":Ljava/io/FileOutputStream;
    const-wide/16 v28, 0x0

    .line 4784
    .local v28, "totalRead":J
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v24

    .line 4786
    .local v24, "preflightResult":J
    const-wide/16 v32, 0x0

    cmp-long v32, v24, v32

    if-gez v32, :cond_d

    .line 4788
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Backup error after preflight of package "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4789
    const-string/jumbo v34, ": "

    .line 4788
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4790
    const-string/jumbo v34, ", not running backup."

    .line 4788
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    move-wide/from16 v0, v24

    long-to-int v7, v0

    .line 4830
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v32

    if-nez v32, :cond_13

    .line 4831
    const/16 v7, -0x3e8

    .line 4832
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 4853
    :cond_7
    :goto_3
    if-nez v7, :cond_14

    .line 4855
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v12

    .line 4856
    .local v12, "backupRunnerResult":I
    if-eqz v12, :cond_8

    .line 4859
    move v7, v12

    .line 4868
    .end local v12    # "backupRunnerResult":I
    :cond_8
    :goto_4
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Done delivering backup data: result="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    if-eqz v7, :cond_9

    .line 4873
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Error "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " backing up "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    :cond_9
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v8

    .line 4881
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport suggested backoff="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "preflightResult":J
    .end local v28    # "totalRead":J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 4889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 4892
    :cond_b
    const/16 v32, -0x3ea

    move/from16 v0, v32

    if-ne v7, v0, :cond_17

    .line 4893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4894
    const/16 v33, -0x3ea

    .line 4893
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4896
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport rejected backup of "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4897
    const-string/jumbo v34, ", skipping"

    .line 4896
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v23, v32, v33

    .line 4900
    const-string/jumbo v33, "transport rejected"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    .line 4899
    const/16 v33, 0xb19

    move/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4933
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4934
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4743
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 4754
    .end local v7    # "backupPackageStatus":I
    .end local v18    # "flags":I
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "flags":I
    goto/16 :goto_1

    .line 4794
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "preflightResult":J
    .restart local v28    # "totalRead":J
    :cond_d
    const/16 v21, 0x0

    .line 4796
    .local v21, "nRead":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v32

    if-nez v32, :cond_11

    .line 4798
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Full backup task told to stop"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_e
    const/16 v32, -0x3ed

    move/from16 v0, v32

    if-ne v7, v0, :cond_6

    .line 4820
    const/16 v32, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v26

    .line 4821
    .local v26, "quota":J
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Package hit quota limit in-flight "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4822
    const-string/jumbo v34, ": "

    .line 4821
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 4822
    const-string/jumbo v34, " of "

    .line 4821
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_2

    .line 4936
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v18    # "flags":I
    .end local v19    # "i":I
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v21    # "nRead":I
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "preflightResult":J
    .end local v26    # "quota":J
    .end local v28    # "totalRead":J
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v15

    .line 4937
    .local v15, "e":Ljava/lang/Exception;
    const/16 v10, -0x3e8

    .line 4938
    :try_start_5
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Exception trying full transport backup"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4941
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;I)V

    .line 4945
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4946
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4952
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4953
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    monitor-exit v33

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4963
    :cond_10
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4711
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_7
    return-void

    .line 4802
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "flags":I
    .restart local v19    # "i":I
    .restart local v20    # "in":Ljava/io/FileInputStream;
    .restart local v21    # "nRead":I
    .restart local v22    # "out":Ljava/io/FileOutputStream;
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v24    # "preflightResult":J
    .restart local v28    # "totalRead":J
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_11
    :try_start_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    .line 4804
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "in.read(buffer) from app: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    if-lez v21, :cond_12

    .line 4807
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4808
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v7

    .line 4809
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v28, v28, v32

    .line 4810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    if-eqz v32, :cond_12

    const-wide/16 v32, 0x0

    cmp-long v32, v24, v32

    if-lez v32, :cond_12

    .line 4811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4812
    new-instance v33, Landroid/app/backup/BackupProgress;

    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 4811
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 4815
    :cond_12
    if-lez v21, :cond_e

    .line 4816
    if-nez v7, :cond_e

    goto/16 :goto_6

    .line 4838
    .end local v21    # "nRead":I
    :cond_13
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v17

    .line 4839
    .local v17, "finishResult":I
    if-nez v7, :cond_7

    .line 4840
    move/from16 v7, v17

    goto/16 :goto_3

    .line 4863
    .end local v17    # "finishResult":I
    :cond_14
    const-string/jumbo v32, "PFTBT"

    const-string/jumbo v33, "Transport-level failure; cancelling agent work"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_4

    .line 4939
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v18    # "flags":I
    .end local v19    # "i":I
    .end local v20    # "in":Ljava/io/FileInputStream;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "preflightResult":J
    .end local v28    # "totalRead":J
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v32

    .line 4941
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;I)V

    .line 4945
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4946
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_15

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4952
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4953
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit v33

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_16

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4963
    :cond_16
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4939
    throw v32

    .line 4902
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v18    # "flags":I
    .restart local v19    # "i":I
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_17
    const/16 v32, -0x3ed

    move/from16 v0, v32

    if-ne v7, v0, :cond_18

    .line 4903
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4904
    const/16 v33, -0x3ed

    .line 4903
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4906
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport quota exceeded for package: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    const/16 v32, 0xb1d

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto/16 :goto_5

    .line 4911
    :cond_18
    const/16 v32, -0x3eb

    move/from16 v0, v32

    if-ne v7, v0, :cond_19

    .line 4912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4913
    const/16 v33, -0x3eb

    .line 4912
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4914
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Application failure for package: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    const/16 v32, 0xb07

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_5

    .line 4918
    :cond_19
    if-eqz v7, :cond_1c

    .line 4919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4920
    const/16 v33, -0x3e8

    .line 4919
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4921
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Transport failed; aborting backup: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0xb1a

    move/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4924
    const/16 v10, -0x3e8

    .line 4941
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;I)V

    .line 4945
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4946
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1a

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4952
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4953
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v33

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4963
    :cond_1b
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4925
    return-void

    .line 4952
    :catchall_3
    move-exception v32

    monitor-exit v33

    throw v32

    .line 4928
    :cond_1c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    .line 4929
    const/16 v33, 0x0

    .line 4928
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4930
    const/16 v32, 0xb1b

    move/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_5

    .line 4941
    .end local v7    # "backupPackageStatus":I
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "flags":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v31    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_1d
    const-string/jumbo v32, "PFTBT"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Full backup completed with status: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;I)V

    .line 4945
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4946
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1e

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4952
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4953
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    monitor-exit v33

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1f

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4963
    :cond_1f
    const-string/jumbo v32, "BackupManagerService"

    const-string/jumbo v33, "Full data backup pass finished."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 4952
    :catchall_4
    move-exception v32

    monitor-exit v33

    throw v32

    .end local v6    # "N":I
    .end local v13    # "buffer":[B
    .end local v19    # "i":I
    .end local v30    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v15    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v32

    monitor-exit v33

    throw v32

    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v32

    monitor-exit v33

    throw v32
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 4707
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4706
    return-void
.end method