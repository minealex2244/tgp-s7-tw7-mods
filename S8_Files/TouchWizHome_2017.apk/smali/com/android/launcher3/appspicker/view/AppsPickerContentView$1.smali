.class Lcom/android/launcher3/appspicker/view/AppsPickerContentView$1;
.super Ljava/lang/Object;
.source "AppsPickerContentView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->initSearchListView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$1;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    .line 120
    const/4 v0, 0x0

    return v0
.end method