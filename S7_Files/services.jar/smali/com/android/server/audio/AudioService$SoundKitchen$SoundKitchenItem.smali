.class Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$SoundKitchen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchenItem"
.end annotation


# instance fields
.field private mDevice:I

.field private mRatio:I

.field final synthetic this$1:Lcom/android/server/audio/AudioService$SoundKitchen;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$SoundKitchen;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/audio/AudioService$SoundKitchen;
    .param p2, "device"    # I
    .param p3, "ratio"    # I

    .prologue
    .line 12577
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->this$1:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12578
    iput p2, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    .line 12579
    iput p3, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mRatio:I

    .line 12577
    return-void
.end method


# virtual methods
.method public getDevice(Z)I
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 12587
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->this$1:Lcom/android/server/audio/AudioService$SoundKitchen;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12588
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    return v0

    .line 12590
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 12598
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mRatio:I

    return v0
.end method

.method public setDevice(I)V
    .locals 0
    .param p1, "device"    # I

    .prologue
    .line 12583
    iput p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    .line 12582
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "ratio"    # I

    .prologue
    .line 12594
    iput p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mRatio:I

    .line 12593
    return-void
.end method