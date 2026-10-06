.class Lcom/miui/permcenter/AppPermissionInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/AppPermissionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/permcenter/AppPermissionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/miui/permcenter/AppPermissionInfo;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v0, p1}, Lcom/miui/permcenter/AppPermissionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/miui/permcenter/AppPermissionInfo;
    .locals 0

    new-array p1, p1, [Lcom/miui/permcenter/AppPermissionInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/AppPermissionInfo$a;->a(Landroid/os/Parcel;)Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/AppPermissionInfo$a;->b(I)[Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object p1

    return-object p1
.end method
