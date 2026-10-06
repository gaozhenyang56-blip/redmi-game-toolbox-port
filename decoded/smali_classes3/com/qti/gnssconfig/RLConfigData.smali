.class public final Lcom/qti/gnssconfig/RLConfigData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/gnssconfig/RLConfigData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enableStatus:Z

.field public enableStatusForE911:Z

.field public major:I

.field public minor:I

.field public validMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qti/gnssconfig/RLConfigData$a;

    invoke-direct {v0}, Lcom/qti/gnssconfig/RLConfigData$a;-><init>()V

    sput-object v0, Lcom/qti/gnssconfig/RLConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/gnssconfig/RLConfigData;->validMask:I

    invoke-static {p1}, Lcom/miui/permission/a;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/gnssconfig/RLConfigData;->enableStatus:Z

    invoke-static {p1}, Lcom/miui/permission/a;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/gnssconfig/RLConfigData;->enableStatusForE911:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/gnssconfig/RLConfigData;->major:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/gnssconfig/RLConfigData;->minor:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/gnssconfig/RLConfigData$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/gnssconfig/RLConfigData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/qti/gnssconfig/RLConfigData;->validMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/qti/gnssconfig/RLConfigData;->enableStatus:Z

    invoke-static {p1, p2}, Lcom/miui/permission/b;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/qti/gnssconfig/RLConfigData;->enableStatusForE911:Z

    invoke-static {p1, p2}, Lcom/miui/permission/b;->a(Landroid/os/Parcel;Z)V

    iget p2, p0, Lcom/qti/gnssconfig/RLConfigData;->major:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/qti/gnssconfig/RLConfigData;->minor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
