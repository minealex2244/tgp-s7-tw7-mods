.class public final Lcom/sec/android/app/camera/help/HelpHubImageViewer;
.super Landroid/widget/RelativeLayout;
.source "HelpHubImageViewer.java"


# static fields
.field private static final DEFAULT_DELAY_TIME:I = 0x7d0


# instance fields
.field private final mActContext:Landroid/app/Activity;

.field private mAutoStart:Z

.field private mCurrentIndex:I

.field private mDrawablesTypedArray:Landroid/content/res/TypedArray;

.field private final mImageView:Landroid/widget/ImageView;

.field private mOneShot:Z

.field private mPeriod:I

.field private mShowSlideTime:[I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mViewAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    .line 49
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I

    move-object v4, p1

    .line 70
    check-cast v4, Landroid/app/Activity;

    iput-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mActContext:Landroid/app/Activity;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "array":Landroid/content/res/TypedArray;
    if-eqz p2, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/camera/R$styleable;->HelpHubImageViewer:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 78
    .local v3, "resID":I
    if-lez v3, :cond_0

    .line 79
    iget-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mActContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    .line 82
    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 83
    if-lez v3, :cond_1

    .line 84
    iget-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mActContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I

    .line 94
    :cond_1
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mOneShot:Z

    .line 95
    const/4 v4, 0x2

    const/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mPeriod:I

    .line 96
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mAutoStart:Z

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v3    # "resID":I
    :cond_2
    :goto_0
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mImageView:Landroid/widget/ImageView;

    .line 107
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    iget-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->addView(Landroid/view/View;)V

    .line 112
    return-void

    .line 99
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "HelpHubImageViewer"

    const-string v5, "Could not find styled attributes."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mViewAttached:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/help/HelpHubImageViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mOneShot:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mAutoStart:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->stopTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mActContext:Landroid/app/Activity;

    return-object v0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->stopTimer()V

    .line 325
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimer:Ljava/util/Timer;

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->createTimerTask()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    if-le v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimerTask:Ljava/util/TimerTask;

    iget-object v2, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I

    iget v3, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mPeriod:I

    int-to-long v2, v2

    iget v4, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mPeriod:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 340
    iput-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimerTask:Ljava/util/TimerTask;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 345
    iput-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimer:Ljava/util/Timer;

    .line 349
    :cond_1
    return-void
.end method


# virtual methods
.method createTimerTask()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;-><init>(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mTimerTask:Ljava/util/TimerTask;

    .line 321
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mViewAttached:Z

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startDrawablesAnimation()V

    .line 226
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 227
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mViewAttached:Z

    .line 232
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->stopTimer()V

    .line 233
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 234
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 242
    .local v2, "values":[I
    const/4 v1, 0x0

    .line 244
    .local v1, "playing":I
    const/4 v3, 0x0

    invoke-super {p0, v3}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 246
    invoke-interface {p1, v0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 249
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 250
    aget v1, v2, v4

    .line 251
    aget v3, v2, v5

    iput v3, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->setSlide()V

    .line 257
    if-ne v1, v5, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startTimer()V

    .line 262
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    return-void

    .line 239
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "playing":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 274
    const/4 v1, 0x1

    .line 277
    const/4 v4, 0x2

    new-array v3, v4, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    aput v5, v3, v4

    .line 280
    .local v3, "values":[I
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 281
    sget-object v4, Lcom/sec/android/app/camera/help/HelpHubImageViewerParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 282
    .local v2, "state":Landroid/os/Parcelable;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    return-object v2
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startTimer()V

    .line 129
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onStartTemporaryDetach()V

    .line 130
    return-void
.end method

.method public setDrawablesArray(I)V
    .locals 1
    .param p1, "drawablesArrayId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mActContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    .line 140
    return-void
.end method

.method public setPluginDrawables(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "drawablesTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    .line 149
    return-void
.end method

.method protected setSlide()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    iget v2, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public startDrawablesAnimation()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    iget v2, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I

    .line 211
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 215
    iget-boolean v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mAutoStart:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startTimer()V

    .line 220
    :cond_0
    return-void
.end method
