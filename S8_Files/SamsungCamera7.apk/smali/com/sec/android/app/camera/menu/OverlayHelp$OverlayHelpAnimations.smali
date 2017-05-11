.class Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;
.super Ljava/lang/Object;
.source "OverlayHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayHelpAnimations"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    return-void
.end method

.method static synthetic access$2400(FFFFJ)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # J

    .prologue
    .line 714
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getHorizontalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(FFFFJ)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # J

    .prologue
    .line 714
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getVerticalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 714
    invoke-static {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getShutterButtonShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 714
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomingAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 714
    invoke-static {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 714
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 720
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 721
    .local v0, "fadeOutAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 722
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 723
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 744
    return-object v0
.end method

.method private static getHorizontalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    .locals 14
    .param p0, "fromXValue"    # F
    .param p1, "toXValue"    # F
    .param p2, "fromYValue"    # F
    .param p3, "toYValue"    # F
    .param p4, "startOffset"    # J

    .prologue
    .line 748
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 750
    .local v11, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v12, "fadeInAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v12, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 752
    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 753
    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 755
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p0

    move v6, p1

    move/from16 v8, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 756
    .local v2, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 757
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 758
    const-wide/16 v4, 0x29a

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 760
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 761
    .local v13, "fadeOutAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v13, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 762
    const-wide/16 v4, 0x91d

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 763
    const-wide/16 v4, 0x12c

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 765
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 766
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 767
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 769
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 770
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 772
    return-object v11
.end method

.method private static getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 776
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 778
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 779
    .local v1, "fadeInAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 780
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 782
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 783
    .local v2, "fadeOutAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x15e0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 784
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 786
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 787
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 789
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 790
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 792
    return-object v0
.end method

.method private static getOneHandZoomingAnimation()Landroid/view/animation/Animation;
    .locals 14

    .prologue
    .line 796
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 798
    .local v11, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 799
    .local v12, "fadeInAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x2bc

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 800
    const-wide/16 v4, 0x64

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 802
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->ONE_HAND_ZOOM_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2000()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 803
    .local v0, "zoomInAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x514

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 804
    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 805
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 807
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->ONE_HAND_ZOOM_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2000()F

    move-result v5

    neg-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 808
    .local v1, "zoomOutAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x8fc

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 809
    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 810
    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 812
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->ONE_HAND_ZOOM_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2000()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 813
    .local v2, "zoomEndAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x10cc

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 814
    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 815
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 817
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 818
    .local v13, "fadeOutAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x15e0

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 819
    const-wide/16 v4, 0x1

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 821
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 822
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 823
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 824
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 825
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 827
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 828
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 830
    return-object v11
.end method

.method private static getShutterButtonShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 834
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 835
    .local v0, "fadeOutAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 836
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 837
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 858
    return-object v0
.end method

.method private static getVerticalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    .locals 14
    .param p0, "fromXValue"    # F
    .param p1, "toXValue"    # F
    .param p2, "fromYValue"    # F
    .param p3, "toYValue"    # F
    .param p4, "startOffset"    # J

    .prologue
    .line 862
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 864
    .local v11, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 865
    .local v12, "fadeInAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v12, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 866
    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 867
    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 869
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p0

    move v6, p1

    move/from16 v8, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 870
    .local v2, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 871
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 872
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 874
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 875
    .local v13, "fadeOutAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v13, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 876
    const-wide/16 v4, 0x3e8

    add-long v4, v4, p4

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 877
    const-wide/16 v4, 0x1f4

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 879
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 880
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 881
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 883
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 884
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 886
    return-object v11
.end method
