.class public final Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
.super Lcom/samsung/android/apex/motionphoto/SemApexParameters;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;
    }
.end annotation


# static fields
.field private static final BUFFERING_BACK:Ljava/lang/String; = "back"

.field private static final BUFFERING_FRONT:Ljava/lang/String; = "front"

.field private static final EFFECT_OFF:Ljava/lang/String; = "off"

.field private static final EFFECT_ON:Ljava/lang/String; = "on"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>()V

    .line 581
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$1;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramters"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>()V

    .line 589
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->unflatten(Ljava/lang/String;)V

    .line 590
    return-void
.end method
