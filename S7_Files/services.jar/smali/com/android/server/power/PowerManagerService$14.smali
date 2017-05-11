.class Lcom/android/server/power/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->dumpDebugLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 7717
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 7719
    const/4 v4, 0x0

    .line 7722
    .local v4, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/log"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7723
    .local v0, "dataLogDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7724
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 7727
    :cond_0
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "/system/bin/sh"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "-c"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string/jumbo v7, "logcat -v threadtime -d -b events -b system -b main > /data/log/dumpState_LastAutoPowerOff.log"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 7729
    .local v6, "shellCommandForLogcat":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 7730
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 7732
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v7, "/system/bin/sh"

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const-string/jumbo v7, "-c"

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-string/jumbo v7, "dumpsys power >> /data/log/dumpState_LastAutoPowerOff.log"

    const/4 v8, 0x2

    aput-object v7, v5, v8

    .line 7733
    .local v5, "shellCommandForDumpsys":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 7734
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7743
    .end local v0    # "dataLogDirectory":Ljava/io/File;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "shellCommandForDumpsys":[Ljava/lang/String;
    .end local v6    # "shellCommandForLogcat":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "PowerManagerService"

    const-string/jumbo v8, "dumpDebugLog -"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7718
    return-void

    .line 7739
    :catch_0
    move-exception v2

    .line 7740
    .local v2, "exception":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dumpDebugLog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7737
    .end local v2    # "exception":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 7738
    .local v3, "exception":Ljava/lang/SecurityException;
    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dumpDebugLog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7735
    .end local v3    # "exception":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 7736
    .local v1, "exception":Ljava/io/IOException;
    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dumpDebugLog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
