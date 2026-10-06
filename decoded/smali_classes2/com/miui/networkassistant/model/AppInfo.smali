.class public Lcom/miui/networkassistant/model/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isSystemApp:Z

.field public packageName:Ljava/lang/CharSequence;

.field public tagId:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/AppInfo$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/model/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/model/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/networkassistant/model/AppInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/networkassistant/model/AppInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    iput v0, p0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    iget v0, p1, Lcom/miui/networkassistant/model/AppInfo;->tagId:I

    iput v0, p0, Lcom/miui/networkassistant/model/AppInfo;->tagId:I

    iget-object v0, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iget-boolean p1, p1, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    iput-boolean p1, p0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    iput p2, p0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/model/AppInfo;->tagId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/miui/networkassistant/model/AppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget v0, p0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    iget v2, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/miui/networkassistant/model/AppInfo;->tagId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
