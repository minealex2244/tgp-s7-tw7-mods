.class public Lcom/android/launcher3/util/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmPending:Z

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/alarm/Alarm;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmTriggerTime:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmPending:Z

    .line 56
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 60
    iput-boolean v4, p0, Lcom/android/launcher3/util/alarm/Alarm;->mWaitingForCallback:Z

    .line 61
    iget-wide v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mWaitingForCallback:Z

    .line 75
    .end local v0    # "currentTime":J
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "currentTime":J
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmPending:Z

    .line 70
    iget-object v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-interface {v2, p0}, Lcom/android/launcher3/util/alarm/OnAlarmListener;->onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 7
    .param p1, "millisecondsInFuture"    # J

    .prologue
    const/4 v6, 0x1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, "currentTime":J
    iput-boolean v6, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmPending:Z

    .line 46
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmTriggerTime:J

    .line 47
    iget-boolean v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mWaitingForCallback:Z

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/launcher3/util/alarm/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    iput-boolean v6, p0, Lcom/android/launcher3/util/alarm/Alarm;->mWaitingForCallback:Z

    .line 51
    :cond_0
    return-void
.end method

.method public setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V
    .locals 0
    .param p1, "alarmListener"    # Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/launcher3/util/alarm/Alarm;->mAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 39
    return-void
.end method
