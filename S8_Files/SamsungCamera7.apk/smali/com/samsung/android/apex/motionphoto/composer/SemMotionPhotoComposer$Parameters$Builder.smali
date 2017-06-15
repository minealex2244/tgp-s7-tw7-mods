.class public final Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlattenParam:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    .locals 3

    .prologue
    .line 729
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$1;)V

    .line 731
    .local v0, "p":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mFlattenParam:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mFlattenParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->unflatten(Ljava/lang/String;)V

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->put(Ljava/util/Map;)V

    .line 737
    const-string v1, "buffering-mode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 738
    const-string v1, "buffering-mode"

    const-string v2, "front"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    :cond_1
    const-string v1, "on"

    const-string v2, "effect-mode"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    const-string v1, "preview-format"

    const-string v2, "android-opaque"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    :cond_2
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-object p0
.end method

.method public setBufferingMode(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3
    .param p1, "isFrontBuffering"    # Z

    .prologue
    .line 618
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v2, "buffering-mode"

    if-eqz p1, :cond_0

    const-string v0, "front"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-object p0

    .line 618
    :cond_0
    const-string v0, "back"

    goto :goto_0
.end method

.method public setEffectRecording(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3
    .param p1, "effectRecording"    # Z

    .prologue
    .line 629
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v2, "effect-mode"

    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    return-object p0

    .line 629
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public setFlattenParameter(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mFlattenParam:Ljava/lang/String;

    .line 608
    return-object p0
.end method

.method public setFpsFactor(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3
    .param p1, "factor"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "fps-factor"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    return-object p0
.end method

.method public setPreviewFpsRange([I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 2
    .param p1, "fpsRange"    # [I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "fps-range"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-object p0
.end method

.method public setPreviewSize(II)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "preview-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-object p0
.end method

.method public setPreviewSize(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 2
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "preview-size"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    return-object p0
.end method

.method public setSaveAsFlipped(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3
    .param p1, "saveAsFlipped"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "save-as-flipped"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    return-object p0
.end method

.method public setUseIntrinsicTimestamp(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3
    .param p1, "useIntrinsicTimestamp"    # Z

    .prologue
    .line 640
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "use-intrinsic-timestamp"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    return-object p0
.end method

.method public setVideoFrameRate(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    .locals 3
    .param p1, "fps"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->mMap:Ljava/util/HashMap;

    const-string v1, "frame-rate"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-object p0
.end method
