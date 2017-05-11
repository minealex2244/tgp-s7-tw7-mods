.class public Lcom/android/launcher3/common/compat/UserManagerCompatV17;
.super Lcom/android/launcher3/common/compat/UserManagerCompatV16;
.source "UserManagerCompatV17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field protected mUserManager:Landroid/os/UserManager;

.field protected mUserToSerialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsers:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/UserManagerCompatV16;-><init>()V

    .line 40
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    .line 41
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 5

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    .line 72
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    .line 73
    .local v0, "myUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 74
    .local v2, "serial":J
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 76
    .end local v0    # "myUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v2    # "serial":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J
    .locals 4
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 47
    .local v0, "serial":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit p0

    .line 55
    .end local v0    # "serial":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 54
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1
    .param p1, "serialNumber"    # J

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    monitor-exit p0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
