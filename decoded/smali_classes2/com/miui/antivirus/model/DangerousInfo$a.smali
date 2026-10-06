.class Lcom/miui/antivirus/model/DangerousInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/model/DangerousInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/antivirus/model/DangerousInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/miui/antivirus/model/DangerousInfo;
    .locals 2

    new-instance v0, Lcom/miui/antivirus/model/DangerousInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/antivirus/model/DangerousInfo;-><init>(Landroid/os/Parcel;Lcom/miui/antivirus/model/DangerousInfo$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/miui/antivirus/model/DangerousInfo;
    .locals 0

    new-array p1, p1, [Lcom/miui/antivirus/model/DangerousInfo;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/model/DangerousInfo$a;->a(Landroid/os/Parcel;)Lcom/miui/antivirus/model/DangerousInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/model/DangerousInfo$a;->b(I)[Lcom/miui/antivirus/model/DangerousInfo;

    move-result-object p1

    return-object p1
.end method
