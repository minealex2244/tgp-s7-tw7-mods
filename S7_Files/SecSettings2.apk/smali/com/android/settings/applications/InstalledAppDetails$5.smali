.class Lcom/android/settings/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->handleHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 727
    return-void
.end method