.class final Lcyanogenmod/profiles/LockSettings$1;
.super Ljava/lang/Object;
.source "LockSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/profiles/LockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcyanogenmod/profiles/LockSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/LockSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/LockSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/LockSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/LockSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/profiles/LockSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 61
    new-array v0, p1, [Lcyanogenmod/profiles/LockSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/LockSettings$1;->newArray(I)[Lcyanogenmod/profiles/LockSettings;

    move-result-object v0

    return-object v0
.end method
