.class Lcom/android/server/accessibility/ScreenMagnifier$2;
.super Landroid/os/AsyncTask;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "val$scale"    # F

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iput p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->val$scale:F

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 856
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get1(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 858
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->val$scale:F

    .line 857
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 859
    const/4 v0, 0x0

    return-object v0
.end method
