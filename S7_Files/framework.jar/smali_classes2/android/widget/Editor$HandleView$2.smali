.class Landroid/widget/Editor$HandleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->resetHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$drawableStartHeight:I

.field final synthetic val$drawableStartWidth:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;
    .param p2, "val$drawableStartWidth"    # I
    .param p3, "val$drawableStartHeight"    # I

    .prologue
    .line 5087
    iput-object p1, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iput p2, p0, Landroid/widget/Editor$HandleView$2;->val$drawableStartWidth:I

    iput p3, p0, Landroid/widget/Editor$HandleView$2;->val$drawableStartHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5089
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-get2(Landroid/widget/Editor$HandleView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5090
    return-void

    .line 5092
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2, v5}, Landroid/widget/Editor$HandleView;->-set0(Landroid/widget/Editor$HandleView;Z)Z

    .line 5094
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    .line 5095
    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/Editor$HandleView$2;->val$drawableStartWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/Editor$HandleView$2;->val$drawableStartHeight:I

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5097
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v3}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5099
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 5100
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, v2, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v3, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget v3, v3, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v3}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, v2, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v2, v1, v6

    .line 5102
    .local v1, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->transformFromViewToWindowSpace([I)V

    .line 5103
    aget v2, v1, v5

    iget-object v3, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget v3, v3, Landroid/widget/Editor$HandleView;->mHotspotX:I

    iget-object v4, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v1, v5

    .line 5105
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5106
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 5107
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 5108
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v2

    aget v3, v1, v5

    aget v4, v1, v6

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 5111
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 5112
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 5113
    iget-object v3, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 5114
    iget-object v4, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v4, v4, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5112
    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5116
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5088
    return-void
.end method