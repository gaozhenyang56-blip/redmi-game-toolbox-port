.class public final Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-direct {v0, p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-array p1, p1, [Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo$CREATOR;->newArray(I)[Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    move-result-object p1

    return-object p1
.end method
