.class Lcom/android/systemui/usb/StorageNotification$5;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "volId"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "volId":Ljava/lang/String;
    const-string/jumbo v9, "volUUID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "volUUID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 219
    .local v3, "sdCardVolInfo":Landroid/os/storage/VolumeInfo;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->-get4(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string/jumbo v10, "persist.systemUI.sdUUID"

    const-string/jumbo v11, "none"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "curSdUUID":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->-get3(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    .line 223
    .local v8, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 226
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-nez v9, :cond_0

    .line 227
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 228
    :cond_1
    move-object v3, v4

    .line 234
    .end local v3    # "sdCardVolInfo":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    const-string/jumbo v9, "samsung.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 235
    const-string/jumbo v9, "StorageNotification"

    const-string/jumbo v10, "SD Card Noti is deleted."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v3, :cond_5

    .line 238
    const-string/jumbo v9, "StorageNotification"

    const-string/jumbo v10, "SD Card is NOT removed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    .line 250
    const-string/jumbo v9, "StorageNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mNotiDeleteReceiver Set STORAGE_NOTIFICATION_SD_CARD_UUID with Current SD Card UUID["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->-get4(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 253
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "persist.systemUI.sdUUID"

    invoke-interface {v2, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    :goto_1
    return-void

    .line 242
    :cond_5
    if-nez v3, :cond_3

    if-eqz v7, :cond_3

    .line 243
    const-string/jumbo v9, "StorageNotification"

    const-string/jumbo v10, "SD Card is removed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object v1, v7

    goto :goto_0

    .line 256
    :cond_6
    const-string/jumbo v9, "StorageNotification"

    const-string/jumbo v10, "mNotiDeleteReceiver Set STORAGE_NOTIFICATION_SD_CARD_UUID with NONE for SD Card UUID NO VALUE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
