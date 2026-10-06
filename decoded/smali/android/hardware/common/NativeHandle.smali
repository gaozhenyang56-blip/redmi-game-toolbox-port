.class public Landroid/hardware/common/NativeHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/common/NativeHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fds:[Landroid/os/ParcelFileDescriptor;

.field public ints:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/common/NativeHandle$1;

    invoke-direct {v0}, Landroid/hardware/common/NativeHandle$1;-><init>()V

    sput-object v0, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    :cond_1
    return v0

    :cond_2
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Landroid/hardware/common/NativeHandle;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/hardware/common/NativeHandle;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public final getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "readFromParcel: Overflow in the size of parcelable"

    const-string v4, "Tvm.NativeHandle"

    const v5, 0x7fffffff

    if-lt v1, v2, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v5, v1

    if-le v0, v5, :cond_0

    :goto_0
    invoke-static {v4, v3}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    sub-int/2addr v5, v1

    if-le v0, v5, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/common/NativeHandle;->ints:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v5, v1

    if-le v0, v5, :cond_3

    invoke-static {v4, v3}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_4
    :try_start_2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v2, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    sub-int/2addr v5, v1

    if-le v0, v5, :cond_5

    invoke-static {v4, v3}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/hardware/common/NativeHandle;->ints:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
