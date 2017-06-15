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


# static fields
.field private static final ARROW_ANIMATION_PAGE:I = 0x0

.field private static final ZOOM_ANIMATION_PAGE:I = 0x1


# instance fields
.field private mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

.field private mBottomArrow:Landroid/widget/ImageView;

.field private mBottomArrowAnimation:Landroid/view/animation/Animation;

.field private mBottomArrowText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLeftArrow:Landroid/widget/ImageView;

.field private mLeftArrowAnimation:Landroid/view/animation/Animation;

.field private mLeftArrowText:Landroid/widget/TextView;

.field private mOneHandZoomLongGuide:Landroid/widget/ImageView;

.field private mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

.field private mOneHandZoomMinus:Landroid/widget/ImageView;

.field private mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

.field private mOneHandZoomPlus:Landroid/widget/ImageView;

.field private mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

.field private mOneHandZoomShortGuide:Landroid/widget/ImageView;

.field private mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

.field private mRecordingButton:Landroid/widget/ImageView;

.field private mRecordingButtonAnimation:Landroid/view/animation/Animation;

.field private mRightArrow:Landroid/widget/ImageView;

.field private mRightArrowAnimation:Landroid/view/animation/Animation;

.field private mRightArrowText:Landroid/widget/TextView;

.field private mShutterButton:Landroid/widget/ImageView;

.field private mShutterButtonAnimation:Landroid/view/animation/Animation;

.field private mShutterButtonPressed:Landroid/widget/ImageView;

.field private mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

.field private mThumbnailButton:Landroid/widget/ImageView;

.field private mThumbnailButtonAnimation:Landroid/view/animation/Animation;

.field private mTopArrow:Landroid/widget/ImageView;

.field private mTopArrowAnimation:Landroid/view/animation/Animation;

.field private mTopArrowText:Landroid/widget/TextView;

.field private mViewPagerItem:[Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 931
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 894
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 895
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    .line 897
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrow:Landroid/widget/ImageView;

    .line 898
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrow:Landroid/widget/ImageView;

    .line 899
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrow:Landroid/widget/ImageView;

    .line 900
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrow:Landroid/widget/ImageView;

    .line 901
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowText:Landroid/widget/TextView;

    .line 902
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowText:Landroid/widget/TextView;

    .line 903
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowText:Landroid/widget/TextView;

    .line 904
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowText:Landroid/widget/TextView;

    .line 906
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    .line 907
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressed:Landroid/widget/ImageView;

    .line 908
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    .line 909
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuide:Landroid/widget/ImageView;

    .line 910
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlus:Landroid/widget/ImageView;

    .line 911
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinus:Landroid/widget/ImageView;

    .line 912
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    .line 913
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    .line 915
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    .line 916
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    .line 917
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    .line 918
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    .line 920
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonAnimation:Landroid/view/animation/Animation;

    .line 921
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

    .line 922
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

    .line 923
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

    .line 924
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

    .line 925
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

    .line 926
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButtonAnimation:Landroid/view/animation/Animation;

    .line 927
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButtonAnimation:Landroid/view/animation/Animation;

    .line 932
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 933
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 934
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 942
    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startArrowAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startOneHandZoomAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    return-object p1
.end method

.method private startArrowAnimation()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1113
    :cond_0
    return-void
.end method

.method private startOneHandZoomAnimation()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressed:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuide:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "pageKey"    # Ljava/lang/Object;

    .prologue
    .line 946
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

    .line 947
    check-cast p3, Landroid/view/View;

    .end local p3    # "pageKey":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 949
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1098
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1099
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const v12, 0x7f09029e

    const v11, 0x7f0901ab

    const v10, 0x7f0901a5

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 958
    const-string v1, "OverlayHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/lit8 p2, v1, -0x1

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000b

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, p2

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v1, v1, p2

    const v2, 0x7f0f0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 965
    .local v8, "titleTextView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v1, v1, p2

    const v2, 0x7f0f0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 967
    .local v7, "descriptionTextView":Landroid/widget/TextView;
    packed-switch p2, :pswitch_data_0

    .line 1027
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    return-object v0

    .line 969
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000a

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v1, v1, p2

    const v4, 0x7f0f0036

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 971
    .local v6, "animationLayout":Landroid/widget/RelativeLayout;
    const v1, 0x7f0f0030

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrow:Landroid/widget/ImageView;

    .line 972
    const v1, 0x7f0f0031

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrow:Landroid/widget/ImageView;

    .line 973
    const v1, 0x7f0f0032

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrow:Landroid/widget/ImageView;

    .line 974
    const v1, 0x7f0f0033

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrow:Landroid/widget/ImageView;

    .line 976
    const v1, 0x7f0f0035

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowText:Landroid/widget/TextView;

    .line 977
    const v1, 0x7f0f0034

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowText:Landroid/widget/TextView;

    .line 978
    const v1, 0x7f0f002c

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowText:Landroid/widget/TextView;

    .line 979
    const v1, 0x7f0f002d

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowText:Landroid/widget/TextView;

    .line 981
    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HORIZONTAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2300()F

    move-result v1

    const-wide/16 v4, 0x0

    move v2, v0

    move v3, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getHorizontalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2400(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    .line 982
    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HORIZONTAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2300()F

    move-result v1

    neg-float v1, v1

    const-wide/16 v4, 0x29a

    move v2, v0

    move v3, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getHorizontalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2400(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    .line 983
    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->VERTICAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2500()F

    move-result v3

    const-wide/16 v4, 0x9e5

    move v1, v0

    move v2, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getVerticalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2600(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    .line 984
    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->VERTICAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2500()F

    move-result v1

    neg-float v3, v1

    const-wide/16 v4, 0x9e5

    move v1, v0

    move v2, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getVerticalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2600(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    .line 986
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startArrowAnimation()V

    .line 988
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 989
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 995
    .end local v6    # "animationLayout":Landroid/widget/RelativeLayout;
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000d

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    const v3, 0x7f0f0036

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 997
    .restart local v6    # "animationLayout":Landroid/widget/RelativeLayout;
    const v0, 0x7f0f0044

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    .line 998
    const v0, 0x7f0f0045

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressed:Landroid/widget/ImageView;

    .line 999
    const v0, 0x7f0f003e

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    .line 1000
    const v0, 0x7f0f003f

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuide:Landroid/widget/ImageView;

    .line 1001
    const v0, 0x7f0f0040

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlus:Landroid/widget/ImageView;

    .line 1002
    const v0, 0x7f0f0041

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinus:Landroid/widget/ImageView;

    .line 1003
    const v0, 0x7f0f0042

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    .line 1004
    const v0, 0x7f0f0043

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getShutterButtonShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2700(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonAnimation:Landroid/view/animation/Animation;

    .line 1007
    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomingAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2800()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2900(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

    .line 1009
    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$3000()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

    .line 1010
    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$3000()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

    .line 1011
    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$3000()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2900(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButtonAnimation:Landroid/view/animation/Animation;

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2900(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButtonAnimation:Landroid/view/animation/Animation;

    .line 1015
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startOneHandZoomAnimation()V

    .line 1017
    const v0, 0x7f09029f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1018
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09029f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1034
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshAnimation(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeMessages(I)V

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1047
    :cond_1
    :goto_0
    return-void

    .line 1039
    :cond_2
    if-lez p1, :cond_0

    .line 1043
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeMessages(I)V

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v2, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public refreshPagerItem(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "orientation"    # I

    .prologue
    const v10, 0x7f0f0038

    const v9, 0x7f0f0036

    const v8, 0x7f0f0037

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1050
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    .line 1051
    if-ne p2, v6, :cond_1

    .line 1052
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1053
    .local v0, "animationLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v4, v2

    .line 1054
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    .line 1055
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1056
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1059
    .local v3, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1060
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_LAND:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$3100(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1061
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v4, v2

    .line 1062
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    .line 1063
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1064
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1067
    .local v1, "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v4, v2

    .line 1068
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v4, v2

    .line 1069
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1070
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    .end local v0    # "animationLayout":Landroid/widget/RelativeLayout;
    .end local v1    # "descriptionTextView":Landroid/widget/TextView;
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1073
    .restart local v0    # "animationLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v4, v2

    .line 1074
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v4, v2

    .line 1075
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1076
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1079
    .restart local v3    # "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1080
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_PORT:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$3200(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1081
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v4, v2

    .line 1082
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    .line 1083
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1084
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1087
    .restart local v1    # "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v4, v2

    .line 1088
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    .line 1089
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1090
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
