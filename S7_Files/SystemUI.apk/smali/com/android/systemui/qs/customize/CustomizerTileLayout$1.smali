.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field final synthetic val$idx:I

.field final synthetic val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/CustomizerTileLayout;
    .param p2, "val$idx"    # I
    .param p3, "val$info"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-wrap0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    .line 192
    .local v0, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v0, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-wrap0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    .line 183
    .local v0, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v0, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 184
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 174
    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "moveTile onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 173
    return-void
.end method