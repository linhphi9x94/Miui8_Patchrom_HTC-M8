.class Lcom/android/internal/telephony/cat/ActivateDescriptor;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public target:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ACTIVATE_DESCRIPTOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method
