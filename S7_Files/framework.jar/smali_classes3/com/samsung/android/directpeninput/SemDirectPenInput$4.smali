.class Lcom/samsung/android/directpeninput/SemDirectPenInput$4;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;->registerEventListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/directpeninput/SemDirectPenInput;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method