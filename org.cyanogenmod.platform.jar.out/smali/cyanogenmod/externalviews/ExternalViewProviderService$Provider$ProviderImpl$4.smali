.class Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0
    .param p1, "this$2"    # Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    .prologue
    .line 143
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-set1(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;Z)Z

    .line 147
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-wrap0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    .line 148
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl$4;->this$2:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->onPause()V

    .line 145
    return-void
.end method
