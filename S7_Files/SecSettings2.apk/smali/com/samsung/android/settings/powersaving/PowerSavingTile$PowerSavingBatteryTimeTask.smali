.class Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;
.super Landroid/os/AsyncTask;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingBatteryTimeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final SMART_MANAGER_BATTERY_LIFE_EXTENDED_TIME_IN_MINS:Ljava/lang/String;

.field private final SMART_MANAGER_BATTERY_LIFE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 388
    const-string/jumbo v0, "content://com.samsung.android.sm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "BatteryLife"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->SMART_MANAGER_BATTERY_LIFE_URI:Landroid/net/Uri;

    .line 389
    const-string/jumbo v0, "extended_time_in_mins"

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->SMART_MANAGER_BATTERY_LIFE_EXTENDED_TIME_IN_MINS:Ljava/lang/String;

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 397
    .local v8, "getTimeLogFlag":J
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-get2(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->SMART_MANAGER_BATTERY_LIFE_URI:Landroid/net/Uri;

    .line 398
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "extended_time_in_mins"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 397
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 404
    :goto_0
    if-eqz v6, :cond_0

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    const-string/jumbo v1, "extended_time_in_mins"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-set0(Lcom/samsung/android/settings/powersaving/PowerSavingTile;J)J

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSavingBatteryTimeTask, doInBackground during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 410
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    const-string/jumbo v2, "ms"

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v10

    .line 399
    :catch_0
    move-exception v7

    .line 400
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IllegalArgumentException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "vo"    # Ljava/lang/Object;

    .prologue
    .line 416
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "vo":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "vo"    # Ljava/lang/Void;

    .prologue
    .line 417
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSavingBatteryTimeTask - mBatteryExtendedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-get1(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method