.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 879
    const/16 v0, 0x270f

    if-ne p2, v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const-string/jumbo v1, "EditorAction 9999 arrived"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z

    .line 883
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    .line 885
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 887
    :cond_1
    return v2
.end method
