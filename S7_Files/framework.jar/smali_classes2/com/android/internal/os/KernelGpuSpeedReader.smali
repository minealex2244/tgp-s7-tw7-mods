.class public Lcom/android/internal/os/KernelGpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelGpuSpeedReader.java"


# static fields
.field public static final MALI_GPU_UTIL_FILE:Ljava/lang/String; = "/sys/devices/14ac0000.mali/utilization_stats"

.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelGpuSpeedReader"

.field private static mProcFile:Ljava/lang/String; = null

.field private static final sProcFile:Ljava/lang/String; = "/sys/devices/14ac0000.mali/time_in_state"


# instance fields
.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x3c

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    .line 44
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    .line 47
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/devices/14ac0000.mali/time_in_state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "/sys/devices/14ac0000.mali/time_in_state"

    sput-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 46
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 58
    sget-object v8, Lcom/android/internal/os/KernelGpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 59
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    .line 62
    :cond_0
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v10, "/sys/devices/14ac0000.mali/time_in_state"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v5, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 65
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v4, 0x0

    .line 66
    .local v4, "speedIndex":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v5, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 71
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v6, v10, v12

    .line 72
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v10, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v10, v4

    sub-long v10, v6, v10

    aput-wide v10, v8, v4

    .line 73
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v8, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v6    # "time":J
    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 77
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_2
    const-string/jumbo v8, "KernelGpuSpeedReader"

    const-string/jumbo v9, "Failed to read gpu-freq"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    .line 79
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "speedIndex":I
    .restart local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_1
    move-exception v9

    goto :goto_1

    :cond_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    if-eqz v9, :cond_6

    :try_start_6
    throw v9

    .line 76
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    if-nez v9, :cond_5

    move-object v9, v10

    goto :goto_6

    :cond_5
    if-eq v9, v10, :cond_4

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    goto :goto_5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method
