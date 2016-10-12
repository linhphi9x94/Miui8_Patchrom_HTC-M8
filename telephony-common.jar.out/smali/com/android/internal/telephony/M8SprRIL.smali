.class public Lcom/android/internal/telephony/M8SprRIL;
.super Lcom/android/internal/telephony/RIL;
.source "M8SprRIL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 47
    .local v3, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 56
    .local v5, "numApplications":I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 57
    const/16 v5, 0x8

    .line 59
    :cond_0
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 61
    const/4 v4, 0x0

    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 62
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 63
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 71
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v4

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    if-eqz v0, :cond_2

    if-ne v5, v8, :cond_2

    .line 75
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 76
    add-int/lit8 v6, v5, 0x2

    new-array v6, v6, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 77
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 78
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    aput-object v0, v6, v7

    .line 79
    iput v8, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 80
    iput v9, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 81
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 82
    .local v1, "appStatus2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 83
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 84
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 85
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 86
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 87
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 88
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 89
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 90
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    aput-object v1, v6, v7

    .line 91
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 92
    .local v2, "appStatus3":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 93
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 94
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 95
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 96
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 97
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 98
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 99
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 100
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    aput-object v2, v6, v7

    .line 102
    .end local v1    # "appStatus2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2    # "appStatus3":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_2
    return-object v3
.end method
