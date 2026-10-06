.class Landroidx/core/location/a;
.super Landroidx/core/location/GnssStatusCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    check-cast p1, Landroid/location/GnssStatus;

    invoke-static {p1}, Lb0/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/GnssStatus;

    iput-object p1, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/core/location/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/core/location/a;

    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    iget-object p1, p1, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/location/a;->a:Landroid/location/GnssStatus;

    invoke-virtual {v0}, Landroid/location/GnssStatus;->hashCode()I

    move-result v0

    return v0
.end method
