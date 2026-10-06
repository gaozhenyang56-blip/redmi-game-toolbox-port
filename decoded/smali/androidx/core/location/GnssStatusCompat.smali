.class public abstract Landroidx/core/location/GnssStatusCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusCompat$a;,
        Landroidx/core/location/GnssStatusCompat$ConstellationType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/location/GnssStatus;)Landroidx/core/location/GnssStatusCompat;
    .locals 1
    .param p0    # Landroid/location/GnssStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
