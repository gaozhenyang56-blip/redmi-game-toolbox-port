.class public Lcom/miui/permission/PermissionGroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iconRes:I

.field private id:I

.field private mDisplayOrder:I

.field private mRelativePermissionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nameId:I

.field private showInFirstPage:Z

.field private showInSecondPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permission/PermissionGroupInfo$1;

    invoke-direct {v0}, Lcom/miui/permission/PermissionGroupInfo$1;-><init>()V

    sput-object v0, Lcom/miui/permission/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/permission/PermissionGroupInfo;->mDisplayOrder:I

    iput p2, p0, Lcom/miui/permission/PermissionGroupInfo;->id:I

    iput p4, p0, Lcom/miui/permission/PermissionGroupInfo;->nameId:I

    iput-object p7, p0, Lcom/miui/permission/PermissionGroupInfo;->mRelativePermissionIds:Ljava/util/ArrayList;

    iput p3, p0, Lcom/miui/permission/PermissionGroupInfo;->iconRes:I

    iput-boolean p5, p0, Lcom/miui/permission/PermissionGroupInfo;->showInFirstPage:Z

    iput-boolean p6, p0, Lcom/miui/permission/PermissionGroupInfo;->showInSecondPage:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permission/PermissionGroupInfo;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permission/PermissionGroupInfo;->nameId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permission/PermissionGroupInfo;->mDisplayOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/permission/PermissionGroupInfo;->iconRes:I

    invoke-static {p1}, Lcom/miui/permission/a;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permission/PermissionGroupInfo;->showInFirstPage:Z

    invoke-static {p1}, Lcom/miui/permission/a;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permission/PermissionGroupInfo;->showInSecondPage:Z

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permission/PermissionGroupInfo;->mRelativePermissionIds:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/permission/PermissionGroupInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permission/PermissionGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayOrder()I
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionGroupInfo;->mDisplayOrder:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionGroupInfo;->iconRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionGroupInfo;->id:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/permission/PermissionGroupInfo;->nameId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRelativePermissionIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permission/PermissionGroupInfo;->mRelativePermissionIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShowInFirstPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permission/PermissionGroupInfo;->showInFirstPage:Z

    return v0
.end method

.method public isShowInSecondPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permission/PermissionGroupInfo;->showInSecondPage:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permission/PermissionGroupInfo;->id:I

    return-void
.end method

.method public setRelativePermissionIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permission/PermissionGroupInfo;->mRelativePermissionIds:Ljava/util/ArrayList;

    return-void
.end method

.method public setShowInFirstPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permission/PermissionGroupInfo;->showInFirstPage:Z

    return-void
.end method

.method public setShowInSecondPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permission/PermissionGroupInfo;->showInSecondPage:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/permission/PermissionGroupInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/permission/PermissionGroupInfo;->nameId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/permission/PermissionGroupInfo;->mDisplayOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/permission/PermissionGroupInfo;->iconRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/miui/permission/PermissionGroupInfo;->showInFirstPage:Z

    invoke-static {p1, p2}, Lcom/miui/permission/b;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/miui/permission/PermissionGroupInfo;->showInSecondPage:Z

    invoke-static {p1, p2}, Lcom/miui/permission/b;->a(Landroid/os/Parcel;Z)V

    iget-object p2, p0, Lcom/miui/permission/PermissionGroupInfo;->mRelativePermissionIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
