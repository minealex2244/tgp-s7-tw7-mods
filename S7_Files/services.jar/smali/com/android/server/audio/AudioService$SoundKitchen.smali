.class Lcom/android/server/audio/AudioService$SoundKitchen;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64


# instance fields
.field private mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedDevices:I

.field private mState:Z

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v1, 0x0

    .line 12334
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    .line 12336
    iput v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    .line 12337
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen;->setState(Z)V

    .line 12334
    return-void
.end method

.method private setDeviceToNative(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .prologue
    .line 12562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setdevice_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12563
    const-string/jumbo v1, ";"

    .line 12562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12564
    const-string/jumbo v1, "multisound_setdevice_device"

    .line 12562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12564
    const-string/jumbo v1, "="

    .line 12562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12561
    return-void
.end method

.method private setStateToNative(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 12557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12556
    return-void
.end method

.method private setVolumeToNative(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .prologue
    .line 12568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setvolume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12569
    const-string/jumbo v1, ";"

    .line 12568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12570
    const-string/jumbo v1, "multisound_setvolume_volume"

    .line 12568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12570
    const-string/jumbo v1, "="

    .line 12568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12567
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 12535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\nMultiSound, size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12536
    iget-object v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 12537
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12538
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 12539
    .local v7, "uid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v0

    .line 12540
    .local v0, "device":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v5

    .line 12541
    .local v5, "ratio":I
    const-string/jumbo v4, ""

    .line 12543
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 12547
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "), device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", volume = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12544
    :catch_0
    move-exception v1

    .line 12545
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AudioService"

    const-string/jumbo v9, "not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12549
    .end local v0    # "device":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "ratio":I
    .end local v7    # "uid":I
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pinned Devices:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12550
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Current Default Device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12552
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pin Device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12553
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pin App:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12534
    return-void
.end method

.method public getDevice(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 12428
    const/4 v0, 0x0

    .line 12430
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12431
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v0

    .line 12433
    :cond_0
    const v1, 0x8000

    if-eq v0, v1, :cond_1

    .line 12434
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    if-nez v1, :cond_1

    .line 12435
    const/4 v0, 0x0

    .line 12438
    :cond_1
    return v0
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .locals 8
    .param p1, "device"    # I

    .prologue
    .line 12495
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 12496
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12497
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 12499
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 12500
    :catch_0
    move-exception v0

    .line 12501
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12505
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public getPinDevice()I
    .locals 2

    .prologue
    .line 12488
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    if-eqz v0, :cond_0

    .line 12489
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    const v1, -0x8001

    and-int/2addr v0, v1

    return v0

    .line 12491
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 12364
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    return v0
.end method

.method public getUidList()[I
    .locals 8

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    .line 12465
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 12467
    .local v3, "list":[I
    const/4 v2, 0x0

    .line 12468
    .local v2, "i":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 12469
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12470
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 12471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    .line 12472
    const/4 v2, 0x1

    .line 12477
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12478
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-eq v5, v7, :cond_2

    .line 12479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    .line 12480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12484
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    :cond_3
    return-object v3
.end method

.method public getVolume(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 12458
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12459
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v0

    return v0

    .line 12461
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public initByAudiosServerDied()V
    .locals 8

    .prologue
    .line 12509
    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "initByAudiosServerDied"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12511
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 12512
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12513
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12514
    .local v5, "uid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v0

    .line 12515
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v3

    .line 12516
    .local v3, "ratio":I
    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12517
    invoke-direct {p0, v5, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    goto :goto_0

    .line 12520
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v3    # "ratio":I
    .end local v5    # "uid":I
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative(Z)V

    .line 12508
    return-void
.end method

.method public removeItem(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 12524
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12525
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12526
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12527
    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12528
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    .line 12529
    const/4 v0, 0x1

    return v0

    .line 12531
    :cond_0
    return v3
.end method

.method public setDevice(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .prologue
    const v11, 0x8000

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 12368
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12370
    .local v3, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 12371
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "same device pin."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12372
    return-void

    .line 12375
    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v11, :cond_3

    .line 12377
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 12378
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12379
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-eq v5, v11, :cond_1

    .line 12382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq p1, v5, :cond_1

    .line 12383
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->-wrap51(Lcom/android/server/audio/AudioService;I)V

    .line 12385
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12389
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setDevice(I)V

    .line 12391
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 12392
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12394
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v8}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12396
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    goto/16 :goto_0

    .line 12386
    :catch_0
    move-exception v0

    .line 12387
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in Thread.sleep() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12402
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    :cond_3
    if-nez v3, :cond_6

    .line 12403
    new-instance v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .end local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    invoke-direct {v3, p0, p2, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;II)V

    .line 12407
    .restart local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    :goto_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12409
    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 12410
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12412
    :cond_4
    iput v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    .line 12414
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 12415
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12416
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-eqz v5, :cond_5

    .line 12417
    iget v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    goto :goto_3

    .line 12405
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    :cond_6
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setDevice(I)V

    goto :goto_2

    .line 12420
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    :cond_7
    if-eqz p2, :cond_8

    .line 12421
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12367
    :goto_4
    return-void

    .line 12423
    :cond_8
    invoke-direct {p0, p1, v8}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    goto :goto_4
.end method

.method public setState(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 12341
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    if-eq p1, v3, :cond_2

    .line 12342
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    .line 12344
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v2

    .line 12346
    .local v2, "list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 12347
    if-nez p1, :cond_0

    .line 12348
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get63(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result v3

    const v4, 0x8000

    if-eq v3, v4, :cond_0

    .line 12349
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    aget v4, v2, v1

    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->-wrap51(Lcom/android/server/audio/AudioService;I)V

    .line 12351
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    .line 12346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12355
    :cond_1
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12359
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative(Z)V

    .line 12340
    .end local v1    # "i":I
    .end local v2    # "list":[I
    :cond_2
    return-void

    .line 12356
    .restart local v1    # "i":I
    .restart local v2    # "list":[I
    :catch_0
    move-exception v0

    .line 12357
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in Thread.sleep() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setVolume(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .prologue
    const/4 v3, 0x0

    .line 12442
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12444
    .local v0, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-nez v0, :cond_1

    .line 12445
    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .end local v0    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    invoke-direct {v0, p0, v3, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;II)V

    .line 12449
    .restart local v0    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12451
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 12452
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12454
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    .line 12441
    return-void

    .line 12447
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setVolume(I)V

    goto :goto_0
.end method
