.class Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 6636
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6639
    const-string/jumbo v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 6640
    .local v11, "pkgs":[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 6641
    const/4 v1, 0x0

    array-length v13, v11

    move v12, v1

    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v2, v11, v12

    .line 6642
    .local v2, "pkg":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 6643
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6644
    const-string/jumbo v10, "query restart"

    .line 6643
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6644
    const/4 v9, 0x0

    .line 6643
    invoke-static/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6645
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$6;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 6646
    return-void

    :cond_0
    monitor-exit v14

    .line 6641
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    .line 6642
    :catchall_0
    move-exception v1

    monitor-exit v14

    throw v1

    .line 6638
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method
