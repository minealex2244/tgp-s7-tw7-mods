.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    iget-object v0, v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    .line 135
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    iget-object v0, v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    iget-object v0, v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 133
    :cond_0
    return-void
.end method