.class public Lcom/miui/powercenter/abnormalscan/AbScanModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/powercenter/abnormalscan/AbScanModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAbnormalPkg:Ljava/lang/String;

.field private mAbnormalReason:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/abnormalscan/AbScanModel$a;

    invoke-direct {v0}, Lcom/miui/powercenter/abnormalscan/AbScanModel$a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->mAbnormalPkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->mAbnormalReason:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbnormalPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->mAbnormalPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getAbnormalReason()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->mAbnormalReason:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->mAbnormalPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powercenter/abnormalscan/AbScanModel;->mAbnormalReason:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
