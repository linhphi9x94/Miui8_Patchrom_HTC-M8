.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field public final delayVariation:I

.field public final latency:I

.field public final peakBandwidth:I

.field public final serviceType:I

.field public final tokenBucketSize:I

.field public final tokenRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    .line 67
    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "tokenRate"    # I
    .param p3, "tokenBucketSize"    # I
    .param p4, "peakBandwidth"    # I
    .param p5, "latency"    # I
    .param p6, "delayVariation"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    .line 46
    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    .line 47
    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    .line 48
    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    .line 49
    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    .line 50
    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 55
    instance-of v1, p1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 56
    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 57
    .local v0, "qos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    return v2

    .line 59
    .end local v0    # "qos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_0
    return v2
.end method

.method public toArray()[I
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 96
    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 95
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
