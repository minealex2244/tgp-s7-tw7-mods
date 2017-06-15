.class public Lcom/sec/android/app/camera/AttachActivity;
.super Landroid/app/Activity;
.source "AttachActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static MAX_FONT_SCALE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AttachActivity"


# instance fields
.field private mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mPlayAttachVideo:Landroid/widget/ImageView;

.field private mSaveUri:Landroid/net/Uri;

.field private mSaving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    .line 76
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    .line 91
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0f0007

    .line 377
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onOkay()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 399
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 400
    const-string v2, "attach-video"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const-string v2, "AttachActivity"

    const-string v3, "Attach = Video"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    .line 419
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    if-nez v2, :cond_1

    .line 420
    iput-boolean v4, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    .line 422
    :cond_1
    return-void

    .line 404
    :cond_2
    const-string v2, "return-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const-string v2, "AttachActivity"

    const-string v3, "Return = data"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "bitmap-data"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0

    .line 410
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 411
    const-string v2, "AttachActivity"

    const-string v3, "Return = specified uri"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v2, "specify-data"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 105
    :sswitch_0
    const-string v3, "7101"

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 106
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v2, "result":Landroid/content/Intent;
    const-string v3, "delete-image"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0

    .line 112
    .end local v2    # "result":Landroid/content/Intent;
    :sswitch_1
    const-string v3, "7102"

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachActivity;->onOkay()V

    goto :goto_0

    .line 116
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "intentForVideoPlayer":Landroid/content/Intent;
    const-string v3, "com.samsung.android.video"

    const-string v4, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "AttachActivity"

    const-string v4, "VideoPlayer was disabled!!"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const v3, 0x7f09010a

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x7f0f0007 -> :sswitch_2
        0x7f0f0012 -> :sswitch_0
        0x7f0f0013 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachActivity;->initLayout()V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->requestWindowFeature(I)Z

    .line 151
    const/high16 v2, 0x7f0e0000

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->setTheme(I)V

    .line 153
    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "customView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 163
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    .local v1, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "AttachActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 38

    .prologue
    .line 182
    const-string v2, "AttachActivity"

    const-string v5, "onResume"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 187
    .local v22, "intent":Landroid/content/Intent;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 189
    .local v18, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 190
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 192
    .local v12, "bHasNoColumnData":Z
    if-eqz v18, :cond_0

    .line 193
    const-string v2, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    .line 194
    const-string v2, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    check-cast v4, Landroid/graphics/Bitmap;

    .line 195
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    const-string v2, "video-thumbnail"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    :cond_0
    move-object/from16 v31, v4

    .line 198
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v31, "tempBitmap":Landroid/graphics/Bitmap;
    if-nez v31, :cond_18

    .line 199
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 200
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 201
    const-string v2, "AttachActivity"

    const-string v5, "uri is null, so activity is finished"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    move-object/from16 v4, v31

    .line 374
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 205
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a018a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 206
    .local v26, "screenHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a018b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    .line 207
    .local v30, "screenWideWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0189

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 208
    .local v29, "screenSuperWidelWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0188

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 209
    .local v27, "screenNormalWidth":I
    move/from16 v28, v26

    .line 211
    .local v28, "screenSquareWidth":I
    const/4 v14, 0x0

    .line 212
    .local v14, "cursor":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 213
    .local v19, "filePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 217
    :cond_3
    if-eqz v14, :cond_4

    .line 218
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 220
    :try_start_0
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 221
    .local v13, "columnIndex":I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 226
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 236
    .end local v13    # "columnIndex":I
    :cond_4
    :goto_1
    const/16 v33, 0x0

    .line 237
    .local v33, "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    const/16 v34, 0x0

    .line 238
    .local v34, "width":I
    const/16 v20, 0x0

    .line 241
    .local v20, "height":I
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v2, :cond_b

    .line 242
    new-instance v23, Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;-><init>(Landroid/content/ContentResolver;)V

    .line 243
    .local v23, "latestMedia":Lcom/sec/android/app/camera/LatestMediaContent;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/app/camera/LatestMediaContent;->update(ZZ)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v33

    .line 245
    if-eqz v33, :cond_1a

    .line 246
    if-eqz v14, :cond_5

    if-nez v19, :cond_9

    :cond_5
    if-nez v12, :cond_9

    .line 247
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 252
    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v4, :cond_6

    if-eqz v33, :cond_6

    .line 253
    :try_start_2
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;->getVideoThumbnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 255
    :cond_6
    if-eqz v4, :cond_7

    .line 256
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_a

    .line 258
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    .line 259
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 275
    .end local v23    # "latestMedia":Lcom/sec/android/app/camera/LatestMediaContent;
    :cond_7
    :goto_3
    if-nez v4, :cond_c

    .line 276
    const-string v2, "AttachActivity"

    const-string v5, "returning because tempBitmap is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    if-eqz v33, :cond_1

    .line 326
    :try_start_3
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v15

    .line 328
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 222
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v20    # "height":I
    .end local v33    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v34    # "width":I
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v16

    .line 223
    .local v16, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v2, "AttachActivity"

    const-string v5, "IllegalArgumentException occurred with uri data"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    const/4 v12, 0x1

    .line 226
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v16    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 229
    :cond_8
    const-string v2, "AttachActivity"

    const-string v5, "cursor size is 0"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    move-object/from16 v4, v31

    .line 232
    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 249
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "height":I
    .restart local v23    # "latestMedia":Lcom/sec/android/app/camera/LatestMediaContent;
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v33    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v34    # "width":I
    :cond_9
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;->getVideoThumbnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v4

    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 262
    :cond_a
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    .line 263
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v20

    goto :goto_3

    .line 268
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v23    # "latestMedia":Lcom/sec/android/app/camera/LatestMediaContent;
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v4

    .line 269
    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_7

    .line 270
    :try_start_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    .line 271
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    goto :goto_3

    .line 281
    :cond_c
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 282
    .local v9, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v34

    move/from16 v1, v29

    if-gt v0, v1, :cond_d

    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    .line 284
    :cond_d
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v5, v0

    div-float v21, v2, v5

    .line 286
    .local v21, "heightScale":F
    move/from16 v0, v34

    int-to-double v6, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v6, v6, v36

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    .line 287
    .local v11, "aspectRatioType":I
    if-nez v11, :cond_14

    .line 288
    move/from16 v0, v30

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    .line 296
    .local v35, "widthScale":F
    :goto_4
    move/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 299
    .end local v11    # "aspectRatioType":I
    .end local v21    # "heightScale":F
    .end local v35    # "widthScale":F
    :cond_e
    if-eqz v19, :cond_f

    .line 300
    new-instance v17, Landroid/media/ExifInterface;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 301
    .local v17, "exif":Landroid/media/ExifInterface;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Orientation"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v2, "Orientation"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 319
    .end local v17    # "exif":Landroid/media/ExifInterface;
    :cond_f
    :goto_5
    :pswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 325
    if-eqz v33, :cond_10

    .line 326
    :try_start_9
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 335
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "height":I
    .end local v26    # "screenHeight":I
    .end local v27    # "screenNormalWidth":I
    .end local v28    # "screenSquareWidth":I
    .end local v29    # "screenSuperWidelWidth":I
    .end local v30    # "screenWideWidth":I
    .end local v33    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v34    # "width":I
    :cond_10
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v32, v0

    .line 336
    .local v32, "textSize":F
    sget v2, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    cmpl-float v2, v32, v2

    if-lez v2, :cond_11

    .line 337
    sget v32, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    .line 339
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a00a1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v32, v32, v2

    .line 341
    const-string v2, "711"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 346
    const v2, 0x7f0f0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 347
    .local v25, "retry":Landroid/widget/TextView;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/camera/util/Util;->isShowButtonBackgroundEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 349
    const v2, 0x7f020006

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 351
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 356
    const v2, 0x7f0f0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 357
    .local v24, "okay":Landroid/widget/TextView;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/camera/util/Util;->isShowButtonBackgroundEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 359
    const v2, 0x7f020006

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 361
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 363
    const v2, 0x7f0f0006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v2, :cond_19

    .line 367
    const v2, 0x7f0f0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 289
    .end local v24    # "okay":Landroid/widget/TextView;
    .end local v25    # "retry":Landroid/widget/TextView;
    .end local v32    # "textSize":F
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "aspectRatioType":I
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "height":I
    .restart local v21    # "heightScale":F
    .restart local v26    # "screenHeight":I
    .restart local v27    # "screenNormalWidth":I
    .restart local v28    # "screenSquareWidth":I
    .restart local v29    # "screenSuperWidelWidth":I
    .restart local v30    # "screenWideWidth":I
    .restart local v33    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v34    # "width":I
    :cond_14
    const/4 v2, 0x1

    if-ne v11, v2, :cond_15

    .line 290
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    .restart local v35    # "widthScale":F
    goto/16 :goto_4

    .line 291
    .end local v35    # "widthScale":F
    :cond_15
    const/4 v2, 0x4

    if-ne v11, v2, :cond_16

    .line 292
    move/from16 v0, v29

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    .restart local v35    # "widthScale":F
    goto/16 :goto_4

    .line 294
    .end local v35    # "widthScale":F
    :cond_16
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    .restart local v35    # "widthScale":F
    goto/16 :goto_4

    .line 304
    .end local v11    # "aspectRatioType":I
    .end local v21    # "heightScale":F
    .end local v35    # "widthScale":F
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_a
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    .line 320
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    :catch_2
    move-exception v15

    .line 321
    .local v15, "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 325
    if-eqz v33, :cond_10

    .line 326
    :try_start_c
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_6

    .line 327
    :catch_3
    move-exception v15

    .line 328
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 307
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    :try_start_d
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_5

    .line 324
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    :catchall_1
    move-exception v2

    .line 325
    :goto_8
    if-eqz v33, :cond_17

    .line 326
    :try_start_e
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 329
    :cond_17
    :goto_9
    throw v2

    .line 310
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    :try_start_f
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_5

    .line 327
    .end local v17    # "exif":Landroid/media/ExifInterface;
    :catch_4
    move-exception v15

    .line 328
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 327
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v15

    .line 328
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v5, "AttachActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 332
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v19    # "filePath":Ljava/lang/String;
    .end local v20    # "height":I
    .end local v26    # "screenHeight":I
    .end local v27    # "screenNormalWidth":I
    .end local v28    # "screenSquareWidth":I
    .end local v29    # "screenSuperWidelWidth":I
    .end local v30    # "screenWideWidth":I
    .end local v33    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v34    # "width":I
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_18
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v4, v31

    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_6

    .line 371
    .restart local v24    # "okay":Landroid/widget/TextView;
    .restart local v25    # "retry":Landroid/widget/TextView;
    .restart local v32    # "textSize":F
    :cond_19
    const v2, 0x7f0f0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 324
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "okay":Landroid/widget/TextView;
    .end local v25    # "retry":Landroid/widget/TextView;
    .end local v32    # "textSize":F
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "filePath":Ljava/lang/String;
    .restart local v20    # "height":I
    .restart local v26    # "screenHeight":I
    .restart local v27    # "screenNormalWidth":I
    .restart local v28    # "screenSquareWidth":I
    .restart local v29    # "screenSuperWidelWidth":I
    .restart local v30    # "screenWideWidth":I
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v33    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v34    # "width":I
    :catchall_2
    move-exception v2

    move-object/from16 v4, v31

    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto :goto_8

    .line 320
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_6
    move-exception v15

    move-object/from16 v4, v31

    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_7

    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "latestMedia":Lcom/sec/android/app/camera/LatestMediaContent;
    .restart local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_1a
    move-object/from16 v4, v31

    .end local v31    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
