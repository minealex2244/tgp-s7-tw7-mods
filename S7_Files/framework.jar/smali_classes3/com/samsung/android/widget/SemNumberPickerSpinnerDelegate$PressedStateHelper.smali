.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    .prologue
    .line 2671
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2675
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_PRESS:I

    .line 2676
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_TAPPED:I

    .line 2671
    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 2699
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 2700
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2701
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2702
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2698
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2706
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 2707
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2708
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2709
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2705
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2682
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2683
    .local v1, "mRight":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2685
    .local v0, "mBottom":I
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2686
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2687
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2688
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2689
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 2690
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 2692
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2693
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 2694
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 2681
    :cond_1
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2714
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2715
    .local v1, "mRight":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2717
    .local v0, "mBottom":I
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 2713
    :goto_0
    return-void

    .line 2719
    :pswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2721
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 2722
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v6, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2725
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 2726
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v6, v6, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2731
    :pswitch_3
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 2733
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2734
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    .line 2735
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v4, v3

    .line 2734
    invoke-virtual {v2, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2737
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 2738
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v6, v3, v1, v0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2741
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2742
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    .line 2743
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v4, v3

    .line 2742
    invoke-virtual {v2, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2745
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 2746
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v6, v6, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2719
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2731
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method