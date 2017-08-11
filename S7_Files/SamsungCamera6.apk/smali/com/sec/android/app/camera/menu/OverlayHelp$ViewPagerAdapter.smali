.class Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OverlayHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mViewPagerItem:[Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 769
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 766
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    .line 767
    new-array v0, v1, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    .line 770
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 771
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "pageKey"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 775
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    check-cast p3, Landroid/view/View;

    .end local p3    # "pageKey":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aput-object v3, v0, p2

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aput-object v3, v0, p2

    .line 779
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->refreshAnimation(I)V

    .line 784
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 785
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v10, 0xa7

    const/4 v9, 0x0

    const/16 v8, 0x7d0

    const/16 v7, 0x3e8

    .line 794
    const-string v3, "OverlayHelp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "instantiateItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000a

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, p2

    .line 796
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p2

    const v4, 0x7f10002c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 797
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    aput-object v4, v3, p2

    .line 798
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p2

    const v4, 0x7f10002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 799
    .local v2, "titleTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p2

    const v4, 0x7f10002d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 801
    .local v0, "descriptionTextView":Landroid/widget/TextView;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 834
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 835
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/AnimationDrawable;->setEnterFadeDuration(I)V

    .line 836
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/AnimationDrawable;->setExitFadeDuration(I)V

    .line 837
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 841
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p2

    return-object v3

    :cond_0
    move v3, p2

    .line 801
    goto :goto_0

    .line 803
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 804
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 805
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 807
    const v3, 0x7f0a01ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 808
    const v3, 0x7f0a01a8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 811
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020145

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 812
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020146

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 813
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020147

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 815
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_WATERMARK:Z

    if-eqz v3, :cond_1

    .line 816
    const v3, 0x7f0a01ab

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 817
    const v3, 0x7f0a01a7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 819
    :cond_1
    const v3, 0x7f0a01aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 820
    const v3, 0x7f0a01a6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 824
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 825
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 826
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 828
    const v3, 0x7f0a01a9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 829
    const v3, 0x7f0a01a5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 846
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshAnimation(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 852
    if-ne v0, p1, :cond_1

    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 850
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1

    .line 859
    :cond_2
    return-void
.end method

.method public refreshPagerItem(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "orientation"    # I

    .prologue
    const v5, 0x7f10002d

    const v4, 0x7f10002c

    .line 862
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 863
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 864
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 865
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 866
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_LAND:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2300(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 867
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 868
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 871
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 872
    .restart local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_LAND:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 873
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 876
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 877
    .restart local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_PORT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2600(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 878
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2700(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 879
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 882
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 883
    .restart local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_PORT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2800(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 884
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
