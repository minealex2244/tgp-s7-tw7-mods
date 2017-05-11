.class public Lcom/sec/android/app/camera/util/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallState"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static isCalling(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "isCalling":Z
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CallState;->isOffHook(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 49
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CallState;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 50
    invoke-static {}, Lcom/sec/android/app/camera/util/CallState;->isVoIPCallOngoing()Z

    move-result v1

    or-int/2addr v0, v1

    .line 51
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public static isOffHook(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isOffHook":Z
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 58
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 60
    .local v2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 62
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->semGetCallState(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method public static isOtherVTCallOngoing(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 72
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 73
    .local v1, "value":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 74
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtherVTCallOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v2, 0x1

    .line 77
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRmsConnected(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 81
    const/4 v8, 0x0

    .line 82
    .local v8, "status":I
    const/4 v6, 0x0

    .line 84
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "content://com.lguplus.rms/service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "connected"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 94
    :cond_0
    if-eqz v6, :cond_1

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    const/4 v6, 0x0

    .line 99
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    if-ne v8, v9, :cond_3

    move v1, v9

    :goto_1
    return v1

    .line 91
    :catch_0
    move-exception v7

    .line 92
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RMS"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz v6, :cond_1

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    const/4 v6, 0x0

    goto :goto_0

    .line 94
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    const/4 v6, 0x0

    :cond_2
    throw v1

    .line 99
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isVTCallOngoing(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 106
    .local v0, "isVTCall":Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 107
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result v0

    .line 109
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTCallOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 112
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isVoIPCallOngoing()Z
    .locals 5

    .prologue
    .line 118
    new-instance v1, Lcom/samsung/android/voip/SemVoipInterfaceManager;

    invoke-direct {v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager;-><init>()V

    .line 119
    .local v1, "voipInterfaceManager":Lcom/samsung/android/voip/SemVoipInterfaceManager;
    invoke-virtual {v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->isVoipIdle()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 120
    .local v0, "isVoIpCall":Z
    :goto_0
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPCallOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v0

    .line 119
    .end local v0    # "isVoIpCall":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 125
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 126
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 127
    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 129
    :cond_0
    return-void
.end method

.method public static unregisterCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 132
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 133
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 136
    :cond_0
    return-void
.end method
